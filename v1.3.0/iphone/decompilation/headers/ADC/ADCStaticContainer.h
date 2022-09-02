// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCSTATICCONTAINER_H
#define ADCSTATICCONTAINER_H



@class ADCContainer;

@interface ADCStaticContainer : ADCContainer {
    NSInteger _preferredOrientation;
}




-(id)initWithDelegate:(id)arg0 supportedOrientations:(NSUInteger)arg1 preferredOrientation:(NSInteger)arg2 ;
-(BOOL)shouldAutorotate;
-(NSInteger)preferredInterfaceOrientationForPresentation;


@end


#endif