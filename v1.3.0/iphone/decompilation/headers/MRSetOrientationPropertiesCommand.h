// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MRSETORIENTATIONPROPERTIESCOMMAND_H
#define MRSETORIENTATIONPROPERTIESCOMMAND_H



@class MRCommand;

@interface MRSetOrientationPropertiesCommand : MRCommand



-(BOOL)requiresUserInteractionForPlacementType:(NSUInteger)arg0 ;
-(BOOL)executeWithParams:(id)arg0 ;
-(BOOL)executableWhileBlockingRequests;
+(id)commandType;


@end


#endif