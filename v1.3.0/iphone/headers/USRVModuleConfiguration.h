// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVMODULECONFIGURATION_H
#define USRVMODULECONFIGURATION_H


#import <Foundation/Foundation.h>


@interface USRVModuleConfiguration : NSObject



-(id)getWebAppApiClassList;
-(BOOL)resetState:(id)arg0 ;
-(BOOL)initModuleState:(id)arg0 ;
-(BOOL)initErrorState:(id)arg0 state:(id)arg1 message:(id)arg2 ;
-(BOOL)initCompleteState:(id)arg0 ;


@end


#endif