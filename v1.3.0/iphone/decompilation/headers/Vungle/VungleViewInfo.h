// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEVIEWINFO_H
#define VUNGLEVIEWINFO_H


#import <Foundation/Foundation.h>

@protocol NSCopying;

@interface VungleViewInfo : NSObject <NSCopying>



@property (copy, nonatomic) NSNumber *completedView; // ivar: _completedView
@property (copy, nonatomic) NSNumber *playTime; // ivar: _playTime
@property (copy, nonatomic) NSNumber *didDownload; // ivar: _didDownload


-(id)initWithCompletedView:(id)arg0 playTime:(id)arg1 didDownload:(id)arg2 ;
-(id)description;
-(id)copyWithZone:(struct _NSZone *)arg0 ;


@end


#endif