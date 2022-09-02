// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEADLEGACY_H
#define VUNGLEADLEGACY_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class VungleAd;
@protocol NSCoding;
@protocol VungleValidatableAd;

@interface VungleAdLegacy : VungleAd <NSCoding, VungleValidatableAd>



@property (retain, nonatomic) NSMutableArray *parts; // ivar: _parts
@property (copy, nonatomic) NSString *md5; // ivar: _md5
@property (nonatomic) int countdownDelay; // ivar: _countdownDelay
@property (nonatomic) float closeDelay; // ivar: _closeDelay
@property (nonatomic) float closeDelayIncentivized; // ivar: _closeDelayIncentivized
@property (copy, nonatomic) NSString *ctaURL; // ivar: _ctaURL
@property (copy, nonatomic) NSString *ctaURLResolved; // ivar: _ctaURLResolved
@property (nonatomic) BOOL ctaEnabled; // ivar: _ctaEnabled
@property (nonatomic) BOOL ctaDisplayOntouch; // ivar: _ctaDisplayOntouch
@property (nonatomic) float ctaShowDelay; // ivar: _ctaShowDelay
@property (nonatomic) float ctaButtonClickArea; // ivar: _ctaButtonClickArea
@property (nonatomic) BOOL isPersistent; // ivar: _isPersistent
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithDictionary:(id)arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;
-(BOOL)updateWithDictionary:(id)arg0 ;
-(void)createAdPartsWithDictionary:(id)arg0 ;
-(void)addPart:(id)arg0 ;
-(BOOL)isDownloaded;
-(BOOL)isValid;
-(BOOL)isEqual:(id)arg0 ;
-(BOOL)isEqualToVungleAdLegacyClass:(id)arg0 ;


@end


#endif