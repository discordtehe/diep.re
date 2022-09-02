// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol ANSUploaderDelegate


-(id)uploader:(id)arg0 filePathForUniqueName:(id)arg1 ;
-(void)uploader:(id)arg0 didFinishUploadWithUniqueName:(id)arg1 error:(id)arg2 ;
-(void)uploader:(id)arg0 completedRequest:(id)arg1 withResponse:(id)arg2 uniqueName:(id)arg3 error:(id)arg4 completionHandler:(id)arg5 ;

@optional
-(void)uploader:(id)arg0 session:(id)arg1 didReceiveChallenge:(id)arg2 completionHandler:(id)arg3 ;
@end

