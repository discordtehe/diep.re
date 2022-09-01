// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLENOTIFYREADYGENERATOR_H
#define VUNGLENOTIFYREADYGENERATOR_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class VungleJSONConverter;
@protocol VungleJavascriptGenerator;

@interface VungleNotifyReadyGenerator : NSObject <VungleJavascriptGenerator>



@property (retain, nonatomic) NSDictionary *cacheableReplacementTokens; // ivar: _cacheableReplacementTokens
@property (retain, nonatomic) NSDictionary *nonCacheableReplacementTokens; // ivar: _nonCacheableReplacementTokens
@property (retain, nonatomic) VungleJSONConverter *converter; // ivar: _converter
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithCacheableReplacementTokens:(id)arg0 nonCacheableReplacements:(id)arg1 converter:(id)arg2 ;
-(id)generateJavascript;
-(id)stringFromDictionary:(id)arg0 ;


@end


#endif