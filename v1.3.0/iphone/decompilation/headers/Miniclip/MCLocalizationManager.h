// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCLOCALIZATIONMANAGER_H
#define MCLOCALIZATIONMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol MCLocalizationProtocol;

@interface MCLocalizationManager : NSObject {
    NSString *_currentCountryCode;
    NSString *_currentRegionCode;
    NSString *_fallbackCountryCode;
    NSString *_fallbackRegionCode;
    NSDictionary *_texts;
    NSDictionary *_resources;
}


@property (retain, nonatomic) NSString *reloadNotification; // ivar: _reloadNotification
@property (retain, nonatomic) NSObject<MCLocalizationProtocol> *gameDelegate; // ivar: _gameDelegate


-(id)initWithDelegate:(id)arg0 ;
-(void)registerForGameEvents;
-(void)unregisterForGameEvents;
-(void)dealloc;
-(id)textForKey:(id)arg0 ;
-(id)stripReturnText:(id)arg0 ;
-(id)resourceForKey:(id)arg0 ;
-(void)setFallbackLanguage;
-(void)updateCurrentLanguage;
-(void)setCurrentCountryCode:(id)arg0 andRegionCode:(id)arg1 ;
-(BOOL)isEqualToFallbackCountry:(id)arg0 andFallbackRegion:(id)arg1 ;
-(BOOL)isEqualToCurrentCountry:(id)arg0 andCurrentRegion:(id)arg1 ;
-(BOOL)isCountryCode:(id)arg0 andRegionCode:(id)arg1 equalToCountryCode:(id)arg2 andRegionCode:(id)arg3 ;
-(void)forceReloadLocalizationData;
-(void)reloadLocalizationData;
-(void)reloadTexts;
-(void)reloadResources;
-(void)cleanLocalizationData;
-(void)removeLocalizedTexts;
-(void)removeLocalizedResources;
-(id)getResourceListToRemoveFromResourceLocalizations:(id)arg0 ;
-(id)description;
-(id)processResourceList:(id)arg0 ;
-(id)mergeLocalizationList:(id)arg0 intoLocalizationList:(id)arg1 ;
-(id)getLocalizedResourcesForCountry:(id)arg0 andRegion:(id)arg1 alreadyRequested:(id)arg2 ;
-(id)getLocalizedTextsForCountry:(id)arg0 andRegion:(id)arg1 alreadyRequested:(id)arg2 ;
+(id)getMCLocalizationManagerWithDelegate:(id)arg0 ;


@end


#endif