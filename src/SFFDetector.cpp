//
// Created by paulina on 07.07.17.
//

#include <iostream>
#include <algorithm>
#include <cstring>
#include <fstream>
#include <aquila/source/FramesCollection.h>

#include "../inc/SFFDetector.h"

using namespace std;

SFFDetector::SFFDetector(string filename) {
    _signal = new Signal(filename);
    _envelope = new Envelope(_signal->samplesCount);
}

SFFDetector::Signal::Signal(string filename) {
    signalOriginal = new Aquila::WaveFile(filename);
    samplesCount = signalOriginal->getSamplesCount();
    //samplesOriginal = new Aquila::SampleType[samplesCount];
    //samplesOriginal = (Aquila::SampleType *) malloc(samplesCount * sizeof(Aquila::SampleType));
    //samplesNoised = new Aquila::SampleType[samplesCount];
    //samplesDifferential = new Aquila::SampleType[samplesCount];
    samplingFrequency = signalOriginal->getSampleFrequency();

    samplesOriginal.reserve(samplesCount);
    samplesOriginal.assign(signalOriginal->begin(),signalOriginal->end());
//    copy(signalOriginal->toArray(),
//              signalOriginal->toArray()+samplesCount,
//              samplesOriginal);


    samplesNoised.reserve(samplesCount);
    samplesDifferential.reserve(samplesCount);

    fill(samplesNoised.begin(), samplesNoised.end(), 0);
    fill(samplesDifferential.begin(), samplesDifferential.end(), 0);
    //czy moze lepiej mamset?
    //:memset(samplesNoised, 0, samplesCount*sizeof(Aquila::SampleType));
//    copy(signalOriginal->toArray(),
//              signalOriginal->toArray()+samplesCount,
//              samplesNoised);
    //memset(samplesDifferential, 0, samplesCount*sizeof(Aquila::SampleType));
//    copy(signalOriginal->toArray(),
//              signalOriginal->toArray()+samplesCount,
//              samplesDifferential);
}

SFFDetector::Signal::~Signal() {
    delete signalOriginal;
//    delete samplesOriginal;
 //   delete samplesNoised;
 //   delete samplesDifferential;
}

SFFDetector::Envelope::Envelope(int samplesCount) {
    this->samplesCount=samplesCount;
  //  this->singleFrequencyEnvelope = (double *) malloc(samplesCount * sizeof(double));
    this->singlePoleModule=0.97;
//    this->firstThreshold=0.15;
    this->differBef = true;
    this->smoothing = true;
    

   // factorXi = (double *) malloc(samplesCount * sizeof(double));
   // factorXr = (double *) malloc(samplesCount * sizeof(double));
   // density = (double *) malloc(sPosNb * sizeof(double));
   // factorMi = (double *) malloc(samplesCount * sizeof(double));
   // factorSigma = (double *) malloc(samplesCount * sizeof(double));
    //delt = (double *) malloc(samplesCount * sizeof(double));


  //  memset(singleFrequencyEnvelope, 0, samplesCount );
  //  memset(factorXi,0, samplesCount );
  //  memset(factorXr,0, samplesCount );
   // memset(density, 0, sPosNb*sizeof(double));
  //  memset(factorMi, 0, samplesCount*sizeof(double));
  //  memset(factorSigma, 0, samplesCount*sizeof(double));
   // memset(delt, 0, samplesCount*sizeof(double));

    singleFrequencyEnvelope.reserve(samplesCount);
    factorXr.reserve(samplesCount);
    factorXi.reserve(samplesCount);
    factorMi.reserve(samplesCount);
    factorSigma.reserve(samplesCount);
    delt.reserve(samplesCount);

    fill(singleFrequencyEnvelope.begin(), singleFrequencyEnvelope.end(),0);
    fill(factorXr.begin(), factorXr.end(),0);
    fill(factorXi.begin(), factorXi.end(),0);
    fill(factorMi.begin(), factorMi.end(),0);
    fill(factorSigma.begin(), factorSigma.end(),0);
    fill(delt.begin(), delt.end(), 0);

}

SFFDetector::Envelope::~Envelope() {

}

