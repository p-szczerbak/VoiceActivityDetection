/*
// Created by paulina on 06.02.17.
Klasa do ustalania poczatkowego progu detekcji
*/

#ifndef VOICEACTIVITYDETECTION_THRESHOLDFINDER_H
#define VOICEACTIVITYDETECTION_THRESHOLDFINDER_H


#include <aquila/source/WaveFile.h>

class ThresholdFinder {
private:
    double threshold;
    //unsigned int samplesPerFrame;
    //unsigned int commonSamples;
public:
    //friend class SingleFrameEnergyFinder;
public:
    ThresholdFinder();
    virtual ~ThresholdFinder();
    double getThreshold();
    void InitialThreshold100ms(Aquila::WaveFile wav);

    //void setThreshold(float threshold);


};


#endif //VOICEACTIVITYDETECTION_THRESHOLDFINDER_H
