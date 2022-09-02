// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TRPLAYER_H
#define TRPLAYER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSCoding;

@interface TRPlayer : NSObject <NSCoding>



@property (copy, nonatomic) NSDictionary *messageDictionary; // ivar: _messageDictionary
@property (retain, nonatomic) NSMutableDictionary *offersDictionary; // ivar: _offersDictionary
@property (nonatomic) NSInteger devicePlayerId; // ivar: _devicePlayerId


-(id)init;
-(id)initWithTRPlayerDictionary:(id)arg0 ;
-(id)defaultMessageDictionary;
-(id)messageForKey:(id)arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;
+(id)idfa;


@end


#endif