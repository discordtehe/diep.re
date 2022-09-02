// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MRSUPPORTSPROPERTY_H
#define MRSUPPORTSPROPERTY_H



@class MRProperty;

@interface MRSupportsProperty : MRProperty

@property (nonatomic) BOOL supportsSms; // ivar: _supportsSms
@property (nonatomic) BOOL supportsTel; // ivar: _supportsTel
@property (nonatomic) BOOL supportsCalendar; // ivar: _supportsCalendar
@property (nonatomic) BOOL supportsStorePicture; // ivar: _supportsStorePicture
@property (nonatomic) BOOL supportsInlineVideo; // ivar: _supportsInlineVideo


-(id)description;
-(id)javascriptBooleanStringFromBoolValue:(BOOL)arg0 ;
+(id)supportedFeatures;
+(id)defaultProperty;
+(id)propertyWithSupportedFeaturesDictionary:(id)arg0 ;


@end


#endif