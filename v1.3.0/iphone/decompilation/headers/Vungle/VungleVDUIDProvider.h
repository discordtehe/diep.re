// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEVDUIDPROVIDER_H
#define VUNGLEVDUIDPROVIDER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface VungleVDUIDProvider : NSObject

@property (weak, nonatomic) NSUserDefaults *defaults; // ivar: _defaults


-(id)init;
-(void)setVDUID:(id)arg0 ;
-(id)VDUID;
+(id)sharedProvider;


@end


#endif