void SFFDetector::printSamples() {

    addGaussNoise(0.0001);

    densityForPositiveValues(_signal->samplesNoised, 5);

//    if(_envelope->differBef){
//        for (int i = 1; i <_signal->samplesCount ; i++) {
//            _signal->samplesDifferential[i] = _signal->samplesNoised[i] - _signal->samplesNoised[i-1];
//
//        }
//    }
//    else{
//        for (int i = 0; i < _signal->samplesCount ; i++) {
//            _signal->samplesDifferential[i] = _signal->samplesNoised[i];
//        }
//    }
//
//    singleFrequencyEnvelope(4000);
//
//    system("touch result2ToPlot");
//    //otwieram plik do zapisu
//    ofstream file("result2ToPlot");
//    int xValue(0);
//    int arraySize = sizeof(_envelope->singleFrequencyEnvelope)/sizeof(_envelope->singleFrequencyEnvelope[0]);
//    if(file){
//        for (size_t i = 0; i < _signal->samplesCount ; i++) {
//            file << _envelope->singleFrequencyEnvelope[i] << endl;
//        }
//        file.close();
//    } else{
//        cout<<"BLAD: nie mozna otworzyc pliku"<<endl;
//    }



    //findMaxValue(_envelope->singleFrequencyEnvelope);
}

/// funkcja dodajaca szum do sygnalu
/// \param signal
/// \param noiseMult - mnoznik szumu
void SFFDetector::addGaussNoise(double noiseMult) {
    //zmienne lokalne do wygenerowania szumu
    clock_t  timer;
    //RAND_MAX - maksymalna wartosc zwrocona przez rand()
    long centr = RAND_MAX/2;
    long random1(0), random2(0);

    timer = clock();
    srand(timer);
    for (long i = 0; i <_signal->samplesCount ; i++) {
        random1=0;
        for (int j = 0; j < 16 ; j++) {
            random2 = rand();
            random1 += random2 - centr;
        }
        //dodatkowe dzielenie w przypadku kompilatora 64-bitowego
        random1 /= 65536;
        random1 /= 8;
        _signal->samplesNoised[i] = _signal->samplesOriginal[i] + noiseMult * random1;
    }
}

///funkcja do obliczania gestosci dla pozytywnych wartosci
/// oblicza wspolczynnik normowania
/// usunieto czesc argumentow - zostaly przerzucine do klasy jako zmienne prywatne
/// \param sPosNb
/// \param max
vector<double> SFFDetector::densityForPositiveValues(vector<double> VAETab, double max
                                           /*double* VAEDensity, short sPosNb*/ ) {
    double normFactor;
    long temp;
    vector<double> result(VAETab.size(),0);


    /************** wspolczynnik normowania *************/
    normFactor = (sPosNb-1)/max;

    for (int i = 0; i < VAETab.size(); i++) {
        temp = (long) floor(normFactor*VAETab[i]+0.5);
        //cout<<"temp "<<temp<<endl;
        if (temp <= sPosNb && temp > 0){
             result[temp] = result[temp]+1;
        }
    }
    for (int j = 0; j < sPosNb ; j++) {
        result[j] /= _signal->samplesCount;
    }

    return result;
}

