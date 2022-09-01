// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLENEWREQUESTCONTROLLER_H
#define VUNGLENEWREQUESTCONTROLLER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface VungleNewRequestController : NSObject

@property (weak, nonatomic) NSUserDefaults *userDefaults; // ivar: _userDefaults


-(id)initWithUserDefaults:(id)arg0 ;
-(void)sendNewRequest:(id)arg0 ;
-(void)sendNewRequestWithURL:(id)arg0 publisherInformation:(id)arg1 ;
-(void)handleNewRequestComplete:(id)arg0 ;


@end


#endif