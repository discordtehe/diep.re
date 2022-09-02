// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UMONPLACEMENTCONTENT_H
#define UMONPLACEMENTCONTENT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface UMONPlacementContent : NSObject

@property (retain, nonatomic) NSString *type; // ivar: _type
@property (retain, nonatomic) NSString *placementId; // ivar: _placementId
@property (readonly, nonatomic, getter=isReady) BOOL ready;
@property (nonatomic) NSInteger state; // ivar: _state
@property (retain, nonatomic) NSDictionary *userInfo; // ivar: _userInfo


-(id)initWithPlacementId:(id)arg0 withParams:(id)arg1 ;
-(void)sendCustomEvent:(id)arg0 ;
-(void)sendCustomEvent:(id)arg0 withUserInfo:(id)arg1 ;
-(void)sendCustomEventWithType:(id)arg0 ;
-(id)defaultEventCategory;


@end


#endif