/// funckcja do obliczania czestotliwosci obwiedni
/// \param frequency - czestotliwosc
void SFFDetector::singleFrequencyEnvelope(double frequency) {

    double filterFactorCos(0), filterFactorSin(0);
    double normalizedFrequency(0), max(0), threshold1(0),
            threshold2(0), sum(0), distance(0), module(0);

    //wzor na omegak z artykulu
    normalizedFrequency = 2*PI*frequency/_signal->samplingFrequency;
    module = _envelope->singlePoleModule;

    //wspolczynniki filtru kwadraturowego
    filterFactorCos = module * cos(normalizedFrequency);
    filterFactorSin = module * sin(normalizedFrequency);

    /*rekursywna filtracja kwadraturowa*/
    for (int i = 1; i < _signal->samplesCount ; i++) {
        _envelope->factorXr[i] = _signal->samplesDifferential[i] + filterFactorCos * _envelope->factorXr[i-1] - filterFactorSin * _envelope->factorXi[i-1];
        _envelope->factorXi[i] = filterFactorCos * _envelope->factorXi[i-1] + filterFactorSin * _envelope->factorXr[i-1];
    }

    /* obwednia - wzor z artykulu*/
    if (_envelope->singleFrequencyEnvelope.size() == 0){
        for (int j = 0; j < _signal->samplesCount ; j++) {
            _envelope->singleFrequencyEnvelope.push_back(_envelope->factorXr[j]*_envelope->factorXr[j] - _envelope->factorXi[j] * _envelope->factorXi[j]);
            //cout<<_envelope->singleFrequencyEnvelope[j]<<endl;
        }
    } else{
        for (int j = 0; j < _envelope->singleFrequencyEnvelope.size() ; j++) {
            _envelope->singleFrequencyEnvelope[j] = _envelope->factorXr[j]*_envelope->factorXr[j] - _envelope->factorXi[j] * _envelope->factorXi[j];
            //cout<<_envelope->singleFrequencyEnvelope[j]<<endl;
        }
    }

    /* dystrybuanta */
    max = *max_element(_envelope->singleFrequencyEnvelope.begin(), _envelope->singleFrequencyEnvelope.end());
    //cout<<"max: "<<max<<endl;
    _envelope->density = densityForPositiveValues(_envelope->singleFrequencyEnvelope, max);
    //cout<<density[100]<<endl;
    /* prog - cisza */
    threshold1 = _envelope->initialThreshold;
    int maxK(0);
    for (int k = 0; k < sPosNb ; k++) {
        sum += _envelope->density[k];
        if (sum > threshold1)
            break;
        else maxK = k;
    }
    distance = max / 800;
    threshold2 = maxK * distance + distance / 2;

    /* srednia dla "ciszy" */
    sum = 0;
    int counter(0);
    for (int k = 0; k < _envelope->singleFrequencyEnvelope.size() ; k++) {
        if(_envelope->singleFrequencyEnvelope[k] < threshold2){
            sum += _envelope->singleFrequencyEnvelope[k];
            counter++;
        }
    }
    if (counter > 0)
        sum /= counter;
    else
        sum = 0.1 * distance;

    /* skalownaie obwiedni */
    sum *= 32768;
    for (int i = 0; i < _envelope->singleFrequencyEnvelope.size() ; i++)
        _envelope->singleFrequencyEnvelope[i] = _envelope->singleFrequencyEnvelope[i]/sum;

}

double SFFDetector::findMaxValue(double *array) {
    //double max = *std::max_element(array, array + sizeof(array));
    return *std::max_element(array, array + sizeof(array));
}

double SFFDetector::findMaxAbsValue(double *array) {
    double* absArray;
    for (int i = 0; i < sizeof(array) ; i++) {
        absArray[i]=fabs(array[i]);
    }
    return findMaxValue(absArray);
}

//SFF_Combo_c6()
void SFFDetector::detect() {
    double ro(0);

    /* dodanie szumu */
    addGaussNoise(0.0001);

    /* rozniczkowanie sygnalu - na zaszumionym sygnale */
    if(_envelope->differBef){
        for (int i = 1; i <_signal->samplesCount ; i++) {
            _signal->samplesDifferential[i] = _signal->samplesNoised[i] - _signal->samplesNoised[i-1];

        }
    }
    else{
        for (int i = 0; i < _signal->samplesCount ; i++) {
            _signal->samplesDifferential[i] = _signal->samplesNoised[i];
        }
    }
    cout<<"5"<<endl;
    singleFrequencyFilteringEnvelope();

    cout<<"4"<<endl;

    if (_envelope->smoothing)
        _envelope->delt = smooth(_envelope->delt/*, _envelope.smoothingRank*/);

    cout<<"3"<<endl;

    /* prog detekcji na delta i detekcja */
    _envelope->beta = countBeta();
    _envelope->beta *= _envelope->betaMult;
    _envelope->theta = countTheta();

    cout<<"2"<<endl;
    cout<<"beta"<<_envelope->beta<<endl;
    cout<<"theta"<<_envelope->theta<<endl;
//    ro = calculateRo(_signal);
//    singleFrequencyFilteringDetect();
//
//    cout<<"1"<<endl;
//
//    system("touch result2ToPlot");
//    //otwieram plik do zapisu
//    std::ofstream file("result2ToPlot");
//    int xValue(0);
//    int arraySize = sizeof(_envelope->singleFrequencyEnvelope)/sizeof(_envelope->singleFrequencyEnvelope[0]);
//    if(file){
//        for (size_t i = 0; i < _signal->samplesCount ; i++) {
//            file << _signal->samplesDifferential[i] << endl;
//        }
//        file.close();
//    } else{
//        cout<<"BLAD: nie mozna otworzyc pliku"<<endl;
//    }

}

