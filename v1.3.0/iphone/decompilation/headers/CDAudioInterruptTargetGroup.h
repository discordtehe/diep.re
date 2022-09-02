// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CDAUDIOINTERRUPTTARGETGROUP_H
#define CDAUDIOINTERRUPTTARGETGROUP_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol CDAudioInterruptProtocol;

@interface CDAudioInterruptTargetGroup : NSObject <CDAudioInterruptProtocol>

 {
    BOOL mute_;
    BOOL enabled_;
    NSMutableArray *children_;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)addAudioInterruptTarget:(id)arg0 ;
-(void)removeAudioInterruptTarget:(id)arg0 ;
-(BOOL)mute;
-(void)setMute:(BOOL)arg0 ;
-(BOOL)enabled;
-(void)setEnabled:(BOOL)arg0 ;


@end


#endif