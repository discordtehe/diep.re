// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCANIMVSZFIREANDFORGETDELEGATE_H
#define MCANIMVSZFIREANDFORGETDELEGATE_H


#import <Foundation/Foundation.h>

@protocol MCAnimVSZProtocol;

@interface MCAnimVSZFireAndForgetDelegate : NSObject <MCAnimVSZProtocol>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)vszAnimationEnded:(id)arg0 ;
-(void)setToNode:(id)arg0 ;
+(id)delegate;


@end


#endif