//!!!!!!!!!!!!!!!!!!  tutaj zmiana squareOfEnvelope na long sprawila, ze teraz beta=0, a theta=3.95
//wczessniej  bylo theta=nan i beta miala jakas wartosc
void SFFDetector::singleFrequencyFilteringEnvelope() {
    double frequency,  mean, diff;

    /* problem z liczeniem wariancji */
    int counter(0);
    for (int i = 0; i < 186 ; i+=4) {
        frequency = 300 + i*20;
        singleFrequencyEnvelope(frequency);
        counter++;
        for (int j = 0; j < _signal->samplesCount ; j++) {
            //kwadrat obwiedni
            double squareOfEnvelope = _envelope->singleFrequencyEnvelope[j];
            squareOfEnvelope *= squareOfEnvelope;

            //estymata sredniaj z kwadratu
            _envelope->factorMi[j] += squareOfEnvelope;
            mean = _envelope->factorMi[j]/counter;
            diff = squareOfEnvelope - mean;
            diff *= diff;
            _envelope->factorSigma[j] += diff;
        }
    }
    cout<<"dupa5"<<endl;

//    for (int i = 1; i < 186 ; i+=4) {
//        frequency = 300 + i*20;
//        singleFrequencyEnvelope(frequency);
//        counter++;
//        for (int j = 0; j < _signal->samplesCount ; j++) {
//            //kwadrat obwiedni
//            squareOfEnvelope = _envelope->singleFrequencyEnvelope[j];
//            squareOfEnvelope *= squareOfEnvelope;
//
//            //estymata sredniaj z kwadratu
//            _envelope->factorMi[j] += squareOfEnvelope;
//            mean = _envelope->factorMi[j]/counter;
//            diff = squareOfEnvelope - mean;
//            diff *= diff;
//            _envelope->factorSigma[j] += diff;
//        }
//    }

    for (int i = 2; i < 186 ; i+=4) {
        frequency = 300 + i*20;
        singleFrequencyEnvelope(frequency);
        counter++;
        for (int j = 0; j < _signal->samplesCount ; j++) {
            //kwadrat obwiedni
            double squareOfEnvelope = _envelope->singleFrequencyEnvelope[j];
            squareOfEnvelope *= squareOfEnvelope;

            //estymata sredniaj z kwadratu
            _envelope->factorMi[j] += squareOfEnvelope;
            mean = _envelope->factorMi[j]/counter;
            diff = squareOfEnvelope - mean;
            diff *= diff;
            _envelope->factorSigma[j] += diff;
        }
    }
    std::cout<<"dupa4"<<std::endl;

//    for (int i = 3; i < 186 ; i+=4) {
//        frequency = 300 + i*20;
//        singleFrequencyEnvelope(frequency);
//        counter++;
//        for (int j = 0; j < _signal->samplesCount ; j++) {
//            //kwadrat obwiedni
//            squareOfEnvelope = _envelope->singleFrequencyEnvelope[j];
//            squareOfEnvelope *= squareOfEnvelope;
//
//            //estymata sredniaj z kwadratu
//            _envelope->factorMi[j] += squareOfEnvelope;
//            mean = _envelope->factorMi[j]/counter;
//            diff = squareOfEnvelope - mean;
//            diff *= diff;
//            _envelope->factorSigma[j] += diff;
//        }
//    }
    std::cout<<"dupa3"<<std::endl;
    /* normowanie */
    for (int k = 0; k < _signal->samplesCount ; k++) {
        _envelope->factorMi[k] /= counter;
        _envelope->factorSigma[k] /= counter;
        _envelope->factorSigma[k] = sqrt(_envelope->factorSigma[k]);
    }

    /* miara */
    for (int k = 0; k < _signal->samplesCount ; k++) {
        double squareOfEnvelope = fabs(_envelope->factorSigma[k] * _envelope->factorSigma[k]
                                - _envelope->factorMi[k] * _envelope->factorMi[k]);
        _envelope->delt.push_back(pow(squareOfEnvelope, 1.0/64));
        //_envelope->delt.push_back(1);
        //_envelope->delt[k] = pow(squareOfEnvelope, (1.0/64));
        //cout<<_envelope->delt[k]<<endl;
    }
}


