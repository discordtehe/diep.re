// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCGOLIATHOBSERVERIOS_H
#define MCGOLIATHOBSERVERIOS_H


#import <Foundation/Foundation.h>


@interface MCGoliathObserverIOS : NSObject {
    ? _goliath;
}




-(void)sessionStarted:(id)arg0 ;
-(void)sessionStopped:(id)arg0 ;
-(id)initWithGoliath:(struct weak_ptr<mc::MCGoliath> )arg0 ;


@end


#endif