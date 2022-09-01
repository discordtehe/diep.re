// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJCONFIG_H
#define ADJCONFIG_H

@protocol AdjustDelegate;

#import <Foundation/Foundation.h>

@protocol NSCopying;
@protocol ADJLogger;

@interface ADJConfig : NSObject <NSCopying>



@property (weak, nonatomic) NSObject<ADJLogger> *logger; // ivar: _logger
@property (copy, nonatomic) NSString *sdkPrefix; // ivar: _sdkPrefix
@property (copy, nonatomic) NSString *defaultTracker; // ivar: _defaultTracker
@property (readonly, copy, nonatomic) NSString *appToken; // ivar: _appToken
@property (readonly, copy, nonatomic) NSString *environment; // ivar: _environment
@property (nonatomic) int logLevel; // ivar: _logLevel
@property (nonatomic) BOOL eventBufferingEnabled; // ivar: _eventBufferingEnabled
@property (weak, nonatomic) NSObject<AdjustDelegate> *delegate; // ivar: _delegate
@property (nonatomic) BOOL sendInBackground; // ivar: _sendInBackground
@property (nonatomic) CGFloat delayStart; // ivar: _delayStart
@property (copy, nonatomic) NSString *userAgent; // ivar: _userAgent


-(id)initWithAppToken:(id)arg0 environment:(id)arg1 ;
-(id)initWithAppToken:(id)arg0 environment:(id)arg1 allowSuppressLogLevel:(BOOL)arg2 ;
-(BOOL)checkEnvironment:(id)arg0 ;
-(BOOL)checkAppToken:(id)arg0 ;
-(BOOL)isValid;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
+(id)configWithAppToken:(id)arg0 environment:(id)arg1 ;
+(id)configWithAppToken:(id)arg0 environment:(id)arg1 allowSuppressLogLevel:(BOOL)arg2 ;


@end


#endif