double SFFDetector::countBeta() {
    double max(0), distance(0), beta(0), maxI(0), density(0);
    vector<double> densityTab;

    /* rozklad */
    max = *max_element(_envelope->delt.begin(), _envelope->delt.end());
    cout<<"max delt:"<<max<<endl;
    densityTab = densityForPositiveValues(_envelope->delt, max);

//    for (int j = 0; j <_envelope->delt.size() ; j++) {
//        cout<<_envelope->delt[j]<<endl;
//    }

    cout<<"beta1!"<<endl;
    /* wygladzenie */
    densityTab = smooth(densityTab);
    cout<<"density smoothed!"<<endl;

    /*maximum  lewe */
    for (int i = 0; i < densityTab.size()/2 ; i++) {
        //cout<<densityTab[i]<<endl;
        if (densityTab[i] > density){
            density = densityTab[i];
            maxI = i;
            //cout<<i<<endl;
        }
    }
    cout<<"maxI: "<<maxI<<endl;
    _envelope->densityForLeftPart = maxI;
    cout<<"left: "<<_envelope->densityForLeftPart<<endl;

    /* maximum prawe */
    density = 0;
    maxI = 0;
    for (int i = (int)(densityTab.size() /2)+1; i < densityTab.size() ; i++) {
        cout<<densityTab[i]<<endl;
        if (densityTab[i] > density){
            density = densityTab[i];
            maxI = i;
        }
    }
    _envelope->densityForRightPart = maxI;
    cout<<"right: "<<_envelope->densityForRightPart<<endl;

    /* minimum w przedziale */
    density = 10;
    maxI = 0;
    for (int i = (int)_envelope->densityForLeftPart; i < _envelope->densityForRightPart ; i++) {
        //cout<<"density: "<<_envelope->density[i]<<endl;
        //cout<<"i"<<i<<endl;
        if (densityTab[i] < density){
            density = densityTab[i];
            maxI = i;
        }
    }

    /* wyliczenie beta dla obwiedni */
    distance = max/800;
    beta = maxI*distance;
    cout<<"maxI"<<maxI<<endl;
    return beta;
}

vector<double> SFFDetector::smooth(vector<double> signal) {
    vector<double> smoothedSignal(signal.size());
    cout<<"dupa?"<<endl;
    cout<<"signal size: "<<signal.size()<<endl;
    for (int i = 1; i < signal.size()-1; i++) {
        //smoothedSignal[i] = signal[i-1]*0.25 + signal[i]*0.5 + signal[i+1]*0.25;
        smoothedSignal.push_back(signal[i-1]*0.25 + signal[i]*0.5 + signal[i+1]*0.25);
    }
    vector<double>::iterator iter = smoothedSignal.begin();
    double firstVal = smoothedSignal[0];
    double lastVal = smoothedSignal[smoothedSignal.size()-1];
    smoothedSignal.insert(iter, firstVal);
    smoothedSignal.push_back(lastVal);
//    signal[0] = signal[1];
//    signal[signal.size()-1]=signal[signal.size()-2];
    return smoothedSignal;
}

