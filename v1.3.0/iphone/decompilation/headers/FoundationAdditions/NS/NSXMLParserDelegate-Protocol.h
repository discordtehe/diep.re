// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol NSXMLParserDelegate



@optional
-(void)parserDidStartDocument:(id)arg0 ;
-(void)parserDidEndDocument:(id)arg0 ;
-(void)parser:(id)arg0 foundNotationDeclarationWithName:(id)arg1 publicID:(id)arg2 systemID:(id)arg3 ;
-(void)parser:(id)arg0 foundUnparsedEntityDeclarationWithName:(id)arg1 publicID:(id)arg2 systemID:(id)arg3 notationName:(id)arg4 ;
-(void)parser:(id)arg0 foundAttributeDeclarationWithName:(id)arg1 forElement:(id)arg2 type:(id)arg3 defaultValue:(id)arg4 ;
-(void)parser:(id)arg0 foundElementDeclarationWithName:(id)arg1 model:(id)arg2 ;
-(void)parser:(id)arg0 foundInternalEntityDeclarationWithName:(id)arg1 value:(id)arg2 ;
-(void)parser:(id)arg0 foundExternalEntityDeclarationWithName:(id)arg1 publicID:(id)arg2 systemID:(id)arg3 ;
-(void)parser:(id)arg0 didStartElement:(id)arg1 namespaceURI:(id)arg2 qualifiedName:(id)arg3 attributes:(id)arg4 ;
-(void)parser:(id)arg0 didEndElement:(id)arg1 namespaceURI:(id)arg2 qualifiedName:(id)arg3 ;
-(void)parser:(id)arg0 didStartMappingPrefix:(id)arg1 toURI:(id)arg2 ;
-(void)parser:(id)arg0 didEndMappingPrefix:(id)arg1 ;
-(void)parser:(id)arg0 foundCharacters:(id)arg1 ;
-(void)parser:(id)arg0 foundIgnorableWhitespace:(id)arg1 ;
-(void)parser:(id)arg0 foundProcessingInstructionWithTarget:(id)arg1 data:(id)arg2 ;
-(void)parser:(id)arg0 foundComment:(id)arg1 ;
-(void)parser:(id)arg0 foundCDATA:(id)arg1 ;
-(id)parser:(id)arg0 resolveExternalEntityName:(id)arg1 systemID:(id)arg2 ;
-(void)parser:(id)arg0 parseErrorOccurred:(id)arg1 ;
-(void)parser:(id)arg0 validationErrorOccurred:(id)arg1 ;
@end

