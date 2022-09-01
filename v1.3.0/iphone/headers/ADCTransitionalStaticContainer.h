// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCTRANSITIONALSTATICCONTAINER_H
#define ADCTRANSITIONALSTATICCONTAINER_H



@class ADCTransitionalContainer;

@interface ADCTransitionalStaticContainer : ADCTransitionalContainer {
    NSInteger preferredOrientationOverride;
}




-(id)initWithSupportedOrientations:(NSUInteger)arg0 preferredOrientation:(NSInteger)arg1 ;
-(BOOL)shouldAutorotate;
-(NSInteger)preferredInterfaceOrientationForPresentation;


@end


#endif