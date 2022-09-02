// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISDEMANDONLYMODEHELPER_H
#define ISDEMANDONLYMODEHELPER_H


#import <Foundation/Foundation.h>


@interface ISDemandOnlyModeHelper : NSObject

@property (nonatomic) NSInteger mode; // ivar: _mode


-(id)init;
-(BOOL)setDemandOnlyMode;
-(BOOL)setMediationMode;
-(BOOL)validateDemandOnlyMode:(id)arg0 ;
-(BOOL)validateMediationMode:(id)arg0 ;
-(BOOL)isDemandOnlyMode;


@end


#endif