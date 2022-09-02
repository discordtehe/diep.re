// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FNFAssetResourceLoaderDelegate


-(void)resourceLoader:(id)arg0 loadRequest:(id)arg1 ;
-(void)resourceLoader:(id)arg0 cancelLoadingRequest:(id)arg1 ;
-(BOOL)resourceLoader:(id)arg0 hasPrefetchedDataForUrl:(id)arg1 ;
-(BOOL)resourceLoader:(id)arg0 hasCachedDataForUrl:(id)arg1 offset:(NSInteger)arg2 length:(int)arg3 ;
-(int)activeRequestCountUsingResourceLoader:(id)arg0 ;

@end

