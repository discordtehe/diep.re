// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCSEQUENCECOMMAND_H
#define MCSEQUENCECOMMAND_H


#import <Foundation/Foundation.h>

@class MCCommandQueue;
@protocol MCCommand;

@interface MCSequenceCommand : NSObject <MCCommand>

 {
    MCCommandQueue *mCommandQueue;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)dealloc;
-(void)addCommand:(id)arg0 ;
-(void)addCommands:(id)arg0 ;
-(void)execute;
-(BOOL)isFinished;
+(id)commandWithCommands:(id)arg0 ;


@end


#endif