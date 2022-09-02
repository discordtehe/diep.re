// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCBLOCKCOMMAND_H
#define MCBLOCKCOMMAND_H


#import <Foundation/Foundation.h>

@protocol MCCommand;

@interface MCBlockCommand : NSObject <MCCommand>

 {
    id *mBlock;
    BOOL mIsFinished;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)dealloc;
-(void)setBlock:(id)arg0 ;
-(void)execute;
-(BOOL)isFinished;
+(id)commandWithBlock:(id)arg0 ;


@end


#endif