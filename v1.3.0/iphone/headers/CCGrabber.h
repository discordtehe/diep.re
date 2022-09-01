// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCGRABBER_H
#define CCGRABBER_H


#import <Foundation/Foundation.h>


@interface CCGrabber : NSObject {
    unsigned int _FBO;
    int _oldFBO;
    float oldClearColor_;
}




-(id)init;
-(void)grab:(id)arg0 ;
-(void)beforeRender:(id)arg0 ;
-(void)afterRender:(id)arg0 ;
-(void)dealloc;


@end


#endif