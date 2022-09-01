// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USERDATA_H
#define USERDATA_H


#import <Foundation/Foundation.h>

@class Account;
@class UserInfo;
@class UserStats;
@class UserWallet;
@class UserSettings;

@interface UserData : NSObject {
    Account *_user_account;
    UserInfo *_user_info;
    UserStats *_user_stats;
    UserWallet *_user_wallet;
    UserSettings *_user_settings;
}


@property (retain, nonatomic) NSString *nickname; // ivar: mNickname
@property (retain, nonatomic) NSString *sessionToken; // ivar: mSessionToken
@property (nonatomic) float score; // ivar: mScore


-(id)init;
-(void)dealloc;
-(void)generateNewSessionToken;
-(void)setUserDefaultsObject:(id)arg0 forKey:(id)arg1 ;
-(id)userDefaultsObjectForKey:(id)arg0 ;
-(void)loadNickName;
-(id)account;
-(id)info;
-(id)stats;
-(id)wallet;
-(id)settings;
+(id)userData;


@end


#endif