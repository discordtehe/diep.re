// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCBFILEUTILS_H
#define CCBFILEUTILS_H


#import <Foundation/Foundation.h>

@class CCFileUtils;

@interface CCBFileUtils : CCFileUtils

@property (copy, nonatomic) NSString *ccbDirectoryPath; // ivar: ccbDirectoryPath


-(id)init;
-(void)dealloc;
-(id)pathForResource:(id)arg0 ofType:(id)arg1 inDirectory:(id)arg2 ;
-(id)getLocalizedTextForTag:(id)arg0 ;


@end


#endif