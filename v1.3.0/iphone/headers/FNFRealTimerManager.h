// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFREALTIMERMANAGER_H
#define FNFREALTIMERMANAGER_H


#import <Foundation/Foundation.h>

@protocol FNFTimerManager;

@interface FNFRealTimerManager : NSObject <FNFTimerManager>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)createTimerWithInterval:(NSUInteger)arg0 fireOnce:(BOOL)arg1 queue:(id)arg2 block:(id)arg3 ;


@end


#endif