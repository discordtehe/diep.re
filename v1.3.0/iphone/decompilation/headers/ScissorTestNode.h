// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SCISSORTESTNODE_H
#define SCISSORTESTNODE_H



@class CCNodeRGBA;

@interface ScissorTestNode : CCNodeRGBA

@property (readonly, nonatomic) CGRect clipRect; // ivar: _clipRect
@property (nonatomic) BOOL adjustToRotation; // ivar: _adjustToRotation


-(id)init;
-(void)visit;


@end


#endif