// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCLOCALIZATIONRESOURCEENTRY_H
#define MCLOCALIZATIONRESOURCEENTRY_H


#import <Foundation/Foundation.h>

@class MCLocalizationEntry;

@interface MCLocalizationResourceEntry : MCLocalizationEntry

@property (readonly, nonatomic) NSString *localizedResourceId; // ivar: _localizedResourceId
@property (readonly, nonatomic) NSString *countryCode; // ivar: _countryCode
@property (readonly, nonatomic) NSString *regionCode; // ivar: _regionCode
@property (readonly, nonatomic) BOOL isSpritesheetResource; // ivar: _isSpritesheetResource
@property (readonly, nonatomic) BOOL skipResourceCheck; // ivar: _skipResourceCheck


-(id)initWithResourceEntryId:(id)arg0 withLocalizedResourceId:(id)arg1 withCountryCode:(id)arg2 andRegionCode:(id)arg3 isSpritesheetResource:(BOOL)arg4 shouldSkipResourceCheck:(BOOL)arg5 ;
-(void)dealloc;
+(id)mcLocalizationResourceEntryWithId:(id)arg0 withLocalizedResourceId:(id)arg1 withCountryCode:(id)arg2 andRegionCode:(id)arg3 isSpritesheetResource:(BOOL)arg4 shouldSkipResourceCheck:(BOOL)arg5 ;


@end


#endif