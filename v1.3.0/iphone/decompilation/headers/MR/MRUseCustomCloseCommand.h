// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MRUSECUSTOMCLOSECOMMAND_H
#define MRUSECUSTOMCLOSECOMMAND_H



@class MRCommand;

@interface MRUseCustomCloseCommand : MRCommand



-(BOOL)executableWhileBlockingRequests;
-(BOOL)requiresUserInteractionForPlacementType:(NSUInteger)arg0 ;
-(BOOL)executeWithParams:(id)arg0 ;
+(id)commandType;


@end


#endif