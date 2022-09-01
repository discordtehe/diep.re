// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FNFAVAsset


-(void)loadValuesAsynchronouslyForKeys:(id)arg0 completionHandler:(id)arg1 ;
-(NSInteger)statusOfValueForKey:(id)arg0 error:(*id)arg1 ;
-(struct ? )duration;
-(struct CGSize )naturalSize;
-(id)resourceLoader;
-(id)audioCodec;
-(void)cancelLoading;
-(id)tracksWithMediaType:(id)arg0 ;

@end

