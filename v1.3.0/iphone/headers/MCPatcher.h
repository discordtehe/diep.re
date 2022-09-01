// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPATCHER_H
#define MCPATCHER_H

@protocol MCPatcherDelegate;

#import <Foundation/Foundation.h>


@interface MCPatcher : NSObject {
    shared_ptr<mc::Patcher> _patcher;
    shared_ptr<MCPatcherDelegate> _patcherDelegate;
}


@property (readonly, nonatomic) NSObject<MCPatcherDelegate> *delegate; // ivar: _delegate


-(id)initWithDelegate:(id)arg0 withBundlePath:(id)arg1 andTempPath:(id)arg2 ;
-(void)dealloc;
-(void)detach;
-(void)applyPatch:(id)arg0 toOldFile:(id)arg1 forNewFile:(id)arg2 ;
-(void)applyPatch:(id)arg0 toOldFile:(id)arg1 forNewFile:(id)arg2 withExpectedResultMD5:(id)arg3 ;
-(id)patchesRemaining;
+(id)patcherWithDelegate:(id)arg0 withBundlePath:(id)arg1 andTempPath:(id)arg2 ;


@end


#endif