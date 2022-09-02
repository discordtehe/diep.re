// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEPROPERTIESCHANGEGENERATOR_H
#define VUNGLEPROPERTIESCHANGEGENERATOR_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class VungleJSONConverter;
@protocol VungleJavascriptGenerator;

@interface VunglePropertiesChangeGenerator : NSObject <VungleJavascriptGenerator>



@property (retain, nonatomic) NSDictionary *properties; // ivar: _properties
@property (retain, nonatomic) VungleJSONConverter *converter; // ivar: _converter
@property (retain, nonatomic) NSString *privatePayload; // ivar: _privatePayload
@property (readonly, copy, nonatomic) NSString *payload;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithPropertiesDictionary:(id)arg0 converter:(id)arg1 ;
-(id)generateJavascript;
-(id)jsonStringFromDictionary:(id)arg0 ;


@end


#endif