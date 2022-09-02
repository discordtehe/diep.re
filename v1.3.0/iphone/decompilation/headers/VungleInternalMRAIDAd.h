// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEINTERNALMRAIDAD_H
#define VUNGLEINTERNALMRAIDAD_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class VungleMRAIDAd;
@class VungleMRAIDAsset;
@protocol VungleValidatableAd;
@protocol NSCoding;

@interface VungleInternalMRAIDAd : VungleMRAIDAd <VungleValidatableAd, NSCoding>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (copy, nonatomic) NSURL *templateURL; // ivar: _templateURL
@property (copy, nonatomic) NSDictionary *templateReplacements; // ivar: _templateReplacements
@property (copy, nonatomic) NSDictionary *cacheableTemplateReplacements; // ivar: _cacheableTemplateReplacements
@property (retain, nonatomic) NSMutableSet *privateAssets; // ivar: _privateAssets
@property (retain, nonatomic) VungleMRAIDAsset *templateAsset; // ivar: _templateAsset
@property (nonatomic) NSInteger templateType; // ivar: _templateType
@property (copy, nonatomic) NSString *templateID; // ivar: _templateID
@property (readonly, nonatomic) NSDictionary *TPAT; // ivar: _TPAT
@property (readonly, copy, nonatomic) NSSet *assets;


-(id)buildAssets;
-(id)buildCacheableReplacementsDictionary;
-(id)buildNonCacheableReplacementsDictionary;
-(id)TPATForKey:(id)arg0 ;
-(void)updateWithRequestAdBody:(id)arg0 ;
-(id)updateNonCacheableReplacements:(id)arg0 withIncentivizedTexts:(id)arg1 ;
-(id)updateNonCacheableReplacements:(id)arg0 withStartMutedStatus:(BOOL)arg1 ;
-(BOOL)isValid;
-(BOOL)isDownloaded;
-(id)initWithDictionary:(id)arg0 ;
-(void)appendAsset:(id)arg0 ;
-(void)appendAssets:(id)arg0 ;
-(void)addTemplateAsset:(id)arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;
-(BOOL)isEqual:(id)arg0 ;
-(BOOL)isEqualToVungleMRAIDAd:(id)arg0 ;
-(id)buildDictionaryFromTPAT:(id)arg0 ;


@end


#endif