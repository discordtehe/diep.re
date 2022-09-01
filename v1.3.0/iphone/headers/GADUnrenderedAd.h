// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADUNRENDEREDAD_H
#define GADUNRENDEREDAD_H



@class GADAd;
@class GADOperation;

@interface GADUnrenderedAd : GADAd {
    GADOperation *_renderingOperation;
}




-(id)initWithContext:(id)arg0 renderingOperation:(id)arg1 ;
-(void)renderWithCompletionHandler:(id)arg0 ;


@end


#endif