double SFFDetector::countTheta() {
    double max(0), threshold1(0), threshold2(0), distance(0),
            mean(0), theta(0);

    /* rozklad */
    //max = findMaxValue(_envelope->delt);
    max = *std::max_element(std::begin(_envelope->delt), std::end(_envelope->delt));
    _envelope->density = densityForPositiveValues(_envelope->delt, max);

    /* prog - cisza */
    threshold1 = _envelope->detectionSilenceThreshold;
    double sum(0);
    double counter(0);
    for (int i = 0; i < 801 ; i++) {
        sum += _envelope->density[i];
        if (sum > threshold1) {
            counter = i;
            break;
        }
    }
    distance = max/800;
    threshold2 = counter * distance + distance/2;

    /* srednia dla "ciszy" */
    sum =0;
    counter = 0;
    for (int j = 0; j < _signal->samplesCount ; j++) {
        if (_envelope->delt[j]<threshold2){
            sum += _envelope->delt[j];
            counter++;
        }
    }
    if (counter > 0)
        mean = sum/counter;
    else
        mean = 0.1 * distance;

    /* odchylenie standardowe dla "ciszy" */
    sum = 0;
    counter = 0;
    for (int k = 0; k < _signal->samplesCount ; k++) {
        sum += pow(_envelope->delt[k] - mean, 2);
        counter++;
    }

    double factor(0);
    if (counter > 0)
        factor = sum/counter;
    else
        factor = 0.1 * distance;
    factor = sqrt(factor);
    theta = mean + 3*factor;

    return theta;
}

double SFFDetector::calculateRo(SFFDetector::Signal *signal){
    double max(0), min(0), ro(0), energy(0);
    //Aquila::SampleType frameLength(0), frameStep(0);
    double lPosNb(0);

    //liczba probek w ramce
    unsigned int frameLength = _signal->samplingFrequency * 0.3;
    unsigned int frameStep = _signal->samplingFrequency * 0.01;
    unsigned int samplesPerOverlap = frameLength-frameStep;
    //czemu to dziala??
    Aquila::SignalSource source = *signal->signalOriginal;
    //ramki
    Aquila::FramesCollection *frames = new Aquila::FramesCollection(source, frameLength, samplesPerOverlap);
    //lPosNb = (_signal->samplesCount - frameLength)/frameStep;

    min = 1.0E38;
    for (size_t i = 0; i < frames->count() ; i++) {
        energy = countEnergy(frames, i);
        //std::cout<<energy<<std::endl;
        if (energy < min)
            min = energy;
        else if (energy > max)
            max = energy;
//        else
//            std::cout<<"error occured in calculateRo()"<<std::endl;
    }
    ro = 10*log10(max/min);
    return ro;
}

//oblicza energie dla pojedynczej ramki
double SFFDetector::countEnergy(Aquila::FramesCollection* frames, Aquila::SampleType frameIndex) {
    double energy(0);
    //iteruje po probkach w ramce
    for (size_t i = 0; i < frames->getSamplesPerFrame() ; i++) {
        energy += frames->frame(frameIndex).sample(i)*frames->frame(frameIndex).sample(i);
    }
    return energy;
}

void SFFDetector::singleFrequencyFilteringDetect() {
    double beta(0), theta(0);
    bool isSilence = true;

    beta = _envelope->beta;
    theta = _envelope->theta;

    unsigned int frameLength = _signal->samplingFrequency * 0.3;
    unsigned int frameStep = _signal->samplingFrequency * 0.01;
    unsigned int samplesPerOverlap = frameLength-frameStep;
    Aquila::SignalSource source = *_signal->signalOriginal;
    //ramki
    Aquila::FramesCollection *frames = new Aquila::FramesCollection(source, frameLength, samplesPerOverlap);

    int counter(0);
    double percentage(0);


    //sprawdzam, czy w tej ramce jest mowa,
    // jak tak, to poczatek ramki zapisuje jako poczatek mowy
    for (int j = 0; j < frameLength ; j++) {
        for (size_t i = 0; i <frames->getSamplesPerFrame() ; i++) {
            if (_envelope->delt[i] > theta && _envelope->delt[i] > beta)
                counter++;
        }
        percentage = 1.0 * counter / frames->getSamplesPerFrame();

        if (percentage>_envelope->percent){

            if (isSilence){
                //wrzucam nr probki z calego sygnalu na liste
                this->_speachBeginnings.push_back(j*samplesPerOverlap);
                isSilence = false;
            }
        } else{
            if (!isSilence){
                this->_speachEndings.push_back(j*samplesPerOverlap+frames->getSamplesPerFrame());
                isSilence = false;
            }
        }
    }

    //for (int k = 0; k <this->_speachEndings.size() ; k++) {
    std::cout<< this->_speachBeginnings.size()<<std::endl;
    //}


}



