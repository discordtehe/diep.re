// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOSYSTEMNOTIFICATIONCENTER_H
#define MCPROMOSYSTEMNOTIFICATIONCENTER_H

@protocol MCPromoSystemClientDelegate;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MCLocalizationManager;

@interface MCPromoSystemNotificationCenter : NSObject {
    id<MCPromoSystemClientDelegate> *_gameDelegate;
    NSMutableDictionary *_promoSystems;
    MCLocalizationManager *_localizationManager;
}




-(id)initWithGameDelegate:(id)arg0 withLocalizationManager:(id)arg1 ;
-(void)dealloc;
-(BOOL)registerSystemForNotifications:(id)arg0 ;
-(void)schedulePromotionLocalNotifications;
-(void)processLocalNotificationUserInfo:(id)arg0 ;
+(id)mcPromoSystemNotificationCenterWithGameDelegate:(id)arg0 withLocalizationManager:(id)arg1 ;


@end


#endif