// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR__AFURLSESSIONTASKSWIZZLING_H
#define TR__AFURLSESSIONTASKSWIZZLING_H


#import <Foundation/Foundation.h>


@interface TR__AFURLSessionTaskSwizzling : NSObject



-(NSInteger)state;
-(void)af_resume;
-(void)af_suspend;
+(void)load;
+(void)swizzleResumeAndSuspendMethodForClass:(Class)arg0 ;


@end


#endif