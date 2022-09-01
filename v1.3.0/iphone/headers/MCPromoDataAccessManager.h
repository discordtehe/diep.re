// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMODATAACCESSMANAGER_H
#define MCPROMODATAACCESSMANAGER_H


#import <Foundation/Foundation.h>


@interface MCPromoDataAccessManager : NSObject {
    id *_delegate;
}




-(void)dealloc;
-(void)initWithDelegate:(id)arg0 ;
-(id)groupForTest:(id)arg0 ;
-(id)getPropertyType:(id)arg0 withPropertyInfo:(id)arg1 ;
-(id)getNumberPropertyType:(id)arg0 ;
-(id)getClientLanguage;
-(id)currentPlatformType;
-(BOOL)areTransactionsPresentInTheConfiguration:(id)arg0 ;
-(BOOL)areProductsPresentInTheConfiguration:(id)arg0 ;
+(id)sharedMCPromoDataAccessManager;
+(void)releaseSharedMCPromoDataAccessManager;


@end


#endif