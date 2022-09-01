// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEPREPARETHIRDPARTYMRAIDADOPERATION_H
#define VUNGLEPREPARETHIRDPARTYMRAIDADOPERATION_H


#import <Foundation/Foundation.h>

@class VungleOperation;
@class VungleThirdPartyMRAIDAd;

@interface VunglePrepareThirdPartyMRAIDAdOperation : VungleOperation

@property (weak, nonatomic) VungleThirdPartyMRAIDAd *thirdPartyAd; // ivar: _thirdPartyAd
@property (copy, nonatomic) id *completionHandler; // ivar: _completionHandler
@property (retain, nonatomic) NSFileManager *fileManager; // ivar: _fileManager


-(id)initWithVungleMRAIDAd:(id)arg0 completionHandler:(id)arg1 ;
-(void)execute;
-(void)finishOperationWithInvalidAd:(id)arg0 error:(id)arg1 ;
-(id)expectedLocalIndexURLWithCampaignID:(id)arg0 ;
-(id)decodeHTMLWithAd:(id)arg0 ;
-(id)createCampaignDirectoryWithAd:(id)arg0 ;
-(BOOL)writeIndexHTMLFileWithBaseURL:(id)arg0 markup:(id)arg1 ad:(id)arg2 ;
+(id)invalidBase64Error;
+(id)campaignDirectoryCreationErrorWithUserInfo:(id)arg0 ;
+(id)localIndexCreationErrorWithUserInfo:(id)arg0 ;


@end


#endif