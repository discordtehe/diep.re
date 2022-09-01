// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCINPUTDISPATCHER_H
#define MCINPUTDISPATCHER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MCInputDispatcher : NSObject {
    unsigned int mNumTouches;
    NSMutableArray *mListeners;
    NSMutableDictionary *mTouches;
    CGFloat mCurrTimeStamp;
    BOOL mEnabled;
    CGFloat mDelay;
    float mMinDistance;
    float mMaxDistance;
    NSMutableArray *initialTouchPoints;
}




-(id)init;
-(id)initWithListener:(id)arg0 delay:(CGFloat)arg1 minDistance:(float)arg2 maxDistance:(float)arg3 ;
-(void)dealloc;
-(void)addTouches:(id)arg0 ;
-(void)removeTouch:(id)arg0 ;
-(void)setDelay:(CGFloat)arg0 minDistance:(float)arg1 maxDistance:(float)arg2 ;
-(void)addListener:(id)arg0 ;
-(void)removeListener:(id)arg0 ;
-(void)enable;
-(void)disable;
-(unsigned int)getNumTouches;
-(void)applyTouchesToListeners:(id)arg0 ;
-(void)update:(CGFloat)arg0 ;
-(void)cancelAllTouches;
-(void)touchesBegan:(id)arg0 ;
-(void)touchesMoved:(id)arg0 ;
-(void)touchesEnded:(id)arg0 ;
-(void)touchesCancelled:(id)arg0 ;


@end


#endif