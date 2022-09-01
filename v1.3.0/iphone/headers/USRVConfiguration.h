// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVCONFIGURATION_H
#define USRVCONFIGURATION_H


#import <Foundation/Foundation.h>


@interface USRVConfiguration : NSObject

@property (retain, nonatomic) NSString *webViewUrl; // ivar: _webViewUrl
@property (retain, nonatomic) NSString *webViewHash; // ivar: _webViewHash
@property (retain, nonatomic) NSString *webViewData; // ivar: _webViewData
@property (retain, nonatomic) NSString *configUrl; // ivar: _configUrl
@property (retain, nonatomic) NSString *webViewVersion; // ivar: _webViewVersion
@property (retain, nonatomic) NSString *error; // ivar: _error


-(id)initWithConfigUrl:(id)arg0 ;
-(id)init;
-(id)buildQueryString;
-(void)makeRequest;
-(id)getWebAppApiClassList;
-(id)getModuleConfigurationList;
-(id)getModuleConfiguration:(id)arg0 ;
-(void)createWebAppApiClassList;
-(void)createModuleConfigurationList;


@end


#endif