// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFMPDTIMELINEENTRY_H
#define FNFMPDTIMELINEENTRY_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FNFMpdTimelineEntry : NSObject {
    NSURL *_mediaUrl;
}


@property (readonly, nonatomic) unsigned int time; // ivar: _time
@property (readonly, nonatomic) unsigned int duration; // ivar: _duration
@property (readonly, nonatomic) unsigned int repetition; // ivar: _repetition
@property (readonly, copy, nonatomic) NSString *mediaTemplate; // ivar: _mediaTemplate


-(id)initWithTime:(unsigned int)arg0 duration:(unsigned int)arg1 mediaUrl:(id)arg2 ;
-(id)initWithTime:(unsigned int)arg0 duration:(unsigned int)arg1 mediaTemplate:(id)arg2 ;
-(id)initWithTime:(unsigned int)arg0 duration:(unsigned int)arg1 repetition:(unsigned int)arg2 ;
-(id)mediaUrl;


@end


#endif