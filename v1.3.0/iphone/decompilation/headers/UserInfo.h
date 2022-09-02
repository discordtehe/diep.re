// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USERINFO_H
#define USERINFO_H


#import <Foundation/Foundation.h>


@interface UserInfo : NSObject {
    int _level;
    int _xp_in_level;
    BOOL _paying_user;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > _stored_selected_skin;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > _selected_skin;
}


@property (nonatomic) int startingLevel; // ivar: _startingLevel
@property (nonatomic) int endingLevel; // ivar: _endingLevel
@property (nonatomic) int deathsThisSession; // ivar: _deathsThisSession
@property (nonatomic) int deathsTotal; // ivar: _deathsTotal


-(id)init;
-(void)dealloc;
-(int)level;
-(int)xp_in_level;
-(void)setIsPayingUser;
-(BOOL)isPayingUser;
-(void)checkUnknownSkinEquip;
-(void)selectSkin:(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > )arg0 ;
-(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > )selected_skin;
+(id)userInfo;


@end


#endif