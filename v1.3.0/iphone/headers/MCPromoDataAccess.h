// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMODATAACCESS_H
#define MCPROMODATAACCESS_H


#import <Foundation/Foundation.h>


@interface MCPromoDataAccess : NSObject {
    id *mConfig;
}




-(id)initWithConfiguration:(id)arg0 ;
-(id)execute;
-(id)getPropertyValue;
-(id)resolveDataAccess;
-(void)dealloc;
+(id)getDataAccessFromConfiguration:(id)arg0 ;
+(id)executeDataAccessFromConfig:(id)arg0 ;
+(id)clearAllDataAccessFromConfig:(id)arg0 ;


@end


#endif