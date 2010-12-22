@STATIC;1.0;p;15;AppController.jt;24570;@STATIC;1.0;I;21;Foundation/CPObject.jI;28;LPKit/LPLocationController.ji;27;CPCheckBox+ObjectValueFix.ji;29;CPURLConnection+XMLResponse.ji;49;Controllers/MMLibrarySectionTableViewController.ji;31;Controllers/MMPrefsController.ji;32;Controllers/MMSeasonController.ji;31;DataSources/MMAgentDataSource.ji;38;DataSources/MMLibraryMediaDataSource.ji;38;DataSources/MMMetadataItemDataSource.ji;41;DataSources/MMLibrarySectionsDataSource.ji;41;DataSources/MMLibraryTimelineDataSource.ji;23;Models/LanguageConfig.ji;23;Models/MMMetadataItem.ji;33;Controllers/MMContentController.ji;49;Controllers/MMMediaItemCollectionViewController.ji;35;Controllers/MMMediaItemController.ji;27;Views/MMActionPopUpButton.ji;24;Views/MMCollectionView.ji;19;Views/MMContainer.ji;22;Views/MMFirstRunView.ji;23;Views/MMMediaItemCell.ji;29;Views/MMMediaItemDetailView.ji;33;Views/MMMediaItemCollectionView.ji;20;Views/MMScrollView.ji;30;Views/MMSectionSettingsSheet.ji;26;Views/MMPreferencesPanel.ji;17;Views/MMToolbar.jt;23571;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("LPKit/LPLocationController.j",NO);
objj_executeFile("CPCheckBox+ObjectValueFix.j",YES);
objj_executeFile("CPURLConnection+XMLResponse.j",YES);
objj_executeFile("Controllers/MMLibrarySectionTableViewController.j",YES);
objj_executeFile("Controllers/MMPrefsController.j",YES);
objj_executeFile("Controllers/MMSeasonController.j",YES);
objj_executeFile("DataSources/MMAgentDataSource.j",YES);
objj_executeFile("DataSources/MMLibraryMediaDataSource.j",YES);
objj_executeFile("DataSources/MMMetadataItemDataSource.j",YES);
objj_executeFile("DataSources/MMLibrarySectionsDataSource.j",YES);
objj_executeFile("DataSources/MMLibraryTimelineDataSource.j",YES);
objj_executeFile("Models/LanguageConfig.j",YES);
objj_executeFile("Models/MMMetadataItem.j",YES);
objj_executeFile("Controllers/MMContentController.j",YES);
objj_executeFile("Controllers/MMMediaItemCollectionViewController.j",YES);
objj_executeFile("Controllers/MMMediaItemController.j",YES);
objj_executeFile("Views/MMActionPopUpButton.j",YES);
objj_executeFile("Views/MMCollectionView.j",YES);
objj_executeFile("Views/MMContainer.j",YES);
objj_executeFile("Views/MMFirstRunView.j",YES);
objj_executeFile("Views/MMMediaItemCell.j",YES);
objj_executeFile("Views/MMMediaItemDetailView.j",YES);
objj_executeFile("Views/MMMediaItemCollectionView.j",YES);
objj_executeFile("Views/MMScrollView.j",YES);
objj_executeFile("Views/MMSectionSettingsSheet.j",YES);
objj_executeFile("Views/MMPreferencesPanel.j",YES);
objj_executeFile("Views/MMToolbar.j",YES);
var _1=0;
var _2=1;
var _3=24;
var _4=objj_allocateClassPair(CPObject,"AppController"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("window"),new objj_ivar("_preventUpdates"),new objj_ivar("_wantedMediaItemId"),new objj_ivar("_showingHelp"),new objj_ivar("_librarySection"),new objj_ivar("_mediaItem"),new objj_ivar("_viewWithToolbar"),new objj_ivar("_firstRunView"),new objj_ivar("_mediaItemsController"),new objj_ivar("_librarySectionController"),new objj_ivar("rightView"),new objj_ivar("_mediaCollectionContainer"),new objj_ivar("mediaGridView"),new objj_ivar("_librarySectionToolbar"),new objj_ivar("statusLabel"),new objj_ivar("_mediaItemView"),new objj_ivar("plusMinusSegments"),new objj_ivar("media"),new objj_ivar("librarySections"),new objj_ivar("_librarySectionLocationHash"),new objj_ivar("_mediaItemLocationHash"),new objj_ivar("_contentController"),new objj_ivar("_mediaGridController"),new objj_ivar("_mediaItemController")]);
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("librarySection"),function(_6,_7){
with(_6){
return _librarySection;
}
}),new objj_method(sel_getUid("setLibrarySection:"),function(_8,_9,_a){
with(_8){
_librarySection=_a;
}
}),new objj_method(sel_getUid("applicationDidFinishLaunching:"),function(_b,_c,_d){
with(_b){
CPLog.trace("[%@ -applicationDidFinishLaunching:] START",objj_msgSend(_b,"class"));
window=objj_msgSend(objj_msgSend(CPWindow,"alloc"),"initWithContentRect:styleMask:",CGRectMakeZero(),CPBorderlessBridgeWindowMask);
var _e=objj_msgSend(window,"contentView");
var _f=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,CGRectGetWidth(objj_msgSend(_e,"frame")),48));
objj_msgSend(_f,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_f,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","headerBackground.png"))));
var _10=objj_msgSend(objj_msgSend(MMImageView,"alloc"),"initWithFrame:",CGRectMake(9,0,117,48));
objj_msgSend(_10,"setImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","splash.png")));
objj_msgSend(_10,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_f,"addSubview:",_10);
var _11=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("PLEX MEDIA MANAGER","Header title"));
objj_msgSend(_11,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",14));
objj_msgSend(_11,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_11,"sizeToFit");
objj_msgSend(_11,"setFrameOrigin:",CGPointMake(CGRectGetWidth(objj_msgSend(_f,"frame"))-10-CGRectGetWidth(objj_msgSend(_11,"frame")),(CGRectGetHeight(objj_msgSend(_f,"frame"))-CGRectGetHeight(objj_msgSend(_11,"frame")))/2));
objj_msgSend(_11,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_f,"addSubview:",_11);
objj_msgSend(_e,"addSubview:",_f);
_contentController=objj_msgSend(objj_msgSend(MMContentController,"alloc"),"init");
media=objj_msgSend(CPArray,"array");
librarySections=objj_msgSend(CPArray,"array");
_mediaItemsController=objj_msgSend(objj_msgSend(CPArrayController,"alloc"),"init");
objj_msgSend(_mediaItemsController,"setSortDescriptors:",objj_msgSend(CPArray,"arrayWithObject:",objj_msgSend(CPSortDescriptor,"sortDescriptorWithKey:ascending:","titleSort",YES)));
var _12=objj_msgSend(objj_msgSend(MMContainer,"alloc"),"initWithFrame:",CGRectMake(0,CGRectGetMaxY(objj_msgSend(_e,"bounds"))-32,CGRectGetWidth(objj_msgSend(_e,"bounds")),32));
objj_msgSend(_12,"setAutoresizingMask:",CPViewMinYMargin|CPViewWidthSizable);
objj_msgSend(_e,"addSubview:",_12);
statusLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",objj_msgSend(_12,"bounds"));
objj_msgSend(statusLabel,"setAutoresizingMask:",CPViewMinXMargin|CPViewMaxXMargin|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(statusLabel,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(statusLabel,"setVerticalAlignment:",CPCenterTextAlignment);
objj_msgSend(_12,"addSubview:",statusLabel);
plusMinusSegments=objj_msgSend(objj_msgSend(CPSegmentedControl,"alloc"),"initWithFrame:",CGRectMake(15,(CGRectGetHeight(objj_msgSend(_12,"frame"))-_3)/2,0,_3));
objj_msgSend(plusMinusSegments,"setTarget:",_b);
objj_msgSend(plusMinusSegments,"setAction:",sel_getUid("addOrRemoveSection:"));
objj_msgSend(plusMinusSegments,"setTrackingMode:",CPSegmentSwitchTrackingMomentary);
objj_msgSend(plusMinusSegments,"setSegmentCount:",2);
objj_msgSend(plusMinusSegments,"setImage:forSegment:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initByReferencingFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","plus.png"),CGSizeMake(8,8)),_1);
objj_msgSend(plusMinusSegments,"setWidth:forSegment:",30,_1);
objj_msgSend(plusMinusSegments,"setImage:forSegment:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initByReferencingFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","minus.png"),CGSizeMake(8,8)),_2);
objj_msgSend(plusMinusSegments,"setWidth:forSegment:",30,_2);
objj_msgSend(_12,"addSubview:",plusMinusSegments);
var _13=objj_msgSend(MMActionPopUpButton,"button");
objj_msgSend(_13,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(plusMinusSegments,"frame"))+5,(CGRectGetHeight(objj_msgSend(_12,"frame"))-CGRectGetHeight(objj_msgSend(plusMinusSegments,"frame")))/2));
objj_msgSend(_13,"bind:toObject:withKeyPath:options:","enabled",_librarySectionController,"selectedLibrarySection",objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",CPIsNotNilTransformerName,CPValueTransformerNameBindingOption));
objj_msgSend(objj_msgSend(_13,"menu"),"setAutoenablesItems:",NO);
var _14=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",CPLocalizedString("Edit Section","Edit Section"),sel_getUid("editSection:"),nil);
objj_msgSend(_13,"addItem:",_14);
var _15=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",CPLocalizedString("Refresh Section","Refresh Section"),sel_getUid("refreshSection:"),nil);
objj_msgSend(_13,"addItem:",_15);
var _16=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",CPLocalizedString("Refresh Section (force)","Refresh Section (force)"),sel_getUid("forceRefreshSection:"),nil);
objj_msgSend(_13,"addItem:",_16);
var _17=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",CPLocalizedString("Choose Icon","Choose Icon"),nil,nil);
objj_msgSend(_17,"setEnabled:",NO);
objj_msgSend(_13,"addItem:",_17);
var _18=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",CPLocalizedString("Choose Background Art","Choose Background Art"),nil,nil);
objj_msgSend(_18,"setEnabled:",NO);
objj_msgSend(_13,"addItem:",_18);
objj_msgSend(_13,"setTarget:",_b);
objj_msgSend(_12,"addSubview:",_13);
var _19=CGRectGetHeight(objj_msgSend(_e,"bounds"))-CGRectGetHeight(objj_msgSend(_12,"bounds"))-CGRectGetHeight(objj_msgSend(_f,"bounds"));
var _1a=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,CGRectGetMaxY(objj_msgSend(_f,"frame")),200,_19));
objj_msgSend(_1a,"setAutoresizingMask:",CPViewHeightSizable);
objj_msgSend(_e,"addSubview:",_1a);
_librarySectionController=objj_msgSend(objj_msgSend(MMLibrarySectionTableViewController,"alloc"),"initWithDelegate:",_b);
var _1b=objj_msgSend(objj_msgSend(CPScrollView,"alloc"),"initWithFrame:",objj_msgSend(_1a,"bounds"));
objj_msgSend(_1b,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_1b,"setAutohidesScrollers:",YES);
objj_msgSend(_1b,"setDocumentView:",objj_msgSend(_librarySectionController,"view"));
objj_msgSend(_1a,"addSubview:",_1b);
var _1c=objj_msgSend(objj_msgSend(CPBox,"alloc"),"initWithFrame:",CGRectMake(CGRectGetMaxX(objj_msgSend(_1a,"frame")),CGRectGetMinY(objj_msgSend(_1a,"frame")),1,_19));
objj_msgSend(_1c,"setBorderColor:",objj_msgSend(CPColor,"colorWithWhite:alpha:",180/255,1));
objj_msgSend(_1c,"setAutoresizingMask:",CPViewHeightSizable);
objj_msgSend(_e,"addSubview:",_1c);
rightView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(CGRectGetMaxX(objj_msgSend(_1c,"frame")),CGRectGetMinY(objj_msgSend(_1a,"frame")),CGRectGetWidth(objj_msgSend(_e,"bounds"))-CGRectGetMaxX(objj_msgSend(_1c,"frame")),_19));
objj_msgSend(_e,"addSubview:",rightView);
objj_msgSend(rightView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(objj_msgSend(_contentController,"view"),"setFrame:",objj_msgSend(rightView,"bounds"));
objj_msgSend(rightView,"addSubview:",objj_msgSend(_contentController,"view"));
var _1d=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Settings","Settings button at the top-right"));
objj_msgSend(_1d,"setTarget:",_b);
objj_msgSend(_1d,"setAction:",sel_getUid("_settingsButtonWasClicked:"));
objj_msgSend(_1d,"setKeyEquivalent:",",");
objj_msgSend(_1d,"setKeyEquivalentModifierMask:",CPControlKeyMask);
objj_msgSend(_1d,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_1d,"setFrameOrigin:",CGPointMake(CGRectGetWidth(objj_msgSend(objj_msgSend(_contentController,"navigationBar"),"frame"))-10-CGRectGetWidth(objj_msgSend(_1d,"frame")),(CGRectGetHeight(objj_msgSend(objj_msgSend(_contentController,"navigationBar"),"frame"))-CGRectGetHeight(objj_msgSend(_1d,"frame")))/2));
objj_msgSend(objj_msgSend(_contentController,"navigationBar"),"addSubview:",_1d);
objj_msgSend(_b,"bind:toObject:withKeyPath:options:","librarySection",_librarySectionController,"selectedLibrarySection",nil);
_mediaGridController=objj_msgSend(objj_msgSend(MMMediaItemCollectionViewController,"alloc"),"init");
objj_msgSend(_mediaGridController,"bind:toObject:withKeyPath:options:","librarySection",_b,"librarySection",nil);
objj_msgSend(_mediaGridController,"addObserver:forKeyPath:options:context:",_b,"content",CPKeyValueObservingOptionNew,nil);
objj_msgSend(_contentController,"pushViewController:animated:",_mediaGridController,NO);
_mediaItemController=objj_msgSend(objj_msgSend(MMMediaItemController,"alloc"),"init");
objj_msgSend(statusLabel,"bind:toObject:withKeyPath:options:",CPValueBinding,_contentController,"status",nil);
var _1e=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"initWithFrame:",CGRectMakeZero()),_1f=objj_msgSend(_1e,"currentValueForThemeAttribute:","help-image"),_20=objj_msgSend(_1e,"currentValueForThemeAttribute:","help-image-pressed"),_21=_1f?objj_msgSend(_1f,"size"):CGSizeMakeZero(),_22=CGRectMake(CGRectGetWidth(objj_msgSend(_12,"frame"))-5-_21.width,(CGRectGetHeight(objj_msgSend(_12,"frame"))-_21.height)/2,_21.width,_21.height);
var _23=objj_msgSend(objj_msgSend(CPButton,"alloc"),"initWithFrame:",_22);
objj_msgSend(_23,"setTarget:",_b);
objj_msgSend(_23,"setAction:",sel_getUid("help:"));
objj_msgSend(_23,"setImage:",_1f);
objj_msgSend(_23,"setAlternateImage:",_20);
objj_msgSend(_23,"setBordered:",NO);
objj_msgSend(_23,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_23,"bind:toObject:withKeyPath:options:","hidden",_b,"librarySection",objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",CPIsNilTransformerName,CPValueTransformerNameBindingOption));
objj_msgSend(_12,"addSubview:",_23);
objj_msgSend(window,"orderFront:",_b);
objj_msgSend(LanguageConfig,"initialize");
objj_msgSend(MMPrefsController,"sharedPrefsController");
objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"addObserver:selector:",_b,sel_getUid("locationDidChange:"));
CPLog.trace("[%@ -applicationDidFinishLaunching:] END",objj_msgSend(_b,"class"));
}
}),new objj_method(sel_getUid("setLibrarySection:"),function(_24,_25,_26){
with(_24){
if(objj_msgSend(_librarySectionController,"hasLoadedSections")){
if(_26==nil){
objj_msgSend(_24,"showHelp");
}else{
objj_msgSend(_24,"dismissHelp");
}
}
if(_librarySection==_26){
return;
}
objj_msgSend(_contentController,"popToRootViewControllerAnimated:",NO);
_librarySection=_26;
if(_librarySection&&!_wantedMediaItemId){
objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"setLocation:",objj_msgSend(CPString,"stringWithFormat:","/sections/%@",objj_msgSend(_librarySection,"id")));
}
}
}),new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"),function(_27,_28,_29,_2a,_2b,_2c){
with(_27){
if(_2a==_mediaGridController&&_29=="content"){
objj_msgSend(_27,"locationDidChange:",objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"formattedHash"));
}
}
}),new objj_method(sel_getUid("locationDidChange:"),function(_2d,_2e,_2f){
with(_2d){
if(_preventUpdates){
return;
}
var _30=objj_msgSend(_librarySectionController,"librarySectionsController");
var _31=nil,_32=nil,_30=nil;
var _33=objj_msgSend(_2f,"componentsSeparatedByString:","/");
objj_msgSend(_33,"removeObjectIdenticalTo:","");
_preventUpdates=YES;
if(objj_msgSend(_33,"count")>=2&&objj_msgSend(objj_msgSend(_33,"objectAtIndex:",0),"isEqualToString:","sections")){
_31=objj_msgSend(_33,"objectAtIndex:",1);
if(_31){
objj_msgSend(_librarySectionController,"selectSectionWithId:",_31);
}
if(objj_msgSend(_33,"count")>=4&&objj_msgSend(objj_msgSend(_33,"objectAtIndex:",2),"isEqualToString:","media")){
_32=objj_msgSend(_33,"objectAtIndex:",3);
_wantedMediaItemId=_32;
if(_32){
var _34=objj_msgSend(_mediaGridController,"content");
for(var i=0,_35=objj_msgSend(_34,"count");i<_35;i++){
var _36=objj_msgSend(_34,"objectAtIndex:",i);
if(objj_msgSend(objj_msgSend(_36,"id"),"isEqual:",_32)){
_wantedMediaItemId=nil;
objj_msgSend(_mediaItemController,"setContent:",_36);
objj_msgSend(_contentController,"popToRootViewControllerAnimated:",NO);
objj_msgSend(_contentController,"pushViewController:animated:",_mediaItemController,NO);
break;
}
}
}
}else{
objj_msgSend(_contentController,"popToRootViewControllerAnimated:",NO);
}
}
_preventUpdates=NO;
}
}),new objj_method(sel_getUid("showHelp"),function(_37,_38){
with(_37){
_showingHelp=YES;
if(!_firstRunView){
_firstRunView=objj_msgSend(objj_msgSend(MMFirstRunView,"alloc"),"initWithFrame:",objj_msgSend(objj_msgSend(_contentController,"view"),"frame"));
objj_msgSend(_firstRunView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
}
if(objj_msgSend(_firstRunView,"superview")){
return;
}
objj_msgSend(_firstRunView,"setFrame:",objj_msgSend(objj_msgSend(_contentController,"view"),"frame"));
objj_msgSend(objj_msgSend(objj_msgSend(_contentController,"view"),"superview"),"replaceSubview:with:",objj_msgSend(_contentController,"view"),_firstRunView);
}
}),new objj_method(sel_getUid("dismissHelp"),function(_39,_3a){
with(_39){
_showingHelp=NO;
if(!objj_msgSend(_firstRunView,"superview")){
return;
}
objj_msgSend(objj_msgSend(_contentController,"view"),"setFrame:",objj_msgSend(_firstRunView,"frame"));
objj_msgSend(objj_msgSend(_firstRunView,"superview"),"replaceSubview:with:",_firstRunView,objj_msgSend(_contentController,"view"));
}
}),new objj_method(sel_getUid("help:"),function(_3b,_3c,_3d){
with(_3b){
if(_showingHelp){
objj_msgSend(_3b,"dismissHelp");
}else{
objj_msgSend(_3b,"showHelp");
}
}
}),new objj_method(sel_getUid("dataSource:didFailToReceiveRecordsWithError:contextInfo:"),function(_3e,_3f,_40,_41,_42){
with(_3e){
objj_msgSend(objj_msgSend(_3e,"class"),"notifyUserOfConnectionError:",_41);
}
}),new objj_method(sel_getUid("dataSource:didFailToDeleteRecord:withError:contextInfo:"),function(_43,_44,_45,_46,_47,_48){
with(_43){
var _49=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(_49,"setAlertStyle:",CPCriticalAlertStyle);
objj_msgSend(_49,"setTitle:",objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Unable to remove section \"%@\"","Error title for when we cannot remove a library section"),objj_msgSend(_46,"title")));
objj_msgSend(_49,"setMessageText:",objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Got this error: %@. Are you sure Plex Media Server is running?","Error message for when we cannot remove a library section"),_47));
objj_msgSend(_49,"runModal");
}
}),new objj_method(sel_getUid("selectedLibrarySection"),function(_4a,_4b){
with(_4a){
return objj_msgSend(_librarySectionController,"selectedLibrarySection");
}
}),new objj_method(sel_getUid("librarySectionWasActivated:"),function(_4c,_4d,_4e){
with(_4c){
objj_msgSend(_4c,"_beginEditingSection:",_4e);
}
}),new objj_method(sel_getUid("collectionView:didDoubleClickOnItemAtIndex:"),function(_4f,_50,_51,_52){
with(_4f){
objj_msgSend(_4f,"presentMediaItem:",objj_msgSend(objj_msgSend(_mediaGridController,"content"),"objectAtIndex:",_52));
}
}),new objj_method(sel_getUid("presentMediaItem:"),function(_53,_54,_55){
with(_53){
_mediaItem=_55;
if(!_mediaItemView){
_mediaItemView=objj_msgSend(objj_msgSend(MMMediaItemDetailView,"alloc"),"initWithFrame:",objj_msgSend(objj_msgSend(_contentController,"view"),"contentRect"));
objj_msgSend(_mediaItemView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
}
objj_msgSend(_mediaItemView,"setMediaItem:",_55);
objj_msgSend(_contentController,"popToViewController:animated:",_mediaGridController,NO);
objj_msgSend(_contentController,"pushViewController:animated:",_mediaItemController,NO);
_mediaItemLocationHash=objj_msgSend(CPString,"stringWithFormat:","/sections/%@/media/%@",objj_msgSend(objj_msgSend(_librarySectionController,"selectedLibrarySection"),"id"),objj_msgSend(_55,"id"));
objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"setLocation:",_mediaItemLocationHash);
}
}),new objj_method(sel_getUid("addOrRemoveSection:"),function(_56,_57,_58){
with(_56){
switch(objj_msgSend(_58,"selectedSegment")){
case _1:
var _59=objj_msgSend(objj_msgSend(MMSectionSettingsSheet,"alloc"),"initWithDataSource:",objj_msgSend(MMLibrarySectionsDataSource,"sharedDataSource"));
objj_msgSend(_59,"beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:",window,_56,sel_getUid("_addDidEnd:returnCode:contextInfo:"),objj_msgSend(objj_msgSend(MMLibrarySection,"alloc"),"init"));
break;
case _2:
var _5a=objj_msgSend(_56,"selectedLibrarySection"),_5b=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(_5b,"setAlertStyle:",CPWarningAlertStyle);
objj_msgSend(_5b,"setMessageText:",objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Are you sure you want to remove the section named \"%@\"?","Confirmation message for removing a section"),objj_msgSend(_5a,"title")));
objj_msgSend(_5b,"setInformativeText:",CPLocalizedString("Any content in this section will no longer be available in your library. The files on your computer will not be removed.","Informative text for removing a section"));
objj_msgSend(_5b,"setDelegate:",_56);
objj_msgSend(_5b,"addButtonWithTitle:",CPLocalizedString("Remove Section","Remove section confirmation button"));
objj_msgSend(_5b,"addButtonWithTitle:",CPLocalizedString("Cancel","Cancel"));
objj_msgSend(_5b,"beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:",window,_56,sel_getUid("removeSectionConfirmationDidEnd:returnCode:contextInfo:"),_5a);
break;
}
}
}),new objj_method(sel_getUid("_addDidEnd:returnCode:contextInfo:"),function(_5c,_5d,_5e,_5f,_60){
with(_5c){
}
}),new objj_method(sel_getUid("_editDidEnd:returnCode:contextInfo:"),function(_61,_62,_63,_64,_65){
with(_61){
}
}),new objj_method(sel_getUid("editSection:"),function(_66,_67,_68){
with(_66){
objj_msgSend(_66,"_beginEditingSection:",objj_msgSend(_66,"selectedLibrarySection"));
}
}),new objj_method(sel_getUid("refreshSection:"),function(_69,_6a,_6b){
with(_69){
objj_msgSend(objj_msgSend(MMLibrarySectionsDataSource,"sharedDataSource"),"refreshSection:force:",objj_msgSend(_69,"selectedLibrarySection"),false);
}
}),new objj_method(sel_getUid("forceRefreshSection:"),function(_6c,_6d,_6e){
with(_6c){
objj_msgSend(objj_msgSend(MMLibrarySectionsDataSource,"sharedDataSource"),"refreshSection:force:",objj_msgSend(_6c,"selectedLibrarySection"),true);
}
}),new objj_method(sel_getUid("editSectionButtonClicked:"),function(_6f,_70,_71){
with(_6f){
objj_msgSend(_6f,"_beginEditingSection:",objj_msgSend(_6f,"selectedLibrarySection"));
}
}),new objj_method(sel_getUid("_beginEditingSection:"),function(_72,_73,_74){
with(_72){
var _75=objj_msgSend(objj_msgSend(MMSectionSettingsSheet,"alloc"),"initWithDataSource:",objj_msgSend(MMLibrarySectionsDataSource,"sharedDataSource"));
objj_msgSend(_75,"beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:",window,_72,sel_getUid("_editDidEnd:returnCode:contextInfo:"),_74);
}
}),new objj_method(sel_getUid("_settingsButtonWasClicked:"),function(_76,_77,_78){
with(_76){
var _79=objj_msgSend(objj_msgSend(MMPreferencesPanel,"alloc"),"initWithFrame:",CGRectMake(0,0,500,200));
objj_msgSend(_79,"sizeToFit");
objj_msgSend(_79,"presentSheetInWindow:",window);
}
}),new objj_method(sel_getUid("removeSectionConfirmationDidEnd:returnCode:contextInfo:"),function(_7a,_7b,_7c,_7d,_7e){
with(_7a){
if(_7d===0){
objj_msgSend(objj_msgSend(MMLibrarySectionsDataSource,"sharedDataSource"),"deleteRecord:",_7e);
}
}
})]);
class_addMethods(_5,[new objj_method(sel_getUid("notifyUserOfError:withTitle:"),function(_7f,_80,_81,_82){
with(_7f){
var _83=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(_83,"setAlertStyle:",CPCriticalAlertStyle);
objj_msgSend(_83,"setTitle:",_82);
objj_msgSend(_83,"setMessageText:",_81);
objj_msgSend(_83,"runModal");
}
}),new objj_method(sel_getUid("notifyUserOfConnectionError:"),function(_84,_85,_86){
with(_84){
objj_msgSend(_84,"notifyUserOfError:withTitle:",objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Connecting to Plex Media Server failed with this error: %@.\n\nAre you sure it's running?","Error message for when we cannot connect to PMS or when the response is invalid"),_86),CPLocalizedString("Unable to connect to Plex Media Server","Error title for when we cannot connect to PMS or when the response is invalid"));
}
})]);
p;10;CPBundle.jt;2896;@STATIC;1.0;I;22;AppKit/CPApplication.jt;2850;
objj_executeFile("AppKit/CPApplication.j",NO);
var _1;
CPLocalizedString=function(_2,_3){
return CPLocalizedStringFromTable(_2,nil,_3);
};
CPLocalizedStringFromTable=function(_4,_5,_6){
return CPLocalizedStringFromTableInBundle(_4,_5,objj_msgSend(CPBundle,"mainBundle"),_6);
};
CPLocalizedStringFromTableInBundle=function(_7,_8,_9,_a){
return objj_msgSend(_9,"localizedStringForKey:value:table:",_7,_7,_8);
};
var _b=objj_getClass("CPBundle");
if(!_b){
throw new SyntaxError("*** Could not find definition for class \"CPBundle\"");
}
var _c=_b.isa;
class_addMethods(_b,[new objj_method(sel_getUid("bundleLocale"),function(_d,_e){
with(_d){
return objj_msgSend(_d,"objectForInfoDictionaryKey:","CPBundleLocale")||objj_msgSend(_d,"bundleLocaleWithUserLanguage:",nil);
}
}),new objj_method(sel_getUid("localizedStringForKey:value:table:"),function(_f,_10,_11,_12,_13){
with(_f){
if(!_1){
_1=objj_msgSend(CPDictionary,"dictionary");
}
if(!_13){
_13="Localizable";
}
var _14=objj_msgSend(_1,"objectForKey:",_13);
if(!_14){
_14=objj_msgSend(CPDictionary,"dictionary");
objj_msgSend(_1,"setObject:forKey:",_14,_13);
}
var _15=objj_msgSend(_14,"objectForKey:",_11);
if(!_15){
_15=_12;
objj_msgSend(_14,"setObject:forKey:",_15,_11);
}
return _15;
}
}),new objj_method(sel_getUid("setDictionary:forTable:"),function(_16,_17,_18,_19){
with(_16){
if(!_1){
_1=objj_msgSend(CPDictionary,"dictionary");
}
objj_msgSend(_1,"setObject:forKey:",_18,_19);
}
}),new objj_method(sel_getUid("bundleLocaleWithUserLanguage:"),function(_1a,_1b,_1c){
with(_1a){
var _1d=objj_msgSend(_1a,"objectForInfoDictionaryKey:","CPBundleDevelopmentRegion");
var _1e=objj_msgSend(_1a,"objectForInfoDictionaryKey:","CPBundleLocalizedResourceKeys");
var _1f,_20=nil;
if(objj_msgSend(_1e,"containsObject:",_1c)){
return _1c;
}
var _21=window.location.search,_22=_21&&_21.replace(/^.*lang=([^&]+)/i,"$1").substring(0,2);
if(objj_msgSend(_1e,"containsObject:",_22)){
return _22;
}
if(objj_msgSend(_1e,"containsObject:",objj_msgSend(_1a,"browserLanguage"))){
return objj_msgSend(_1a,"browserLanguage");
}
return objj_msgSend(_1d,"length")?_1d:"en";
}
}),new objj_method(sel_getUid("browserLanguage"),function(_23,_24){
with(_23){
return (navigator.language||navigator.userLanguage).substring(0,2);
}
})]);
window.LocaleCPApplicationMain=CPApplicationMain;
CPApplicationMain=function(_25,_26){
var _27=objj_msgSend(CPBundle,"mainBundle"),_28=objj_msgSend(_27,"bundleLocale");
if(_28){
var _29=objj_msgSend(CPURLRequest,"requestWithURL:",objj_msgSend(_27,"pathForResource:",_28+".lproj/Localizable.xstrings")),_2a=objj_msgSend(CPURLConnection,"sendSynchronousRequest:returningResponse:",_29,_2a);
var _2b=objj_msgSend(CPPropertyListSerialization,"propertyListFromData:format:",_2a,nil);
objj_msgSend(_27,"setDictionary:forTable:",_2b,"Localizable");
}
window.LocaleCPApplicationMain(_25,_26);
};
p;27;CPCheckBox+ObjectValueFix.jt;395;@STATIC;1.0;t;377;
var _1=objj_getClass("CPCheckBox");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPCheckBox\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("setObjectValue:"),function(_3,_4,_5){
with(_3){
objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPCheckBox").super_class},"setObjectValue:",_5?CPOnState:CPOffState);
}
})]);
p;19;CPDate+Formatting.jt;1508;@STATIC;1.0;t;1489;
var _1=1000,_2=_1,_3=60*_2,_4=_3,_5=60*_4,_6=_5,_7=24*_6,_8=_7;
var _9=objj_msgSend(CPArray,"arrayWithObjects:",CPLocalizedString("Sunday","Sunday"),CPLocalizedString("Monday","Monday"),CPLocalizedString("Tuesday","Tuesday"),CPLocalizedString("Wednesday","Wednesday"),CPLocalizedString("Thursday","Thursday"),CPLocalizedString("Friday","Friday"),CPLocalizedString("Saturday","Saturday"));
var _a=objj_getClass("CPDate");
if(!_a){
throw new SyntaxError("*** Could not find definition for class \"CPDate\"");
}
var _b=_a.isa;
class_addMethods(_a,[new objj_method(sel_getUid("relativeDate"),function(_c,_d){
with(_c){
var _e=new Date(),_f=new Date(_e.getFullYear(),_e.getMonth(),_e.getDate()),_10=new Date(_f.getTime()+_7),_11=new Date(_10.getTime()+_7),_12=new Date(_f.getTime()-_7);
if(_12<=_c&&_c<_f){
return CPLocalizedString("yesterday","yesterday");
}else{
if(_f<=_c&&_c<_10){
return CPLocalizedString("today","today");
}
}
if(_10<=_c&&_c<_11){
return CPLocalizedString("tomorrow","tomorrow");
}
var _13=new Date(_f.getTime()-4*_8);
if(_13<=_c&&_c<_f){
return objj_msgSend(_9,"objectAtIndex:",_c.getDay());
}
return _c.toLocaleDateString();
}
}),new objj_method(sel_getUid("shortLocalTime"),function(_14,_15){
with(_14){
var _16=_14.getHours();
return objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("%d:%02d %@","ShortLocalTimeFormat"),(_16%12)==0?12:(_16%12),_14.getMinutes(),_16>11?CPLocalizedString("PM","PostMeridiem"):CPLocalizedString("AM","AnteMeridiem"));
}
})]);
p;19;CPDateTransformer.jt;951;@STATIC;1.0;I;31;Foundation/CPValueTransformer.jt;897;
objj_executeFile("Foundation/CPValueTransformer.j",NO);
var _1=objj_allocateClassPair(CPValueTransformer,"CPDateTransformer"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("reverseTransformedValue:"),function(_3,_4,_5){
with(_3){
if(!_5){
return nil;
}
var _6;
if(_6=_5.match(/^(\d{4})-(\d\d?)-(\d\d?)$/)){
return new Date(Number(_6[1]),Number(_6[2])-1,Number(_6[3]));
}else{
return Date.parse(_5);
}
}
}),new objj_method(sel_getUid("transformedValue:"),function(_7,_8,_9){
with(_7){
return _9&&objj_msgSend(CPString,"stringWithFormat:","%d-%02d-%02d",_9.getFullYear(),_9.getMonth()+1,_9.getDate());
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("allowsReverseTransformation"),function(_a,_b){
with(_a){
return YES;
}
}),new objj_method(sel_getUid("transformedValueClass"),function(_c,_d){
with(_c){
return objj_msgSend(CPDate,"class");
}
})]);
p;24;CPDictionary+URLParams.jt;1777;@STATIC;1.0;t;1758;
var _1=objj_getClass("CPDictionary");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPDictionary\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("URLParams"),function(_3,_4){
with(_3){
return objj_msgSend(_3,"URLParamsOmittingNullValues:",NO);
}
}),new objj_method(sel_getUid("URLParamsOmittingNullValues:"),function(_5,_6,_7){
with(_5){
var _8=objj_msgSend(CPArray,"array"),_9=objj_msgSend(_5,"keyEnumerator"),_a;
while(_a=objj_msgSend(_9,"nextObject")){
var _b=objj_msgSend(_5,"objectForKey:",_a);
if(!objj_msgSend(_b,"isKindOfClass:",CPArray)){
_b=objj_msgSend(CPArray,"arrayWithObject:",_b);
}
for(var i=0,_c=objj_msgSend(_b,"count");i<_c;i++){
var _d=_b[i];
if(objj_msgSend(_d,"respondsToSelector:",sel_getUid("asURLParam"))){
_d=objj_msgSend(_d,"asURLParam");
}
if(_7&&(_d===null||_d===undefined||objj_msgSend(objj_msgSend(CPNull,"null"),"isEqual:",_d))){
continue;
}
objj_msgSend(_8,"addObject:",objj_msgSend(CPString,"stringWithFormat:","%@=%@",encodeURIComponent(String(_a)),encodeURIComponent(String(_d))));
}
}
return objj_msgSend(_8,"componentsJoinedByString:","&");
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("dictionaryFromURLParams:"),function(_e,_f,_10){
with(_e){
var _11=objj_msgSend(_10,"componentsSeparatedByString:","&"),_12=objj_msgSend(_11,"objectEnumerator"),_13,_14=objj_msgSend(_e,"dictionary");
while(_13=objj_msgSend(_12,"nextObject")){
var _15=objj_msgSend(_13,"rangeOfString:","="),key,_16;
if(CPEmptyRange(_15)){
key=_13,_16="";
}else{
key=objj_msgSend(_13,"substringToIndex:",_15.location),_16=objj_msgSend(_13,"substringFromIndex:",CPMaxRange(_15));
}
objj_msgSend(_14,"setObject:forKey:",decodeURIComponent(_16),decodeURIComponent(key));
}
return _14;
}
})]);
p;21;CPImage+Transcoding.jt;2359;@STATIC;1.0;I;16;AppKit/CPImage.ji;15;Models/PMSURL.jt;2299;
objj_executeFile("AppKit/CPImage.j",NO);
objj_executeFile("Models/PMSURL.j",YES);
var _1=100000;
var _2="/photo/:/transcode";
CPImageUnspecifiedSize=CGSizeMake(-1,-1);
var _3=objj_getClass("CPImage");
if(!_3){
throw new SyntaxError("*** Could not find definition for class \"CPImage\"");
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("constrainedToSize:"),function(_5,_6,_7){
with(_5){
var _8=objj_msgSend(_5,"filename"),_9=objj_msgSend(objj_msgSend(_5,"class"),"URLForImageAtURL:constrainedToSize:",_8,_7);
if(!objj_msgSend(_8,"isKindOfClass:",CPURL)){
_8=objj_msgSend(PMSURL,"URLWithPath:",_8);
}
if(objj_msgSend(objj_msgSend(_9,"path"),"isEqualToString:",objj_msgSend(_8,"path"))){
var _a=objj_msgSend(CPDictionary,"dictionaryFromURLParams:",objj_msgSend(_8,"parameterString")),_b=objj_msgSend(CPDictionary,"dictionaryFromURLParams:",objj_msgSend(_9,"parameterString"));
if(objj_msgSend(_a,"isEqual:",_b)){
return _5;
}
}
return objj_msgSend(objj_msgSend(objj_msgSend(_5,"class"),"alloc"),"initByReferencingFile:size:",_9,CPImageUnspecifiedSize);
}
}),new objj_method(sel_getUid("constrainedToWidth:"),function(_c,_d,_e){
with(_c){
return objj_msgSend(_c,"constrainedToSize:",CGSizeMake(_e,_1));
}
}),new objj_method(sel_getUid("constrainedToHeight:"),function(_f,_10,_11){
with(_f){
return objj_msgSend(_f,"constrainedToSize:",CGSizeMake(_1,_11));
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("URLForImageAtURL:constrainedToSize:"),function(_12,_13,_14,_15){
with(_12){
if(!_15||CGSizeEqualToSize(_15,CPImageUnspecifiedSize)){
return _14;
}
var _16=objj_msgSend(CPDictionary,"dictionary");
if(!objj_msgSend(_14,"isKindOfClass:",CPURL)){
_14=objj_msgSend(CPURL,"URLWithString:",_14);
}
if(objj_msgSend(objj_msgSend(_14,"path"),"hasPrefix:",_2)){
_16=objj_msgSend(CPDictionary,"dictionaryFromURLParams:",objj_msgSend(_14,"parameterString"));
_14=objj_msgSend(CPURL,"URLWithString:",objj_msgSend(_16,"objectForKey:","url"));
}
if(!objj_msgSend(_14,"host")){
_14=objj_msgSend(PMSURL,"URLWithPath:",objj_msgSend(_14,"absoluteString"));
}
objj_msgSend(_16,"setObject:forKey:",_14,"url");
objj_msgSend(_16,"setObject:forKey:",_15.width,"width");
objj_msgSend(_16,"setObject:forKey:",_15.height,"height");
return objj_msgSend(PMSURL,"URLWithPath:params:",_2,_16);
}
})]);
p;24;CPObject+XMLAttributes.jt;650;@STATIC;1.0;t;632;
var _1=objj_getClass("CPObject");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPObject\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("setValuesForNodeAttributes:ignoreUndefinedKeys:"),function(_3,_4,_5,_6){
with(_3){
var _7=objj_msgSend(_3,"class"),_8=_5.attributes;
for(var i=_8.length;i--;){
var _9=_8[i],_a=String(_9.nodeName).replace(/[-_]([a-z])/ig,function(_b,_c){
return _c.toUpperCase();
}),_d=String(_9.nodeValue);
try{
objj_msgSend(_3,"setValue:forKey:",_d,_a);
continue;
}
catch(e){
if(!_6||(objj_msgSend(e,"name")!=CPUndefinedKeyException)){
throw e;
}
}
}
}
})]);
p;16;CPString+Paths.jt;337;@STATIC;1.0;t;319;
var _1=objj_getClass("CPString");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPString\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("stringByAppendingPathComponent:"),function(_3,_4,_5){
with(_3){
if(length){
return [_3,_5].join("/");
}else{
return _5;
}
}
})]);
p;29;CPURLConnection+XMLResponse.jt;433;@STATIC;1.0;t;415;
var _1=objj_getClass("CPURLConnection");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPURLConnection\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("responseXML"),function(_3,_4){
with(_3){
return _HTTPRequest.responseXML();
}
}),new objj_method(sel_getUid("locationHeader"),function(_5,_6){
with(_5){
return _HTTPRequest.getResponseHeader("Location");
}
})]);
p;37;CPValueTransformer+FunctionCallback.jt;907;@STATIC;1.0;t;889;
var _1=objj_getClass("CPValueTransformer");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPValueTransformer\"");
}
var _2=_1.isa;
class_addMethods(_2,[new objj_method(sel_getUid("valueTransformerForFunction:"),function(_3,_4,_5){
with(_3){
return objj_msgSend(objj_msgSend(_MMValueTransformer,"alloc"),"initWithCallbackFunction:",_5);
}
})]);
var _1=objj_allocateClassPair(CPValueTransformer,"_MMValueTransformer"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_callback")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithCallbackFunction:"),function(_6,_7,_8){
with(_6){
if(_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("_MMValueTransformer").super_class},"init")){
_callback=_8;
}
return _6;
}
}),new objj_method(sel_getUid("transformedValue:"),function(_9,_a,_b){
with(_9){
return _callback(_b);
}
})]);
p;18;CPView+sizeToFit.jt;1590;@STATIC;1.0;I;15;AppKit/CPView.jt;1551;
objj_executeFile("AppKit/CPView.j",NO);
var _1=objj_getClass("CPView");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPView\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("sizeToFit"),function(_3,_4){
with(_3){
objj_msgSend(_3,"sizeToFitWithInset:",objj_msgSend(_3,"hasThemeAttribute:","content-inset")&&objj_msgSend(_3,"currentValueForThemeAttribute:","content-inset")||CGInsetMakeZero());
}
}),new objj_method(sel_getUid("sizeToFitWithInset:"),function(_5,_6,_7){
with(_5){
var _8=CGSizeMake(_7.left,_7.top),_9={origin:CGPointMakeZero(),size:_8},_a=CGSizeMakeZero();
for(var i=0,_b=objj_msgSend(_subviews,"count");i<_b;i++){
var _c=_subviews[i],_d=objj_msgSend(_c,"autoresizingMask");
if(_d&CPViewMinYMargin){
var _e=CGRectIntersection(_9,objj_msgSend(_c,"frame"));
if(!CGRectIsEmpty(_e)){
_a.height+=CGRectGetHeight(_e);
}
}else{
if(_d&CPViewMinXMargin){
var _e=CGRectIntersection(_9,objj_msgSend(_c,"frame"));
if(!CGRectIsEmpty(_e)){
_a.width+=CGRectGetWidth(_e);
}
}else{
var _f=objj_msgSend(_c,"frame"),_10=CGRectGetMaxX(_f),_11=CGRectGetMaxY(_f);
if(_8.width<_10){
_8.width=_10;
}
if(_8.height<_11){
_8.height=_11;
}
}
}
objj_msgSend(_5,"setFrameSize:",CGSizeMake(_8.width+_a.width,_8.height+_a.height));
}
_8.width+=_a.width+_7.right;
_8.height+=_a.height+_7.bottom;
objj_msgSend(_5,"setFrameSize:",_8);
}
}),new objj_method(sel_getUid("hasThemeAttribute:"),function(_12,_13,_14){
with(_12){
return !!objj_msgSend(objj_msgSend(_12,"_themeAttributeDictionary"),"objectForKey:",_14);
}
})]);
p;20;CPView+Transitions.jt;2466;@STATIC;1.0;I;15;AppKit/CPView.jI;20;AppKit/CPAnimation.jt;2402;
objj_executeFile("AppKit/CPView.j",NO);
objj_executeFile("AppKit/CPAnimation.j",NO);
var _1=objj_getClass("CPView");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPView\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("transitionFromSubview:toSubview:"),function(_3,_4,_5,_6){
with(_3){
if(objj_msgSend(_5,"isEqual:",_6)){
return;
}
objj_msgSend(_3,"willTransitionFromSubview:toSubview:",_5,_6);
var _7=objj_msgSend(_3,"window"),_8=CGRectGetWidth(objj_msgSend(_6,"frame"))-CGRectGetWidth(objj_msgSend(_5,"frame")),_9=CGRectGetHeight(objj_msgSend(_6,"frame"))-CGRectGetHeight(objj_msgSend(_5,"frame")),_a=objj_msgSend(_7,"frame").size,_b=CGSizeMake(_a.width+_8,_a.height+_9),_c=objj_msgSend(_7,"frame"),_d=CGRectMake(CGRectGetMidX(_c)-_b.width/2,CGRectGetMinY(_c),_b.width,_b.height),_e=objj_msgSend(_7,"animationResizeTime:",_d);
var _f=objj_msgSend(objj_msgSend(CPViewAnimation,"alloc"),"initWithDuration:animationCurve:",_e,CPAnimationLinear);
objj_msgSend(_f,"setViewAnimations:",objj_msgSend(CPArray,"arrayWithObjects:",objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_5,CPViewAnimationTargetKey,objj_msgSend(_5,"frame"),CPViewAnimationStartFrameKey,objj_msgSend(_5,"frame"),CPViewAnimationEndFrameKey,CPViewAnimationFadeOutEffect,CPViewAnimationEffectKey),objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_6,CPViewAnimationTargetKey,objj_msgSend(_6,"frame"),CPViewAnimationStartFrameKey,objj_msgSend(_6,"frame"),CPViewAnimationEndFrameKey,CPViewAnimationFadeInEffect,CPViewAnimationEffectKey)));
objj_msgSend(_f,"startAnimation");
objj_msgSend(_7,"setFrame:display:animate:",_d,YES,YES);
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",_e,_3,sel_getUid("_didTransitionWithTimer:"),objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_6,"toSubview",_5,"fromSubview"),NO);
}
}),new objj_method(sel_getUid("_didTransitionWithTimer:"),function(_10,_11,_12){
with(_10){
var _13=objj_msgSend(_12,"userInfo");
objj_msgSend(_10,"didTransitionFromSubview:toSubview:",objj_msgSend(_13,"objectForKey:","fromSubview"),objj_msgSend(_13,"objectForKey:","toSubview"));
}
}),new objj_method(sel_getUid("willTransitionFromSubview:toSubview:"),function(_14,_15,_16,_17){
with(_14){
}
}),new objj_method(sel_getUid("didTransitionFromSubview:toSubview:"),function(_18,_19,_1a,_1b){
with(_18){
}
})]);
p;6;main.jt;456;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/AppKit.ji;10;CPBundle.ji;20;CPView+Transitions.ji;18;CPView+sizeToFit.ji;15;AppController.jt;307;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("AppKit/AppKit.j",NO);
objj_executeFile("CPBundle.j",YES);
objj_executeFile("CPView+Transitions.j",YES);
objj_executeFile("CPView+sizeToFit.j",YES);
objj_executeFile("AppController.j",YES);
main=function(_1,_2){
CPApplicationMain(_1,_2);
};
p;17;MMURLConnection.jt;451;@STATIC;1.0;t;433;
var _1=objj_allocateClassPair(CPURLConnection,"MMURLConnection"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithRequest:delegate:startImmediately:"),function(_3,_4,_5,_6,_7){
with(_3){
var _8=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("MMURLConnection").super_class},"initWithRequest:delegate:startImmediately:",_5,_6,_7);
_isLocalFileConnection=NO;
return _8;
}
})]);
p;31;Controllers/MMAlbumController.jt;9079;@STATIC;1.0;I;25;AppKit/CPViewController.ji;30;../Models/MMLibraryMediaItem.ji;28;../Views/MMAlbumDetailView.ji;27;../Views/MMAlbumTrackCell.ji;21;MMEpisodeController.jt;8904;
objj_executeFile("AppKit/CPViewController.j",NO);
objj_executeFile("../Models/MMLibraryMediaItem.j",YES);
objj_executeFile("../Views/MMAlbumDetailView.j",YES);
objj_executeFile("../Views/MMAlbumTrackCell.j",YES);
objj_executeFile("MMEpisodeController.j",YES);
var _1=objj_allocateClassPair(CPViewController,"MMAlbumController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_content"),new objj_ivar("_mediaItemDataSource"),new objj_ivar("_childrenController"),new objj_ivar("_detailView"),new objj_ivar("_contentController")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("content"),function(_3,_4){
with(_3){
return _content;
}
}),new objj_method(sel_getUid("setContent:"),function(_5,_6,_7){
with(_5){
_content=_7;
}
}),new objj_method(sel_getUid("contentController"),function(_8,_9){
with(_8){
return _contentController;
}
}),new objj_method(sel_getUid("init"),function(_a,_b){
with(_a){
if(_a=objj_msgSendSuper({receiver:_a,super_class:objj_getClass("MMAlbumController").super_class},"init")){
_mediaItemDataSource=objj_msgSend(objj_msgSend(MMLibraryMediaDataSource,"alloc"),"initWithDelegate:",_a);
_childrenController=objj_msgSend(objj_msgSend(CPArrayController,"alloc"),"init");
}
return _a;
}
}),new objj_method(sel_getUid("loadView"),function(_c,_d){
with(_c){
_toolbarController=objj_msgSend(objj_msgSend(MMMediaItemToolbarController,"alloc"),"init");
var _e=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,800,800)),_f=objj_msgSend(_toolbarController,"view"),_10=CGRectGetHeight(objj_msgSend(_f,"frame")),_11=objj_msgSend(objj_msgSend(MMAlbumDetailView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_f,"setFrame:",CGRectMake(0,CGRectGetHeight(objj_msgSend(_e,"frame"))-_10,CGRectGetWidth(objj_msgSend(_e,"frame")),_10));
objj_msgSend(_11,"setFrame:",CGRectMake(0,0,CGRectGetWidth(objj_msgSend(_e,"frame")),CGRectGetMinY(objj_msgSend(_f,"frame"))));
objj_msgSend(_11,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_f,"setAutoresizingMask:",CPViewMinYMargin|CPViewWidthSizable);
objj_msgSend(_11,"setDelegate:",_c);
objj_msgSend(_11,"bind:toObject:withKeyPath:options:","title",_c,"title",nil);
objj_msgSend(_11,"bind:toObject:withKeyPath:options:","year",_c,"content.year",nil);
objj_msgSend(_11,"bind:toObject:withKeyPath:options:","thumbImage",_c,"content.thumbImage",nil);
objj_msgSend(_toolbarController,"bind:toObject:withKeyPath:options:","content",_c,"content",nil);
objj_msgSend(_toolbarController,"bind:toObject:withKeyPath:options:","contentController",_c,"contentController",nil);
objj_msgSend(_e,"addSubview:",_11);
objj_msgSend(_e,"addSubview:",_f);
_childrenController=objj_msgSend(objj_msgSend(CPArrayController,"alloc"),"init");
_detailView=_11;
objj_msgSend(_c,"setView:",_e);
}
}),new objj_method(sel_getUid("title"),function(_12,_13){
with(_12){
return objj_msgSend(_content,"displayTitle");
}
}),new objj_method(sel_getUid("fullTitle"),function(_14,_15){
with(_14){
return objj_msgSend(CPString,"stringWithFormat:","%@: %@",objj_msgSend(objj_msgSend(_content,"parent"),"displayTitle"),objj_msgSend(_14,"title"));
}
}),new objj_method(sel_getUid("setContent:"),function(_16,_17,_18){
with(_16){
if(objj_msgSend(_content,"isEqual:",_18)){
return;
}
_content=_18;
objj_msgSend(_childrenController,"setContent:",[]);
switch(objj_msgSend(_content,"type")){
case MMLibraryMediaItemTypeAlbum:
objj_msgSend(_16,"view");
var _19=objj_msgSend(objj_msgSend(CPCollectionViewItem,"alloc"),"init"),_1a=objj_msgSend(objj_msgSend(MMAlbumTrackCell,"alloc"),"initWithFrame:",CGRectMake(0,0,CGRectGetWidth(objj_msgSend(_detailView,"frame")),96));
objj_msgSend(_19,"setView:",_1a);
objj_msgSend(_detailView,"setChildItemPrototype:",_19);
objj_msgSend(_detailView,"setChildrenController:",_childrenController);
objj_msgSend(_mediaItemDataSource,"refreshRecordsWithContextInfo:",_content);
break;
default:
objj_msgSend(_detailView,"setChildrenController:",nil);
break;
}
}
}),new objj_method(sel_getUid("dataSource:didReceiveRecords:contextInfo:"),function(_1b,_1c,_1d,_1e,_1f){
with(_1b){
if(!objj_msgSend(_1f,"isEqual:",_content)){
return;
}
objj_msgSend(_1b,"willChangeValueForKey:","status");
objj_msgSend(_childrenController,"setContent:",_1e);
objj_msgSend(_1b,"didChangeValueForKey:","status");
if(_wantedChildMediaItemId){
for(var i=0,_20=objj_msgSend(_1e,"count");i<_20;i++){
var _21=_1e[i];
if(objj_msgSend(_21,"id")==_wantedChildMediaItemId){
_wantedChildMediaItemId=nil;
var _22=objj_msgSend(objj_msgSend(MMEpisodeController,"alloc"),"init");
objj_msgSend(_22,"setContent:",_21);
objj_msgSend(_contentController,"pushViewController:animated:",_22,NO);
}
}
}
}
}),new objj_method(sel_getUid("willBePushedOntoContentController:"),function(_23,_24,_25){
with(_23){
objj_msgSend(_23,"willChangeValueForKey:","contentController");
_contentController=_25;
objj_msgSend(_23,"didChangeValueForKey:","contentController");
}
}),new objj_method(sel_getUid("wasPoppedOffContentController:"),function(_26,_27,_28){
with(_26){
objj_msgSend(_26,"willChangeValueForKey:","contentController");
_contentController=nil;
objj_msgSend(_26,"didChangeValueForKey:","contentController");
}
}),new objj_method(sel_getUid("status"),function(_29,_2a){
with(_29){
var _2b=objj_msgSend(objj_msgSend(_childrenController,"content"),"count");
if(_2b===nil){
return nil;
}
switch(_2b){
case 0:
return CPLocalizedString("no episodes","Status for list of episodes when there are none");
case 1:
return CPLocalizedString("1 episode","Status for list of episodes when there is one");
default:
return objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("%d episodes","Status for list of episodes when there is more than one"),_2b);
}
return nil;
}
}),new objj_method(sel_getUid("subtitle"),function(_2c,_2d){
with(_2c){
return objj_msgSend(_2c,"status");
}
}),new objj_method(sel_getUid("itemStatus"),function(_2e,_2f){
with(_2e){
var _30=objj_msgSend(objj_msgSend(_2e,"content"),"updatedAt");
if(!_30){
return nil;
}
return objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Last refreshed %@ at %@","Status label for media items"),objj_msgSend(_30,"relativeDate"),objj_msgSend(_30,"shortLocalTime"));
}
}),new objj_method(sel_getUid("location"),function(_31,_32){
with(_31){
return objj_msgSend(objj_msgSend(_31,"class"),"locationForSeason:",_content);
}
}),new objj_method(sel_getUid("mediaItemDetailView:didSelectChild:"),function(_33,_34,_35,_36){
with(_33){
var _37=nil;
switch(objj_msgSend(_36,"type")){
case MMLibraryMediaItemTypeSeason:
_37=MMEpisodeController;
break;
case MMLibraryMediaItemTypeArtist:
_37=MMAlbumController;
break;
}
objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"setLocation:",objj_msgSend(_37,"locationForMediaItem:",_36));
}
}),new objj_method(sel_getUid("wasPushedOntoContentController:"),function(_38,_39,_3a){
with(_38){
var _3b=objj_msgSend(_38,"location"),_3c=objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"formattedHash");
if(objj_msgSend(_3c,"isEqualToString:",_3b)){
return;
}
if(!objj_msgSend(_3c,"hasPrefix:",_3b)){
return;
}
var _3d=objj_msgSend(_3c,"substringFromIndex:",objj_msgSend(_3b,"length"));
if(!objj_msgSend(_3d,"hasPrefix:","/children/")){
return;
}
_3d=objj_msgSend(_3d,"substringFromIndex:",objj_msgSend("/children/","length"));
var _3e=objj_msgSend(_3d,"componentsSeparatedByString:","/");
_wantedChildMediaItemId=Number(objj_msgSend(_3e,"objectAtIndex:",0));
var _3f=objj_msgSend(_childrenController,"content");
for(var i=0,_40=objj_msgSend(_3f,"count");i<_40;i++){
var _41=_3f[i];
if(objj_msgSend(_41,"id")==_wantedChildMediaItemId){
_wantedChildMediaItemId=nil;
var _42=objj_msgSend(objj_msgSend(MMSeasonController,"alloc"),"init");
objj_msgSend(_42,"setContent:",_41);
objj_msgSend(_contentController,"pushViewController:animated:",_42,NO);
}
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("keyPathsForValuesAffectingTitle"),function(_43,_44){
with(_43){
return objj_msgSend(CPSet,"setWithObjects:","content","content.displayTitle");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingFullTitle"),function(_45,_46){
with(_45){
return objj_msgSend(CPSet,"setWithObjects:","title","content.parent","content.parent.displayTitle");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingItemStatus"),function(_47,_48){
with(_47){
return objj_msgSend(CPSet,"setWithObjects:","content","content.updatedAt");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingSubtitle"),function(_49,_4a){
with(_49){
return objj_msgSend(CPSet,"setWithObjects:","status");
}
}),new objj_method(sel_getUid("locationForSeason:"),function(_4b,_4c,_4d){
with(_4b){
return objj_msgSend(CPString,"stringWithFormat:","/sections/%@/media/%@/children/%@",objj_msgSend(objj_msgSend(_4d,"librarySection"),"id"),objj_msgSend(objj_msgSend(_4d,"parent"),"id"),objj_msgSend(_4d,"id"));
}
})]);
p;33;Controllers/MMContentController.jt;11535;@STATIC;1.0;I;25;AppKit/CPViewController.jI;24;AppKit/CPViewAnimation.ji;20;../Views/MMToolbar.jt;11431;
objj_executeFile("AppKit/CPViewController.j",NO);
objj_executeFile("AppKit/CPViewAnimation.j",NO);
objj_executeFile("../Views/MMToolbar.j",YES);
var _1=objj_allocateClassPair(CPViewController,"MMContentController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_viewControllers"),new objj_ivar("_status"),new objj_ivar("_navigationBar"),new objj_ivar("_links")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("status"),function(_3,_4){
with(_3){
return _status;
}
}),new objj_method(sel_getUid("setStatus:"),function(_5,_6,_7){
with(_5){
_status=_7;
}
}),new objj_method(sel_getUid("init"),function(_8,_9){
with(_8){
if(_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("MMContentController").super_class},"init")){
_viewControllers=objj_msgSend(CPArray,"array");
_links=objj_msgSend(CPArray,"array");
objj_msgSend(_8,"addObserver:forKeyPath:options:context:",_8,"currentController",CPKeyValueChangeNewKey,nil);
}
return _8;
}
}),new objj_method(sel_getUid("navigationBar"),function(_a,_b){
with(_a){
objj_msgSend(_a,"view");
return _navigationBar;
}
}),new objj_method(sel_getUid("loadView"),function(_c,_d){
with(_c){
var _e=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMakeZero()),_f=objj_msgSend(objj_msgSend(MMToolbar,"alloc"),"initWithFrame:",CGRectMake(0,-1,0,30));
objj_msgSend(_f,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_e,"addSubview:",_f);
objj_msgSend(_e,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
_navigationBar=_f;
objj_msgSend(_c,"setView:",_e);
}
}),new objj_method(sel_getUid("pushViewController:animated:"),function(_10,_11,_12,_13){
with(_10){
if(objj_msgSend(_12,"respondsToSelector:",sel_getUid("willBePushedOntoContentController:"))){
objj_msgSend(_12,"willBePushedOntoContentController:",_10);
}
if(objj_msgSend(_12,"respondsToSelector:",sel_getUid("willBeOrderedFrontByContentController:"))){
objj_msgSend(_12,"willBeOrderedFrontByContentController:",_10);
}
if(objj_msgSend(objj_msgSend(_10,"currentController"),"respondsToSelector:",sel_getUid("willBeOrderedBackByContentController:"))){
objj_msgSend(objj_msgSend(_10,"currentController"),"willBeOrderedBackByContentController:",_10);
}
objj_msgSend(_10,"willChangeValueForKey:","currentController");
objj_msgSend(_viewControllers,"addObject:",_12);
var _14=objj_msgSend(_12,"view");
if(objj_msgSend(_12,"respondsToSelector:",sel_getUid("prepareViewForContentController:"))){
objj_msgSend(_12,"prepareViewForContentController:",_10);
}else{
objj_msgSend(_14,"setFrame:",objj_msgSend(_10,"contentRect"));
objj_msgSend(_14,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
}
if(objj_msgSend(_12,"respondsToSelector:",sel_getUid("title"))){
objj_msgSend(_12,"addObserver:forKeyPath:options:context:",_10,"title",CPKeyValueChangeNewKey,nil);
}
objj_msgSend(_10,"synchronize");
if(_13){
var _15=_12,_16=objj_msgSend(_15,"view"),_17=objj_msgSend(_16,"frame"),_18=CGRectOffset(_17,0,CGRectGetHeight(_17));
objj_msgSend(_16,"setFrame:",_18);
objj_msgSend(objj_msgSend(_10,"view"),"addSubview:",_16);
var _19=objj_msgSend(objj_msgSend(CPViewAnimation,"alloc"),"initWithViewAnimations:",objj_msgSend(CPArray,"arrayWithObjects:",objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_16,CPViewAnimationTargetKey,_18,CPViewAnimationStartFrameKey,_17,CPViewAnimationEndFrameKey)));
objj_msgSend(_19,"setDuration:",0.25);
objj_msgSend(_19,"setAnimationCurve:",CPAnimationEaseIn);
objj_msgSend(_19,"startAnimation");
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",0.25,_10,sel_getUid("viewControllerPushAnimationDidFinish:"),_15,NO);
}else{
objj_msgSend(objj_msgSend(_10,"view"),"addSubview:",_14);
if(objj_msgSend(_12,"respondsToSelector:",sel_getUid("wasPushedOntoContentController:"))){
objj_msgSend(_12,"wasPushedOntoContentController:",_10);
}
if(objj_msgSend(_12,"respondsToSelector:",sel_getUid("wasOrderedFrontByContentController:"))){
objj_msgSend(_12,"wasOrderedFrontByContentController:",_10);
}
objj_msgSend(_10,"didChangeValueForKey:","currentController");
}
}
}),new objj_method(sel_getUid("contentRect"),function(_1a,_1b){
with(_1a){
return CGRectMake(0,CGRectGetMaxY(objj_msgSend(_navigationBar,"frame")),CGRectGetWidth(objj_msgSend(objj_msgSend(_1a,"view"),"frame")),CGRectGetHeight(objj_msgSend(objj_msgSend(_1a,"view"),"frame"))-CGRectGetHeight(objj_msgSend(_navigationBar,"frame")));
}
}),new objj_method(sel_getUid("popViewControllerAnimated:"),function(_1c,_1d,_1e){
with(_1c){
if(objj_msgSend(_viewControllers,"count")<=1){
return;
}
objj_msgSend(_1c,"popToViewController:animated:",objj_msgSend(_viewControllers,"objectAtIndex:",objj_msgSend(_viewControllers,"count")-2),_1e);
}
}),new objj_method(sel_getUid("popToViewController:animated:"),function(_1f,_20,_21,_22){
with(_1f){
var _23=objj_msgSend(_viewControllers,"indexOfObject:",_21);
if(_23==CPNotFound||(_23==objj_msgSend(_viewControllers,"count")-1)){
return;
}
objj_msgSend(_1f,"willChangeValueForKey:","currentController");
if(objj_msgSend(_21,"respondsToSelector:",sel_getUid("willBeOrderedFrontByContentController:"))){
objj_msgSend(_21,"willBeOrderedFrontByContentController:",_1f);
}
var _24=_23+1,_25=objj_msgSend(_viewControllers,"count")-(_22?2:1);
for(var i=_25;i>=_24;i--){
var _26=_viewControllers[i];
if(objj_msgSend(_21,"respondsToSelector:",sel_getUid("willBePoppedOffContentController:"))){
objj_msgSend(_21,"willBePoppedOffContentController:",_1f);
}
if(objj_msgSend(_26,"respondsToSelector:",sel_getUid("title"))){
objj_msgSend(_26,"removeObserver:forKeyPath:",_1f,"title");
}
objj_msgSend(objj_msgSend(_26,"view"),"removeFromSuperview");
if(objj_msgSend(_21,"respondsToSelector:",sel_getUid("wasPoppedOffContentController:"))){
objj_msgSend(_21,"wasPoppedOffContentController:",_1f);
}
}
objj_msgSend(_viewControllers,"removeObjectsInRange:",CPMakeRange(_24,_25-_24+1));
if(_22){
var _27=objj_msgSend(_1f,"currentController"),_28=objj_msgSend(_27,"view");
if(objj_msgSend(_21,"respondsToSelector:",sel_getUid("willBePoppedOffContentController:"))){
objj_msgSend(_21,"willBePoppedOffContentController:",_1f);
}
if(objj_msgSend(_26,"respondsToSelector:",sel_getUid("title"))){
objj_msgSend(_26,"removeObserver:forKeyPath:",_1f,"title");
}
objj_msgSend(_viewControllers,"removeLastObject");
var _29=objj_msgSend(objj_msgSend(CPViewAnimation,"alloc"),"initWithViewAnimations:",objj_msgSend(CPArray,"arrayWithObjects:",objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_28,CPViewAnimationTargetKey,objj_msgSend(_28,"frame"),CPViewAnimationStartFrameKey,CGRectOffset(objj_msgSend(_28,"frame"),0,CGRectGetHeight(objj_msgSend(_28,"frame"))),CPViewAnimationEndFrameKey)));
objj_msgSend(_29,"setDuration:",0.25);
objj_msgSend(_29,"setAnimationCurve:",CPAnimationEaseIn);
objj_msgSend(_29,"startAnimation");
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",0.25,_1f,sel_getUid("viewControllerPopAnimationDidFinish:"),_27,NO);
}else{
if(objj_msgSend(_21,"respondsToSelector:",sel_getUid("wasOrderedFrontByContentController:"))){
objj_msgSend(_21,"wasOrderedFrontByContentController:",_1f);
}
objj_msgSend(_1f,"didChangeValueForKey:","currentController");
}
objj_msgSend(_1f,"synchronize");
}
}),new objj_method(sel_getUid("viewControllerPopAnimationDidFinish:"),function(_2a,_2b,_2c){
with(_2a){
var _2d=objj_msgSend(_2c,"userInfo");
objj_msgSend(objj_msgSend(_2d,"view"),"removeFromSuperview");
if(objj_msgSend(_2d,"respondsToSelector:",sel_getUid("wasPoppedOffContentController:"))){
objj_msgSend(_2d,"wasPoppedOffContentController:",_2a);
}
if(objj_msgSend(_2d,"respondsToSelector:",sel_getUid("wasOrderedFrontByContentController:"))){
objj_msgSend(_2d,"wasOrderedFrontByContentController:",_2a);
}
objj_msgSend(_2a,"didChangeValueForKey:","currentController");
}
}),new objj_method(sel_getUid("viewControllerPushAnimationDidFinish:"),function(_2e,_2f,_30){
with(_2e){
var _31=objj_msgSend(_30,"userInfo");
if(objj_msgSend(_31,"respondsToSelector:",sel_getUid("wasPushedOntoContentController:"))){
objj_msgSend(_31,"wasPushedOntoContentController:",_2e);
}
if(objj_msgSend(_31,"respondsToSelector:",sel_getUid("wasOrderedFrontByContentController:"))){
objj_msgSend(_31,"wasOrderedFrontByContentController:",_2e);
}
objj_msgSend(_2e,"didChangeValueForKey:","currentController");
}
}),new objj_method(sel_getUid("popToRootViewControllerAnimated:"),function(_32,_33,_34){
with(_32){
if(objj_msgSend(_viewControllers,"count")<=1){
return;
}
objj_msgSend(_32,"popToViewController:animated:",_viewControllers[0],_34);
}
}),new objj_method(sel_getUid("currentController"),function(_35,_36){
with(_35){
return objj_msgSend(_viewControllers,"lastObject");
}
}),new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"),function(_37,_38,_39,_3a,_3b,_3c){
with(_37){
if(_39=="title"&&objj_msgSend(_viewControllers,"containsObject:",_3a)){
objj_msgSend(_37,"synchronize");
}else{
if(_39=="currentController"&&_3a==_37){
var _3d=objj_msgSend(_37,"currentController");
if(objj_msgSend(_3d,"respondsToSelector:",sel_getUid("status"))){
objj_msgSend(_37,"bind:toObject:withKeyPath:options:","status",_3d,"status",nil);
}else{
objj_msgSend(_37,"unbind:","status");
objj_msgSend(_37,"setStatus:",nil);
}
}
}
}
}),new objj_method(sel_getUid("synchronize"),function(_3e,_3f){
with(_3e){
var _40=objj_msgSend(CPFont,"boldSystemFontOfSize:",12),_41=objj_msgSend("  ","sizeWithFont:",_40).width,_42=15,_43=[];
for(var i=0,_44=objj_msgSend(_viewControllers,"count");i<_44;i++){
var _45=_viewControllers[i];
if(!objj_msgSend(_45,"respondsToSelector:",sel_getUid("isNavigable"))||objj_msgSend(_45,"isNavigable")){
objj_msgSend(_43,"addObject:",_45);
}
}
for(var i=0,_44=objj_msgSend(_43,"count");i<_44;i++){
var _45=_43[i],_46,_47=(objj_msgSend(_45,"respondsToSelector:",sel_getUid("title"))&&objj_msgSend(_45,"title"))||"";
if(i<objj_msgSend(_links,"count")){
_46=objj_msgSend(_links,"objectAtIndex:",i);
}else{
_46=objj_msgSend(objj_msgSend(LPAnchorButton,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_46,"setFont:",_40);
objj_msgSend(_46,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(_links,"addObject:",_46);
_46._MMViewWithToolbar_index=i;
objj_msgSend(_46,"setTarget:",_3e);
objj_msgSend(_46,"setAction:",sel_getUid("navigate:"));
objj_msgSend(_navigationBar,"addSubview:",_46);
}
objj_msgSend(_46,"setTitle:",_47+(i+1<_44?"  »":""));
objj_msgSend(_46,"sizeToFit");
objj_msgSend(_46,"setFrameOrigin:",CGPointMake(_42,(CGRectGetHeight(objj_msgSend(_navigationBar,"frame"))-CGRectGetHeight(objj_msgSend(_46,"frame")))/2));
_42=CGRectGetMaxX(objj_msgSend(_46,"frame"))+_41;
objj_msgSend(_46,"setHidden:",NO);
}
for(var i=objj_msgSend(_viewControllers,"count");i<objj_msgSend(_links,"count");i++){
objj_msgSend(_links[i],"unbind:",CPValueBinding);
objj_msgSend(_links[i],"setHidden:",YES);
}
}
}),new objj_method(sel_getUid("navigate:"),function(_48,_49,_4a){
with(_48){
var _4b=objj_msgSend(_viewControllers,"objectAtIndex:",_4a._MMViewWithToolbar_index);
if(objj_msgSend(_4b,"respondsToSelector:",sel_getUid("location"))){
objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"setLocation:",objj_msgSend(_4b,"location"));
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("keyPathsForValuesAffectingStatus"),function(_4c,_4d){
with(_4c){
return objj_msgSend(CPSet,"setWithObject:","currentController");
}
})]);
p;33;Controllers/MMEpisodeController.jt;2404;@STATIC;1.0;i;23;MMMediaItemController.jt;2357;
objj_executeFile("MMMediaItemController.j",YES);
var _1=objj_allocateClassPair(MMMediaItemController,"MMEpisodeController"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("loadView"),function(_3,_4){
with(_3){
objj_msgSendSuper({receiver:_3,super_class:objj_getClass("MMEpisodeController").super_class},"loadView");
objj_msgSend(_detailView,"bind:toObject:withKeyPath:options:","title",_3,"titleWithShow",nil);
}
}),new objj_method(sel_getUid("title"),function(_5,_6){
with(_5){
return objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Episode %d: %@","Full episode title (e.g. Episode 1: Pilot"),objj_msgSend(objj_msgSend(_5,"content"),"index"),objj_msgSend(objj_msgSend(_5,"content"),"displayTitle"));
}
}),new objj_method(sel_getUid("subtitle"),function(_7,_8){
with(_7){
return objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("%@, Episode %d","Season plus full episode title (e.g. Season 4, Episode 1"),objj_msgSend(objj_msgSend(objj_msgSend(_7,"content"),"parent"),"displayTitle"),objj_msgSend(objj_msgSend(_7,"content"),"index"));
}
}),new objj_method(sel_getUid("titleWithShow"),function(_9,_a){
with(_9){
return objj_msgSend(CPString,"stringWithFormat:","%@: %@",objj_msgSend(objj_msgSend(objj_msgSend(_9,"content"),"root"),"displayTitle"),objj_msgSend(objj_msgSend(_9,"content"),"displayTitle"));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("keyPathsForValuesAffectingTitle"),function(_b,_c){
with(_b){
return objj_msgSend(CPSet,"setWithObjects:","content","content.index","content.displayTitle");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingSubtitle"),function(_d,_e){
with(_d){
return objj_msgSend(CPSet,"setWithObjects:","content","content.parent.displayTitle","content.index");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingTitleWithShow"),function(_f,_10){
with(_f){
return objj_msgSend(CPSet,"setWithObjects:","content","content.displayTitle","content.root.displayTitle");
}
}),new objj_method(sel_getUid("locationForMediaItem:"),function(_11,_12,_13){
with(_11){
return objj_msgSend(CPString,"stringWithFormat:","/sections/%@/media/%@/children/%@/children/%@",objj_msgSend(objj_msgSend(_13,"librarySection"),"id"),objj_msgSend(objj_msgSend(_13,"root"),"id"),objj_msgSend(objj_msgSend(_13,"parent"),"id"),objj_msgSend(_13,"id"));
}
})]);
p;37;Controllers/MMImagePickerController.jt;15135;@STATIC;1.0;I;33;Foundation/CPNotificationCenter.jI;25;AppKit/CPViewController.ji;34;../Controllers/MMScrollAnimation.ji;27;../Models/MMMetadataImage.ji;40;../CPValueTransformer+FunctionCallback.ji;27;../Views/MMCollectionView.ji;28;../Views/MMImagePickerCell.ji;25;../Views/MMScrollButton.ji;20;../Views/MMToolbar.ji;20;../Views/HUDButton.jt;14786;
objj_executeFile("Foundation/CPNotificationCenter.j",NO);
objj_executeFile("AppKit/CPViewController.j",NO);
objj_executeFile("../Controllers/MMScrollAnimation.j",YES);
objj_executeFile("../Models/MMMetadataImage.j",YES);
objj_executeFile("../CPValueTransformer+FunctionCallback.j",YES);
objj_executeFile("../Views/MMCollectionView.j",YES);
objj_executeFile("../Views/MMImagePickerCell.j",YES);
objj_executeFile("../Views/MMScrollButton.j",YES);
objj_executeFile("../Views/MMToolbar.j",YES);
objj_executeFile("../Views/HUDButton.j",YES);
var _1=objj_allocateClassPair(CPViewController,"MMImagePickerController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_delegate"),new objj_ivar("_mediaItem"),new objj_ivar("_imagesController"),new objj_ivar("_dataSource"),new objj_ivar("_imageGridView"),new objj_ivar("_itemSize"),new objj_ivar("_previewImageView"),new objj_ivar("_scrollView"),new objj_ivar("_contentController"),new objj_ivar("_scrollLeftButton"),new objj_ivar("_scrollRightButton"),new objj_ivar("_scrollAnimation")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("delegate"),function(_3,_4){
with(_3){
return _delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_5,_6,_7){
with(_5){
_delegate=_7;
}
}),new objj_method(sel_getUid("mediaItem"),function(_8,_9){
with(_8){
return _mediaItem;
}
}),new objj_method(sel_getUid("setMediaItem:"),function(_a,_b,_c){
with(_a){
_mediaItem=_c;
}
}),new objj_method(sel_getUid("dataSource"),function(_d,_e){
with(_d){
return _dataSource;
}
}),new objj_method(sel_getUid("setDataSource:"),function(_f,_10,_11){
with(_f){
_dataSource=_11;
}
}),new objj_method(sel_getUid("imageGridView"),function(_12,_13){
with(_12){
return _imageGridView;
}
}),new objj_method(sel_getUid("itemSize"),function(_14,_15){
with(_14){
return _itemSize;
}
}),new objj_method(sel_getUid("setItemSize:"),function(_16,_17,_18){
with(_16){
_itemSize=_18;
}
}),new objj_method(sel_getUid("previewImageView"),function(_19,_1a){
with(_19){
return _previewImageView;
}
}),new objj_method(sel_getUid("setPreviewImageView:"),function(_1b,_1c,_1d){
with(_1b){
_previewImageView=_1d;
}
}),new objj_method(sel_getUid("init"),function(_1e,_1f){
with(_1e){
if(_1e=objj_msgSendSuper({receiver:_1e,super_class:objj_getClass("MMImagePickerController").super_class},"init")){
_imagesController=objj_msgSend(objj_msgSend(CPArrayController,"alloc"),"init");
}
return _1e;
}
}),new objj_method(sel_getUid("initWithDelegate:"),function(_20,_21,_22){
with(_20){
if(_20=objj_msgSend(_20,"init")){
_delegate=_22;
}
return _20;
}
}),new objj_method(sel_getUid("setMediaItem:"),function(_23,_24,_25){
with(_23){
if(objj_msgSend(_mediaItem,"isEqual:",_25)){
return;
}
_mediaItem=_25;
objj_msgSend(_23,"refreshImagesFromDataSource");
}
}),new objj_method(sel_getUid("setDataSource:"),function(_26,_27,_28){
with(_26){
if(_dataSource==_28){
return;
}
objj_msgSend(_dataSource,"removeArrayController:",_imagesController);
if(_dataSource){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_26,MMDataSourceDidFailToReceiveRecords,_dataSource);
}
_dataSource=_28;
objj_msgSend(_dataSource,"addArrayController:",_imagesController);
if(_dataSource){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_26,sel_getUid("_didFailToReceiveRecords:"),MMDataSourceDidFailToReceiveRecords,_dataSource);
}
objj_msgSend(_26,"refreshImagesFromDataSource");
}
}),new objj_method(sel_getUid("_didFailToReceiveRecords:"),function(_29,_2a,_2b){
with(_29){
objj_msgSend(AppController,"notifyUserOfConnectionError:",objj_msgSend(objj_msgSend(_2b,"userInfo"),"objectForKey:","error"));
}
}),new objj_method(sel_getUid("refreshImagesFromDataSource"),function(_2c,_2d){
with(_2c){
if(_mediaItem){
objj_msgSend(_dataSource,"refreshRecordsWithContextInfo:",_mediaItem);
}
}
}),new objj_method(sel_getUid("willBePushedOntoContentController:"),function(_2e,_2f,_30){
with(_2e){
_contentController=_30;
}
}),new objj_method(sel_getUid("wasPushedOntoContentController:"),function(_31,_32,_33){
with(_31){
objj_msgSend(_imageGridView,"notifySubviewsOfVisibility");
}
}),new objj_method(sel_getUid("wasPoppedOffContentController:"),function(_34,_35,_36){
with(_34){
_contentController=nil;
}
}),new objj_method(sel_getUid("viewDidMoveToSuperview"),function(_37,_38){
with(_37){
objj_msgSendSuper({receiver:_37,super_class:objj_getClass("MMImagePickerController").super_class},"viewDidMoveToSuperview");
objj_msgSend(objj_msgSend(objj_msgSend(_37,"view"),"window"),"makeFirstResponder:",_imageGridView);
}
}),new objj_method(sel_getUid("isNavigable"),function(_39,_3a){
with(_39){
return NO;
}
}),new objj_method(sel_getUid("dismissPicker"),function(_3b,_3c){
with(_3b){
var _3d=objj_msgSend(objj_msgSend(CPViewAnimation,"alloc"),"initWithViewAnimations:",objj_msgSend(CPArray,"arrayWithObjects:",objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(_3b,"view"),CPViewAnimationTargetKey,objj_msgSend(objj_msgSend(_3b,"view"),"frame"),CPViewAnimationStartFrameKey,CGRectOffset(objj_msgSend(objj_msgSend(_3b,"view"),"frame"),0,CGRectGetHeight(objj_msgSend(objj_msgSend(_3b,"view"),"frame"))),CPViewAnimationEndFrameKey)));
objj_msgSend(_3d,"setDuration:",0.25);
objj_msgSend(_3d,"setAnimationCurve:",CPAnimationEaseIn);
objj_msgSend(_3d,"startAnimation");
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:callback:repeats:",0.25,function(){
objj_msgSend(objj_msgSend(_3b,"view"),"removeFromSuperview");
},NO);
}
}),new objj_method(sel_getUid("prepareViewForContentController:"),function(_3e,_3f,_40){
with(_3e){
var _41=objj_msgSend(_3e,"view"),_42=objj_msgSend(_40,"contentRect"),_43=CGRectGetHeight(objj_msgSend(_41,"frame"));
objj_msgSend(_41,"setAutoresizingMask:",CPViewWidthSizable|CPViewMinYMargin);
objj_msgSend(_41,"setFrame:",CGRectMake(CGRectGetMinX(_42),CGRectGetMaxY(_42)-_43,CGRectGetWidth(_42),_43));
}
}),new objj_method(sel_getUid("loadView"),function(_44,_45){
with(_44){
var _46=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,800,800)),_47=30;
_scrollView=objj_msgSend(objj_msgSend(MMScrollView,"alloc"),"initWithFrame:",CGRectMake(0,0,CGRectGetWidth(objj_msgSend(_46,"frame")),CGRectGetHeight(objj_msgSend(_46,"frame"))-_47));
_imageGridView=objj_msgSend(objj_msgSend(MMCollectionView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_46,"addSubview:",_scrollView);
objj_msgSend(objj_msgSend(_scrollView,"contentView"),"setInsetShadowAlignment:",MMClipViewInsetShadowAlignTop);
objj_msgSend(objj_msgSend(_scrollView,"contentView"),"setBackgroundColor:",objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",50/255,1));
objj_msgSend(_scrollView,"setDocumentView:",_imageGridView);
objj_msgSend(_scrollView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_scrollView,"setHasVerticalScroller:",NO);
objj_msgSend(_scrollView,"setHasHorizontalScroller:",NO);
objj_msgSend(_scrollView,"addObserver:forKeyPath:options:context:",_44,"scrollPoint",CPKeyValueChangeNewKey,nil);
var _48=objj_msgSend(objj_msgSend(CPCollectionViewItem,"alloc"),"init");
objj_msgSend(_48,"setView:",objj_msgSend(objj_msgSend(MMImagePickerCell,"alloc"),"initWithFrame:",{origin:CGPointMake(0,0),size:_itemSize}));
objj_msgSend(_imageGridView,"setDelegate:",_44);
objj_msgSend(_imageGridView,"setItemPrototype:",_48);
objj_msgSend(_imageGridView,"setMinItemSize:",_itemSize);
objj_msgSend(_imageGridView,"setMaxItemSize:",_itemSize);
objj_msgSend(_imageGridView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_imageGridView,"bind:toObject:withKeyPath:options:","selectionIndexes",_imagesController,"selectionIndexes",nil);
objj_msgSend(_44,"bind:toObject:withKeyPath:options:","content",_imagesController,"arrangedObjects",nil);
objj_msgSend(_44,"bind:toObject:withKeyPath:options:","selectionIndexes",_imagesController,"selectionIndexes",nil);
objj_msgSend(_46,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_46,"frame")),CGRectGetHeight(objj_msgSend(objj_msgSend(_48,"view"),"frame"))+(2*objj_msgSend(_imageGridView,"verticalMargin"))+_47));
var _49=objj_msgSend(objj_msgSend(MMToolbar,"alloc"),"initWithFrame:style:",CGRectMake(0,CGRectGetMaxY(objj_msgSend(_scrollView,"frame")),CGRectGetWidth(objj_msgSend(_scrollView,"frame")),30),MMToolbarHUDStyle);
objj_msgSend(_49,"setAutoresizingMask:",CPViewWidthSizable|CPViewMinYMargin);
objj_msgSend(_46,"addSubview:",_49);
var _4a=objj_msgSend(HUDButton,"buttonWithTitle:",CPLocalizedString("Select Image","Select Image"));
objj_msgSend(_4a,"setFrameOrigin:",CGPointMake(CGRectGetWidth(objj_msgSend(_49,"frame"))-5-CGRectGetWidth(objj_msgSend(_4a,"frame")),(CGRectGetHeight(objj_msgSend(_49,"frame"))-CGRectGetHeight(objj_msgSend(_4a,"frame")))/2));
objj_msgSend(_4a,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin|CPViewMinXMargin);
objj_msgSend(_4a,"setTarget:",_44);
objj_msgSend(_4a,"setAction:",sel_getUid("chooseImage:"));
objj_msgSend(_4a,"setKeyEquivalent:",CPCarriageReturnCharacter);
objj_msgSend(_4a,"bind:toObject:withKeyPath:options:","enabled",_imagesController,"selectionIndexes",objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(CPValueTransformer,"valueTransformerForFunction:",function(_4b){
return objj_msgSend(_4b,"count")>0;
}),CPValueTransformerBindingOption));
objj_msgSend(_49,"addSubview:",_4a);
var _4c=objj_msgSend(HUDButton,"buttonWithTitle:",CPLocalizedString("Cancel","Cancel"));
objj_msgSend(_4c,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_4a,"frame"))-5-CGRectGetWidth(objj_msgSend(_4c,"frame")),CGRectGetMinY(objj_msgSend(_4a,"frame"))));
objj_msgSend(_4c,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin|CPViewMinXMargin);
objj_msgSend(_4c,"setAutoresizingMask:",objj_msgSend(_4a,"autoresizingMask"));
objj_msgSend(_4c,"setTarget:",_44);
objj_msgSend(_4c,"setAction:",sel_getUid("cancel:"));
objj_msgSend(_4c,"setKeyEquivalent:",CPEscapeFunctionKey);
objj_msgSend(_49,"addSubview:",_4c);
_scrollLeftButton=objj_msgSend(MMScrollButton,"leftScrollButton");
_scrollRightButton=objj_msgSend(MMScrollButton,"rightScrollButton");
objj_msgSend(_scrollLeftButton,"setFrame:",CGRectMake(0,0,CGRectGetWidth(objj_msgSend(_scrollLeftButton,"frame")),CGRectGetHeight(objj_msgSend(_scrollView,"frame"))));
objj_msgSend(_scrollRightButton,"setFrame:",CGRectMake(CGRectGetWidth(objj_msgSend(_scrollView,"frame"))-CGRectGetWidth(objj_msgSend(_scrollRightButton,"frame")),0,CGRectGetWidth(objj_msgSend(_scrollRightButton,"frame")),CGRectGetHeight(objj_msgSend(_scrollView,"frame"))));
objj_msgSend(_scrollLeftButton,"setAutoresizingMask:",CPViewMaxXMargin|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_scrollRightButton,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_scrollLeftButton,"setTarget:",_44);
objj_msgSend(_scrollLeftButton,"setAction:",sel_getUid("scrollLeft:"));
objj_msgSend(_scrollRightButton,"setTarget:",_44);
objj_msgSend(_scrollRightButton,"setAction:",sel_getUid("scrollRight:"));
objj_msgSend(_46,"addSubview:",_scrollLeftButton);
objj_msgSend(_46,"addSubview:",_scrollRightButton);
objj_msgSend(_44,"setView:",_46);
}
}),new objj_method(sel_getUid("scrollLeft:"),function(_4d,_4e,_4f){
with(_4d){
objj_msgSend(_scrollAnimation,"stopAnimation");
var _50=objj_msgSend(_scrollView,"contentView"),_51=objj_msgSend(_50,"bounds"),_52=MAX(0,CGRectGetMinX(_51)-CGRectGetWidth(_51)+40);
_scrollAnimation=objj_msgSend(objj_msgSend(MMScrollAnimation,"alloc"),"initWithView:toPoint:",_50,CGPointMake(_52,0));
objj_msgSend(_scrollAnimation,"startAnimation");
}
}),new objj_method(sel_getUid("scrollRight:"),function(_53,_54,_55){
with(_53){
objj_msgSend(_scrollAnimation,"stopAnimation");
var _56=objj_msgSend(_scrollView,"contentView"),_57=objj_msgSend(_56,"bounds"),_58=MIN(CGRectGetWidth(objj_msgSend(_imageGridView,"frame")),CGRectGetMinX(_57)+CGRectGetWidth(_57)-40);
_scrollAnimation=objj_msgSend(objj_msgSend(MMScrollAnimation,"alloc"),"initWithView:toPoint:",_56,CGPointMake(_58,0));
objj_msgSend(_scrollAnimation,"startAnimation");
}
}),new objj_method(sel_getUid("showOrHideScrollButtons"),function(_59,_5a){
with(_59){
var _5b=objj_msgSend(objj_msgSend(_scrollView,"contentView"),"bounds"),_5c=0,_5d=CGRectGetWidth(objj_msgSend(_imageGridView,"frame"));
objj_msgSend(_scrollLeftButton,"setHidden:",(CGRectGetMinX(_5b)<=_5c));
objj_msgSend(_scrollRightButton,"setHidden:",(CGRectGetMaxX(_5b)>=_5d));
}
}),new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"),function(_5e,_5f,_60,_61,_62,_63){
with(_5e){
if(_61==_scrollView&&_60=="scrollPoint"){
objj_msgSend(_5e,"showOrHideScrollButtons");
}
}
}),new objj_method(sel_getUid("setContent:"),function(_64,_65,_66){
with(_64){
objj_msgSend(_imageGridView,"setContent:",_66);
objj_msgSend(_imageGridView,"sizeToFitNumberOfColumns:withHorizontalMargin:",objj_msgSend(_66,"count"),0);
objj_msgSend(_64,"showOrHideScrollButtons");
}
}),new objj_method(sel_getUid("setSelectionIndexes:"),function(_67,_68,_69){
with(_67){
var _6a=objj_msgSend(_imagesController,"selectedObjects");
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("imagePicker:didSelectThumbnailForImage:"))&&(objj_msgSend(_6a,"count")>0)){
objj_msgSend(_delegate,"imagePicker:didSelectThumbnailForImage:",_67,objj_msgSend(_6a,"objectAtIndex:",0));
}
}
}),new objj_method(sel_getUid("chooseImage:"),function(_6b,_6c,_6d){
with(_6b){
var _6e=objj_msgSend(_imagesController,"selectedObjects");
if(objj_msgSend(_6e,"count")==0){
return;
}
var _6f=objj_msgSend(_6e,"objectAtIndex:",0);
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("imagePicker:didChooseImage:"))){
objj_msgSend(_delegate,"imagePicker:didChooseImage:",_6b,_6f);
}
objj_msgSend(_6b,"_updateMediaItemWithMetadataImage:",_6f);
objj_msgSend(_6b,"dismissPicker");
}
}),new objj_method(sel_getUid("collectionView:didDoubleClickOnItemAtIndex:"),function(_70,_71,_72,_73){
with(_70){
var _74=objj_msgSend(objj_msgSend(_72,"content"),"objectAtIndex:",_73);
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("imagePicker:didChooseImage:"))){
objj_msgSend(_delegate,"imagePicker:didChooseImage:",_70,_74);
}
objj_msgSend(_70,"_updateMediaItemWithMetadataImage:",_74);
objj_msgSend(_70,"dismissPicker");
}
}),new objj_method(sel_getUid("_updateMediaItemWithMetadataImage:"),function(_75,_76,_77){
with(_75){
objj_msgSend(_dataSource,"selectMetadataImage:forMediaItem:",_77,_mediaItem);
}
}),new objj_method(sel_getUid("cancel:"),function(_78,_79,_7a){
with(_78){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("imagePickerDidCancel:"))){
objj_msgSend(_delegate,"imagePickerDidCancel:",_78);
}
objj_msgSend(_contentController,"popViewControllerAnimated:",YES);
}
})]);
p;49;Controllers/MMLibrarySectionTableViewController.jt;9500;@STATIC;1.0;I;25;AppKit/CPViewController.jI;26;AppKit/CPArrayController.ji;28;../Models/MMLibrarySection.ji;44;../DataSources/MMLibrarySectionsDataSource.ji;29;../Views/MMSpinnerTableCell.ji;31;../Views/MMMediaTypeTableCell.jt;9268;
objj_executeFile("AppKit/CPViewController.j",NO);
objj_executeFile("AppKit/CPArrayController.j",NO);
objj_executeFile("../Models/MMLibrarySection.j",YES);
objj_executeFile("../DataSources/MMLibrarySectionsDataSource.j",YES);
objj_executeFile("../Views/MMSpinnerTableCell.j",YES);
objj_executeFile("../Views/MMMediaTypeTableCell.j",YES);
var _1=objj_allocateClassPair(CPViewController,"MMLibrarySectionTableViewController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_delegate"),new objj_ivar("_dataSource"),new objj_ivar("_librarySections"),new objj_ivar("_librarySectionsController"),new objj_ivar("_hasLoadedSections"),new objj_ivar("_suppressSelectionChangeNotification"),new objj_ivar("_selectedLibrarySection"),new objj_ivar("_desiredLibrarySectionIdSelection")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("delegate"),function(_3,_4){
with(_3){
return _delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_5,_6,_7){
with(_5){
_delegate=_7;
}
}),new objj_method(sel_getUid("dataSource"),function(_8,_9){
with(_8){
return _dataSource;
}
}),new objj_method(sel_getUid("setDataSource:"),function(_a,_b,_c){
with(_a){
_dataSource=_c;
}
}),new objj_method(sel_getUid("librarySections"),function(_d,_e){
with(_d){
return _librarySections;
}
}),new objj_method(sel_getUid("setLibrarySections:"),function(_f,_10,_11){
with(_f){
_librarySections=_11;
}
}),new objj_method(sel_getUid("librarySectionsController"),function(_12,_13){
with(_12){
return _librarySectionsController;
}
}),new objj_method(sel_getUid("hasLoadedSections"),function(_14,_15){
with(_14){
return _hasLoadedSections;
}
}),new objj_method(sel_getUid("initWithDelegate:"),function(_16,_17,_18){
with(_16){
return _16=objj_msgSend(_16,"initWithDelegate:dataSource:",_18,objj_msgSend(MMLibrarySectionsDataSource,"sharedDataSource"));
}
}),new objj_method(sel_getUid("initWithDelegate:dataSource:"),function(_19,_1a,_1b,_1c){
with(_19){
if(_19=objj_msgSend(_19,"init")){
objj_msgSend(_19,"setDelegate:",_1b);
objj_msgSend(_19,"setDataSource:",_1c);
}
return _19;
}
}),new objj_method(sel_getUid("setDataSource:"),function(_1d,_1e,_1f){
with(_1d){
var _20=objj_msgSend(CPNotificationCenter,"defaultCenter");
objj_msgSend(_20,"removeObserver:name:object:",_1d,MMDataSourceDidReceiveRecords,_dataSource);
objj_msgSend(_20,"removeObserver:name:object:",_1d,MMDataSourceDidCreateRecord,_dataSource);
objj_msgSend(_20,"removeObserver:name:object:",_1d,MMDataSourceDidDeleteRecord,_dataSource);
_dataSource=_1f;
objj_msgSend(_20,"addObserver:selector:name:object:",_1d,sel_getUid("_dataSourceDidReceiveRecords:"),MMDataSourceDidReceiveRecords,_dataSource);
objj_msgSend(_20,"addObserver:selector:name:object:",_1d,sel_getUid("_dataSourceDidCreateRecord:"),MMDataSourceDidCreateRecord,_dataSource);
objj_msgSend(_20,"addObserver:selector:name:object:",_1d,sel_getUid("_dataSourceDidDeleteRecord:"),MMDataSourceDidDeleteRecord,_dataSource);
objj_msgSend(_20,"addObserver:selector:name:object:",_1d,sel_getUid("_dataSourceDidUpdateRecord:"),MMDataSourceDidUpdateRecord,_dataSource);
}
}),new objj_method(sel_getUid("selectedLibrarySection"),function(_21,_22){
with(_21){
var _23=objj_msgSend(objj_msgSend(_21,"view"),"selectedRow");
if(_23==CPNotFound){
return nil;
}
if(_23>=objj_msgSend(objj_msgSend(_librarySectionsController,"content"),"count")){
return nil;
}
return objj_msgSend(objj_msgSend(_librarySectionsController,"content"),"objectAtIndex:",_23);
}
}),new objj_method(sel_getUid("selectSectionWithId:"),function(_24,_25,_26){
with(_24){
var _27=objj_msgSend(objj_msgSend(_librarySectionsController,"content"),"objectEnumerator"),_28=null;
while(_28=objj_msgSend(_27,"nextObject")){
if(objj_msgSend(objj_msgSend(_28,"id"),"isEqual:",_26)){
objj_msgSend(_librarySectionsController,"setSelectedObjects:",[_28]);
objj_msgSend(_librarySectionsController,"setAvoidsEmptySelection:",YES);
_desiredLibrarySectionIdSelection=nil;
return;
}
}
_desiredLibrarySectionIdSelection=_26;
objj_msgSend(_librarySectionsController,"setAvoidsEmptySelection:",NO);
CPLog.debug("[%@ selectSectionWithId:] saving %@ for later",objj_msgSend(_24,"class"),_26);
}
}),new objj_method(sel_getUid("_dataSourceDidReceiveRecords:"),function(_29,_2a,_2b){
with(_29){
objj_msgSend(_29,"willChangeValueForKey:","hasLoadedSections");
_hasLoadedSections=YES;
objj_msgSend(_29,"didChangeValueForKey:","hasLoadedSections");
var _2c=objj_msgSend(objj_msgSend(_2b,"userInfo"),"objectForKey:","records");
if(objj_msgSend(_2c,"count")==0){
objj_msgSend(_29,"willChangeValueForKey:","selectedLibrarySection");
objj_msgSend(_29,"didChangeValueForKey:","selectedLibrarySection");
}
if(!objj_msgSend(_2c,"isEqual:",objj_msgSend(_librarySectionsController,"content"))){
objj_msgSend(_librarySectionsController,"setContent:",_2c);
}
if(_desiredLibrarySectionIdSelection){
CPLog.debug("[%@ _dataSourceDidReceiveRecords:] attempting to restore desired id=%@",objj_msgSend(_29,"class"),_desiredLibrarySectionIdSelection);
objj_msgSend(_29,"selectSectionWithId:",_desiredLibrarySectionIdSelection);
}
}
}),new objj_method(sel_getUid("_dataSourceDidCreateRecord:"),function(_2d,_2e,_2f){
with(_2d){
objj_msgSend(_librarySectionsController,"addObject:",objj_msgSend(objj_msgSend(_2f,"userInfo"),"objectForKey:","record"));
objj_msgSend(_dataSource,"refreshRecords");
}
}),new objj_method(sel_getUid("_dataSourceDidDeleteRecord:"),function(_30,_31,_32){
with(_30){
objj_msgSend(_librarySectionsController,"removeObject:",objj_msgSend(objj_msgSend(_32,"userInfo"),"objectForKey:","record"));
objj_msgSend(_dataSource,"refreshRecords");
}
}),new objj_method(sel_getUid("_dataSourceDidUpdateRecord:"),function(_33,_34,_35){
with(_33){
_suppressSelectionChangeNotification=YES;
objj_msgSend(_dataSource,"refreshRecords");
}
}),new objj_method(sel_getUid("loadView"),function(_36,_37){
with(_36){
_librarySectionsController=objj_msgSend(objj_msgSend(CPArrayController,"alloc"),"init");
objj_msgSend(_librarySectionsController,"setPreservesSelection:",YES);
objj_msgSend(_librarySectionsController,"setAvoidsEmptySelection:",YES);
objj_msgSend(_librarySectionsController,"setSelectsInsertedObjects:",YES);
objj_msgSend(_librarySectionsController,"setSortDescriptors:",objj_msgSend(CPArray,"arrayWithObject:",objj_msgSend(CPSortDescriptor,"sortDescriptorWithKey:ascending:","title",YES)));
var _38=objj_msgSend(objj_msgSend(CPTableView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_38,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",222/255,228/255,234/255,1));
objj_msgSend(_38,"bind:toObject:withKeyPath:options:","content",_librarySectionsController,"arrangedObjects",nil);
objj_msgSend(_38,"bind:toObject:withKeyPath:options:","selectionIndexes",_librarySectionsController,"selectionIndexes",nil);
objj_msgSend(_38,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_38,"setDelegate:",_36);
objj_msgSend(_38,"setTarget:",_36);
objj_msgSend(_38,"setDoubleAction:",sel_getUid("tableViewRowWasDoubleClicked:"));
objj_msgSend(_38,"setAllowsEmptySelection:",NO);
objj_msgSend(_38,"setHeaderView:",nil);
objj_msgSend(_38,"setCornerView:",nil);
var _39=objj_msgSend(objj_msgSend(CPTableColumn,"alloc"),"initWithIdentifier:","type");
objj_msgSend(_39,"setWidth:",30);
objj_msgSend(_39,"bind:toObject:withKeyPath:options:",CPValueBinding,_librarySectionsController,"arrangedObjects.type",nil);
objj_msgSend(_39,"setDataView:",objj_msgSend(MMMediaTypeTableCell,"new"));
objj_msgSend(_38,"addTableColumn:",_39);
var _3a=objj_msgSend(objj_msgSend(CPTableColumn,"alloc"),"initWithIdentifier:","title");
objj_msgSend(_3a,"setWidth:",140);
objj_msgSend(_3a,"bind:toObject:withKeyPath:options:",CPValueBinding,_librarySectionsController,"arrangedObjects.title",nil);
objj_msgSend(_38,"addTableColumn:",_3a);
var _3b=objj_msgSend(objj_msgSend(CPTableColumn,"alloc"),"initWithIdentifier:","refreshing");
objj_msgSend(_3b,"setWidth:",20);
objj_msgSend(_3b,"bind:toObject:withKeyPath:options:",CPValueBinding,_librarySectionsController,"arrangedObjects.refreshing",nil);
objj_msgSend(_3b,"setDataView:",objj_msgSend(MMSpinnerTableCell,"new"));
objj_msgSend(_38,"addTableColumn:",_3b);
objj_msgSend(_36,"setView:",_38);
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",6,_36,sel_getUid("_reloadLibrarySections"),nil,YES);
objj_msgSend(_36,"_reloadLibrarySections");
}
}),new objj_method(sel_getUid("_reloadLibrarySections"),function(_3c,_3d){
with(_3c){
objj_msgSend(_dataSource,"refreshRecords");
}
}),new objj_method(sel_getUid("tableViewRowWasDoubleClicked:"),function(_3e,_3f,_40){
with(_3e){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("librarySectionWasActivated:"))){
var _41=objj_msgSend(_40,"clickedRow");
if(objj_msgSend(objj_msgSend(_librarySectionsController,"content"),"count")>_41&&_41>=0){
objj_msgSend(_delegate,"librarySectionWasActivated:",objj_msgSend(objj_msgSend(_librarySectionsController,"content"),"objectAtIndex:",objj_msgSend(_40,"clickedRow")));
}
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("keyPathsForValuesAffectingSelectedLibrarySection"),function(_42,_43){
with(_42){
return objj_msgSend(CPSet,"setWithObject:","librarySectionsController.selectionIndex");
}
})]);
p;37;Controllers/MMMatchPickerController.jt;26725;@STATIC;1.0;I;20;Foundation/CPArray.jI;21;Foundation/CPString.jI;22;Foundation/CPRunLoop.jI;33;Foundation/CPNotificationCenter.jI;20;AppKit/CPAnimation.jI;22;AppKit/CPApplication.jI;17;AppKit/CPButton.jI;16;AppKit/CPImage.jI;22;AppKit/CPPopUpButton.jI;21;AppKit/CPScrollView.jI;20;AppKit/CPTableView.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;25;AppKit/CPViewController.ji;30;../Models/MMLibraryMediaItem.ji;41;../DataSources/MMMediaMatchesDataSource.ji;34;../DataSources/MMAgentDataSource.jt;26221;
objj_executeFile("Foundation/CPArray.j",NO);
objj_executeFile("Foundation/CPString.j",NO);
objj_executeFile("Foundation/CPRunLoop.j",NO);
objj_executeFile("Foundation/CPNotificationCenter.j",NO);
objj_executeFile("AppKit/CPAnimation.j",NO);
objj_executeFile("AppKit/CPApplication.j",NO);
objj_executeFile("AppKit/CPButton.j",NO);
objj_executeFile("AppKit/CPImage.j",NO);
objj_executeFile("AppKit/CPPopUpButton.j",NO);
objj_executeFile("AppKit/CPScrollView.j",NO);
objj_executeFile("AppKit/CPTableView.j",NO);
objj_executeFile("AppKit/CPTextField.j",NO);
objj_executeFile("AppKit/CPView.j",NO);
objj_executeFile("AppKit/CPViewController.j",NO);
objj_executeFile("../Models/MMLibraryMediaItem.j",YES);
objj_executeFile("../DataSources/MMMediaMatchesDataSource.j",YES);
objj_executeFile("../DataSources/MMAgentDataSource.j",YES);
var _1=objj_allocateClassPair(CPViewController,"MMMatchPickerController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_delegate"),new objj_ivar("_mediaItem"),new objj_ivar("_matchesDataSource"),new objj_ivar("_sheetPanel"),new objj_ivar("_resultView"),new objj_ivar("_descriptiveLabel"),new objj_ivar("_searchResults"),new objj_ivar("_matchesTableView"),new objj_ivar("_matchesScrollView"),new objj_ivar("_selectButton"),new objj_ivar("_cancelButton"),new objj_ivar("_searchButton"),new objj_ivar("_searchFormView"),new objj_ivar("_agentPopUp"),new objj_ivar("_languagePopUp"),new objj_ivar("_titleField"),new objj_ivar("_yearField"),new objj_ivar("_submitSearchButton"),new objj_ivar("_cancelSearchButton"),new objj_ivar("_loadingIndicator"),new objj_ivar("_searchResults"),new objj_ivar("_agentDataSource")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("delegate"),function(_3,_4){
with(_3){
return _delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_5,_6,_7){
with(_5){
_delegate=_7;
}
}),new objj_method(sel_getUid("mediaItem"),function(_8,_9){
with(_8){
return _mediaItem;
}
}),new objj_method(sel_getUid("setMediaItem:"),function(_a,_b,_c){
with(_a){
_mediaItem=_c;
}
}),new objj_method(sel_getUid("initWithDelegate:"),function(_d,_e,_f){
with(_d){
if(_d=objj_msgSendSuper({receiver:_d,super_class:objj_getClass("MMMatchPickerController").super_class},"init")){
_delegate=_f;
_searchResults=objj_msgSend(CPArray,"array");
_matchesDataSource=objj_msgSend(objj_msgSend(MMMediaMatchesDataSource,"alloc"),"initWithDelegate:",_d);
_agentDataSource=objj_msgSend(MMAgentDataSource,"sharedDataSource");
}
return _d;
}
}),new objj_method(sel_getUid("initWithMediaItem:delegate:"),function(_10,_11,_12,_13){
with(_10){
if(_10=objj_msgSend(_10,"initWithDelegate:",_13)){
objj_msgSend(_10,"setMediaItem:",_12);
}
return _10;
}
}),new objj_method(sel_getUid("presentSheetInWindow:"),function(_14,_15,_16){
with(_14){
if(_sheetPanel){
return;
}
_sheetPanel=objj_msgSend(objj_msgSend(CPPanel,"alloc"),"initWithContentRect:styleMask:",objj_msgSend(objj_msgSend(_14,"view"),"bounds"),CPDocModalWindowMask);
objj_msgSend(_sheetPanel,"setContentView:",objj_msgSend(_14,"view"));
objj_msgSend(CPApp,"beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:",_sheetPanel,_16,nil,nil,nil);
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"performSelector:target:argument:order:modes:",sel_getUid("_resultViewDidActivate"),_14,nil,0,[CPDefaultRunLoopMode]);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_14,sel_getUid("_agentsDidLoad:"),MMDataSourceDidReceiveRecords,_agentDataSource);
objj_msgSend(_agentDataSource,"refreshRecordsWithContextInfo:",objj_msgSend(objj_msgSend(_mediaItem,"librarySection"),"type"));
}
}),new objj_method(sel_getUid("dismissSheet"),function(_17,_18){
with(_17){
if(!_sheetPanel){
return;
}
objj_msgSend(CPApp,"endSheet:returnCode:",_sheetPanel,0),_sheetPanel=nil;
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_17,MMDataSourceDidReceiveRecords,_agentDataSource);
}
}),new objj_method(sel_getUid("setMediaItem:"),function(_19,_1a,_1b){
with(_19){
_mediaItem=_1b;
objj_msgSend(_19,"view");
_searchResults=objj_msgSend(CPArray,"array");
objj_msgSend(_matchesTableView,"reloadData");
objj_msgSend(_matchesDataSource,"refreshRecordsWithContextInfo:",_mediaItem);
objj_msgSend(_descriptiveLabel,"setStringValue:",objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Select the correct %@ from the list below:","Match picker informative text"),objj_msgSend(objj_msgSend(_mediaItem,"librarySection"),"type")));
objj_msgSend(_descriptiveLabel,"sizeToFit");
objj_msgSend(_titleField,"setStringValue:",objj_msgSend(_mediaItem,"title"));
objj_msgSend(_yearField,"setStringValue:",objj_msgSend(_mediaItem,"year"));
objj_msgSend(_selectButton,"setTitle:",objj_msgSend(_19,"_selectButtonTitle"));
}
}),new objj_method(sel_getUid("dataSource:didRequestRecordsWithContextInfo:"),function(_1c,_1d,_1e,_1f){
with(_1c){
var _20=_1f;
if(objj_msgSend(_20,"isKindOfClass:",CPDictionary)){
_20=objj_msgSend(_20,"objectForKey:","mediaItem");
}
if(objj_msgSend(_mediaItem,"isEqual:",_20)){
_searchResults=objj_msgSend(CPArray,"array");
objj_msgSend(_matchesTableView,"reloadData");
objj_msgSend(_loadingIndicator,"setHidden:",NO);
}else{
CPLog.warn("[%@ -dataSource:didRequestRecordsWithContextInfo:] ignoring request for stale context: %@",objj_msgSend(_1c,"class"),_1f);
}
}
}),new objj_method(sel_getUid("dataSource:didReceiveRecords:contextInfo:"),function(_21,_22,_23,_24,_25){
with(_21){
var _26=_25;
if(objj_msgSend(_26,"isKindOfClass:",CPDictionary)){
_26=objj_msgSend(_26,"objectForKey:","mediaItem");
}
if(objj_msgSend(_mediaItem,"isEqual:",_26)){
_searchResults=_24;
objj_msgSend(_matchesTableView,"reloadData");
objj_msgSend(_loadingIndicator,"setHidden:",YES);
}else{
CPLog.warn("[%@ -dataSource:didReceiveRecords:contextInfo:] ignoring records for stale context: %@",objj_msgSend(_21,"class"),_25);
}
}
}),new objj_method(sel_getUid("dataSource:didFailToReceiveRecordsWithError:contextInfo:"),function(_27,_28,_29,_2a,_2b){
with(_27){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("matchPicker:didFailWithError:"))){
objj_msgSend(_delegate,"matchPicker:didFailWithError:",_27,_2a);
}
objj_msgSend(_loadingIndicator,"setHidden:",YES);
}
}),new objj_method(sel_getUid("_agentsDidLoad:"),function(_2c,_2d,_2e){
with(_2c){
_agents=objj_msgSend(objj_msgSend(_2e,"userInfo"),"objectForKey:","records");
var _2f=objj_msgSend(objj_msgSend(_mediaItem,"librarySection"),"agent"),_30=objj_msgSend(_agents,"indexOfObject:",_2f);
objj_msgSend(_agentPopUp,"removeAllItems");
for(var i=0;i<objj_msgSend(_agents,"count");i++){
objj_msgSend(_agentPopUp,"addItemWithTitle:",objj_msgSend(objj_msgSend(_agents,"objectAtIndex:",i),"name"));
}
objj_msgSend(_agentPopUp,"selectItemAtIndex:",_30);
objj_msgSend(_2c,"_agentSelectionDidChange");
}
}),new objj_method(sel_getUid("_agentSelectionDidChange"),function(_31,_32){
with(_31){
var _33=objj_msgSend(objj_msgSend(_31,"selectedAgent"),"languages"),_34=objj_msgSend(objj_msgSend(_mediaItem,"librarySection"),"language"),_35=objj_msgSend(_33,"indexOfObject:",_34);
objj_msgSend(_languagePopUp,"removeAllItems");
for(var i=0;i<objj_msgSend(_33,"count");i++){
objj_msgSend(_languagePopUp,"addItemWithTitle:",objj_msgSend(objj_msgSend(_33,"objectAtIndex:",i),"name"));
}
objj_msgSend(_languagePopUp,"selectItemAtIndex:",_35);
}
}),new objj_method(sel_getUid("selectedAgent"),function(_36,_37){
with(_36){
var _38=objj_msgSend(_agentPopUp,"indexOfSelectedItem");
if(_38==CPNotFound){
return nil;
}
return objj_msgSend(_agents,"objectAtIndex:",_38);
}
}),new objj_method(sel_getUid("selectedLanguage"),function(_39,_3a){
with(_39){
var _3b=objj_msgSend(_languagePopUp,"indexOfSelectedItem");
if(_3b==CPNotFound){
return nil;
}
return objj_msgSend(objj_msgSend(objj_msgSend(_39,"selectedAgent"),"languages"),"objectAtIndex:",_3b);
}
}),new objj_method(sel_getUid("loadView"),function(_3c,_3d){
with(_3c){
var _3e=10;
_view=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,482,323));
_resultView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",objj_msgSend(_view,"frame"));
objj_msgSend(_view,"addSubview:",_resultView);
_descriptiveLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_descriptiveLabel,"setStringValue:",objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Select the correct %@ from the list below:","Match picker informative text"),objj_msgSend(objj_msgSend(_mediaItem,"librarySection"),"type")));
objj_msgSend(_descriptiveLabel,"sizeToFit");
objj_msgSend(_descriptiveLabel,"setFrameOrigin:",CGPointMake(_3e,_3e));
objj_msgSend(_resultView,"addSubview:",_descriptiveLabel);
_matchesScrollView=objj_msgSend(objj_msgSend(CPScrollView,"alloc"),"initWithFrame:",CGRectMake(_3e,CGRectGetMaxY(objj_msgSend(_descriptiveLabel,"frame"))+5,CGRectGetWidth(objj_msgSend(_resultView,"frame"))-_3e*2,200));
objj_msgSend(_matchesScrollView,"setBorderType:",CPLineBorder);
objj_msgSend(_matchesScrollView,"setAutohidesScrollers:",YES);
_matchesTableView=objj_msgSend(objj_msgSend(CPTableView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_matchesTableView,"setDataSource:",_3c);
objj_msgSend(_matchesTableView,"setDelegate:",_3c);
objj_msgSend(_matchesTableView,"setTarget:",_3c);
objj_msgSend(_matchesTableView,"setDoubleAction:",sel_getUid("tableViewRowWasDoubleClicked:"));
var _3f=objj_msgSend(objj_msgSend(CPTableColumn,"alloc"),"initWithIdentifier:","name");
objj_msgSend(objj_msgSend(_3f,"headerView"),"setStringValue:",CPLocalizedString("Name","Name"));
objj_msgSend(_matchesTableView,"addTableColumn:",_3f);
var _40=objj_msgSend(objj_msgSend(CPTableColumn,"alloc"),"initWithIdentifier:","year");
objj_msgSend(objj_msgSend(_40,"headerView"),"setStringValue:",CPLocalizedString("Year","Year"));
objj_msgSend(_matchesTableView,"addTableColumn:",_40);
var _41=objj_msgSend(CPPlatformString,"sizeOfString:withFont:forWidth:",(new Date()).getFullYear().toString(),objj_msgSend(objj_msgSend(objj_msgSend(_40,"headerView"),"textField"),"font"),nil).width*1.25;
objj_msgSend(_40,"setWidth:",_41);
objj_msgSend(_40,"setMinWidth:",_41);
objj_msgSend(_40,"setMaxWidth:",_41);
objj_msgSend(_3f,"setWidth:",CGRectGetWidth(objj_msgSend(_matchesScrollView,"frame"))-_41*2);
objj_msgSend(_matchesScrollView,"setDocumentView:",_matchesTableView);
objj_msgSend(_resultView,"addSubview:",_matchesScrollView);
_selectButton=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Select","Select"));
objj_msgSend(_resultView,"addSubview:",_selectButton);
_cancelButton=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Cancel","Cancel"));
objj_msgSend(_resultView,"addSubview:",_cancelButton);
objj_msgSend(_selectButton,"addObserver:forKeyPath:options:context:",_3c,"title",CPKeyValueObservingOptionNew,nil);
objj_msgSend(_selectButton,"addObserver:forKeyPath:options:context:",_3c,"frame",CPKeyValueObservingOptionNew,nil);
objj_msgSend(_matchesTableView,"addObserver:forKeyPath:options:context:",_3c,"selectedRowIndexes",CPKeyValueObservingOptionNew|CPKeyValueObservingOptionInitial,nil);
objj_msgSend(_selectButton,"setTitle:",objj_msgSend(_3c,"_selectButtonTitle"));
objj_msgSend(_selectButton,"setTarget:",_3c);
objj_msgSend(_selectButton,"setAction:",sel_getUid("chooseMatch:"));
objj_msgSend(_selectButton,"setKeyEquivalent:",CPCarriageReturnCharacter);
objj_msgSend(objj_msgSend(_view,"window"),"setDefaultButton:",_selectButton);
objj_msgSend(_cancelButton,"setTarget:",_3c);
objj_msgSend(_cancelButton,"setAction:",sel_getUid("cancel:"));
objj_msgSend(_cancelButton,"setKeyEquivalent:",CPEscapeFunctionKey);
_searchButton=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Custom Search","Custom Search"));
objj_msgSend(_searchButton,"setTarget:",_3c);
objj_msgSend(_searchButton,"setAction:",sel_getUid("search:"));
objj_msgSend(_searchButton,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_matchesScrollView,"frame")),CGRectGetMaxY(objj_msgSend(_matchesScrollView,"frame"))+_3e));
objj_msgSend(_resultView,"addSubview:",_searchButton);
objj_msgSend(_resultView,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_resultView,"frame")),CGRectGetMaxY(objj_msgSend(_cancelButton,"frame"))+_3e));
objj_msgSend(_view,"setFrameSize:",objj_msgSend(_resultView,"frame").size);
var _42=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","spinner.gif"),CGSizeMake(16,16));
_loadingIndicator=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_loadingIndicator,"setImage:",_42);
objj_msgSend(_loadingIndicator,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(_matchesScrollView,"frame"))-objj_msgSend(_42,"size").width,CGRectGetMinY(objj_msgSend(_matchesScrollView,"frame"))-5-objj_msgSend(_42,"size").height));
objj_msgSend(_loadingIndicator,"setFrameSize:",objj_msgSend(_42,"size"));
objj_msgSend(_loadingIndicator,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin);
objj_msgSend(_resultView,"addSubview:",_loadingIndicator);
objj_msgSend(_matchesScrollView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_selectButton,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin);
objj_msgSend(_cancelButton,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin);
objj_msgSend(_searchButton,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxXMargin);
objj_msgSend(_resultView,"setAutoresizingMask:",CPViewMinYMargin|CPViewMinXMargin|CPViewMaxXMargin);
var _43=270,_44=_43*0.6,_45=10;
_searchFormView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,_43,0));
var _46=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Search using:","Agent label"));
var _47=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Language:","Language label"));
var _48=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Name:","Name label"));
var _49=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Year:","Year label"));
objj_msgSend(_46,"setFrameOrigin:",CGPointMake(_45,_45));
objj_msgSend(_47,"setFrameOrigin:",CGPointMake(_45,CGRectGetMaxY(objj_msgSend(_46,"frame"))+_45));
objj_msgSend(_48,"setFrameOrigin:",CGPointMake(_45,CGRectGetMaxY(objj_msgSend(_47,"frame"))+_45));
objj_msgSend(_49,"setFrameOrigin:",CGPointMake(_45,CGRectGetMaxY(objj_msgSend(_48,"frame"))+_45));
_agentPopUp=objj_msgSend(objj_msgSend(CPPopUpButton,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_agentPopUp,"sizeToFit");
objj_msgSend(_agentPopUp,"setTarget:",_3c);
objj_msgSend(_agentPopUp,"setAction:",sel_getUid("_agentSelectionDidChange"));
objj_msgSend(_agentPopUp,"setFrame:",CGRectMake(_43-_3e-_44,CGRectGetMinY(objj_msgSend(_46,"frame"))+(CGRectGetHeight(objj_msgSend(_46,"frame"))-CGRectGetHeight(objj_msgSend(_46,"frame")))/2,_44,CGRectGetHeight(objj_msgSend(_agentPopUp,"frame"))));
objj_msgSend(_searchFormView,"addSubview:",_agentPopUp);
_languagePopUp=objj_msgSend(objj_msgSend(CPPopUpButton,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_languagePopUp,"sizeToFit");
objj_msgSend(_languagePopUp,"setFrame:",CGRectMake(_43-_3e-_44,CGRectGetMinY(objj_msgSend(_47,"frame"))+(CGRectGetHeight(objj_msgSend(_47,"frame"))-CGRectGetHeight(objj_msgSend(_47,"frame")))/2,_44,CGRectGetHeight(objj_msgSend(_languagePopUp,"frame"))));
objj_msgSend(_searchFormView,"addSubview:",_languagePopUp);
_titleField=objj_msgSend(CPTextField,"textFieldWithStringValue:placeholder:width:","","",_44);
objj_msgSend(_titleField,"setFrameOrigin:",CGPointMake(CGRectGetWidth(objj_msgSend(_searchFormView,"frame"))-_3e-CGRectGetWidth(objj_msgSend(_titleField,"frame")),CGRectGetMinY(objj_msgSend(_48,"frame"))+(CGRectGetHeight(objj_msgSend(_48,"frame"))-CGRectGetHeight(objj_msgSend(_titleField,"frame")))/2));
objj_msgSend(_titleField,"setAutoresizingMask:",CPViewMaxXMargin);
objj_msgSend(_searchFormView,"addSubview:",_titleField);
_yearField=objj_msgSend(CPTextField,"textFieldWithStringValue:placeholder:width:","","",_44/2);
objj_msgSend(_yearField,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_titleField,"frame")),CGRectGetMinY(objj_msgSend(_49,"frame"))+(CGRectGetHeight(objj_msgSend(_49,"frame"))-CGRectGetHeight(objj_msgSend(_yearField,"frame")))/2));
objj_msgSend(_yearField,"setAutoresizingMask:",CPViewMaxXMargin);
objj_msgSend(_searchFormView,"addSubview:",_yearField);
objj_msgSend(_searchFormView,"addSubview:",_46);
objj_msgSend(_searchFormView,"addSubview:",_47);
objj_msgSend(_searchFormView,"addSubview:",_48);
objj_msgSend(_searchFormView,"addSubview:",_49);
objj_msgSend(_searchFormView,"setAutoresizingMask:",objj_msgSend(_resultView,"autoresizingMask"));
_submitSearchButton=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Search","Search"));
objj_msgSend(_submitSearchButton,"setTarget:",_3c);
objj_msgSend(_submitSearchButton,"setAction:",sel_getUid("submitSearch:"));
objj_msgSend(_submitSearchButton,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(_titleField,"frame"))-CGRectGetWidth(objj_msgSend(_submitSearchButton,"frame")),CGRectGetMaxY(objj_msgSend(_yearField,"frame"))+5));
objj_msgSend(_searchFormView,"addSubview:",_submitSearchButton);
_cancelSearchButton=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Cancel","Cancel"));
objj_msgSend(_cancelSearchButton,"setTarget:",_3c);
objj_msgSend(_cancelSearchButton,"setAction:",sel_getUid("cancelSearch:"));
objj_msgSend(_cancelSearchButton,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_submitSearchButton,"frame"))-5-CGRectGetWidth(objj_msgSend(_cancelSearchButton,"frame")),CGRectGetMinY(objj_msgSend(_submitSearchButton,"frame"))));
objj_msgSend(_searchFormView,"addSubview:",_cancelSearchButton);
objj_msgSend(_searchFormView,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_searchFormView,"frame")),CGRectGetMaxY(objj_msgSend(_cancelSearchButton,"frame"))+_3e));
objj_msgSend(_searchFormView,"setHidden:",YES);
objj_msgSend(_agentPopUp,"setAutoresizingMask:",CPViewMaxXMargin);
objj_msgSend(_titleField,"setAutoresizingMask:",CPViewMaxXMargin);
objj_msgSend(_languagePopUp,"setAutoresizingMask:",CPViewMaxXMargin);
objj_msgSend(_submitSearchButton,"setAutoresizingMask:",CPViewMinXMargin);
objj_msgSend(_cancelSearchButton,"setAutoresizingMask:",CPViewMinXMargin);
objj_msgSend(_view,"addSubview:",_searchFormView);
var _4a=objj_msgSend(MMAgentDataSource,"sharedDataSource");
}
}),new objj_method(sel_getUid("_selectButtonTitle"),function(_4b,_4c){
with(_4b){
var _4d={artist:CPLocalizedString("Artist","Artist"),movie:CPLocalizedString("Movie","Movie"),show:CPLocalizedString("Show","Show")}[objj_msgSend(objj_msgSend(_mediaItem,"librarySection"),"type")];
return objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Select %@","Confirm button title for selecting"),_4d);
}
}),new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"),function(_4e,_4f,_50,_51,_52,_53){
with(_4e){
if(objj_msgSend(_51,"isEqual:",_selectButton)&&_50=="title"){
objj_msgSend(_selectButton,"sizeToFit");
objj_msgSend(_selectButton,"setFrameOrigin:",CPPointMake(CGRectGetWidth(objj_msgSend(objj_msgSend(_selectButton,"superview"),"frame"))-10-CGRectGetWidth(objj_msgSend(_selectButton,"frame")),CGRectGetMaxY(objj_msgSend(_matchesScrollView,"frame"))+10));
}else{
if(objj_msgSend(_51,"isEqual:",_selectButton)&&_50=="frame"){
objj_msgSend(_cancelButton,"setFrameOrigin:",CPPointMake(CGRectGetMinX(objj_msgSend(_selectButton,"frame"))-10-CGRectGetWidth(objj_msgSend(_cancelButton,"frame")),CGRectGetMinY(objj_msgSend(_selectButton,"frame"))));
}else{
if(_50=="selectedRowIndexes"){
var _54=objj_msgSend(_52,"objectForKey:",CPKeyValueChangeNewKey);
if(objj_msgSend(_54,"count")){
var _55=objj_msgSend(_searchResults,"objectAtIndex:",objj_msgSend(_54,"firstIndex"));
objj_msgSend(_titleField,"setStringValue:",objj_msgSend(_55,"name"));
objj_msgSend(_yearField,"setStringValue:",objj_msgSend(_55,"year"));
objj_msgSend(_selectButton,"setEnabled:",YES);
}else{
objj_msgSend(_titleField,"setStringValue:",objj_msgSend(_mediaItem,"title"));
objj_msgSend(_yearField,"setStringValue:",objj_msgSend(_mediaItem,"year"));
objj_msgSend(_selectButton,"setEnabled:",NO);
}
}else{
CPLog.warn("[%@ -observeValueForKeyPath:ofObject:change:context:] ignoring unrecognized change notice (%@ @ %@)",_51,_50);
}
}
}
}
}),new objj_method(sel_getUid("_selectSearchResult:"),function(_56,_57,_58){
with(_56){
if(_58&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("matchPicker:didSelectSearchResult:"))){
objj_msgSend(_delegate,"matchPicker:didSelectSearchResult:",_56,_58);
}
}
}),new objj_method(sel_getUid("_searchResultAtIndex:"),function(_59,_5a,_5b){
with(_59){
if(_5b==CPNotFound||_5b>=objj_msgSend(_searchResults,"count")){
return nil;
}
return objj_msgSend(_searchResults,"objectAtIndex:",_5b);
}
}),new objj_method(sel_getUid("cancel:"),function(_5c,_5d,_5e){
with(_5c){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("matchPickerDidCancel:"))){
objj_msgSend(_delegate,"matchPickerDidCancel:",_5c);
}
}
}),new objj_method(sel_getUid("chooseMatch:"),function(_5f,_60,_61){
with(_5f){
objj_msgSend(_5f,"_selectSearchResult:",objj_msgSend(_5f,"_searchResultAtIndex:",objj_msgSend(_matchesTableView,"selectedRow")));
}
}),new objj_method(sel_getUid("search:"),function(_62,_63,_64){
with(_62){
objj_msgSend(_62,"_transitionFromSubview:toSubview:",_resultView,_searchFormView);
}
}),new objj_method(sel_getUid("submitSearch:"),function(_65,_66,_67){
with(_65){
objj_msgSend(_matchesDataSource,"refreshRecordsForMediaItem:title:agent:language:year:",_mediaItem,objj_msgSend(_titleField,"stringValue"),objj_msgSend(_65,"selectedAgent"),objj_msgSend(_65,"selectedLanguage"),objj_msgSend(_yearField,"stringValue"));
objj_msgSend(_65,"_transitionFromSubview:toSubview:",_searchFormView,_resultView);
}
}),new objj_method(sel_getUid("cancelSearch:"),function(_68,_69,_6a){
with(_68){
objj_msgSend(_68,"_transitionFromSubview:toSubview:",_searchFormView,_resultView);
}
}),new objj_method(sel_getUid("_transitionFromSubview:toSubview:"),function(_6b,_6c,_6d,_6e){
with(_6b){
objj_msgSend(_6b,"_willTransitionFromSubview:toSubview:",_6d,_6e);
var _6f=objj_msgSend(objj_msgSend(_6b,"view"),"window"),_70=objj_msgSend(_6f,"frame"),_71=objj_msgSend(_6e,"frame").size,_72=CGRectMake(CGRectGetMidX(_70)-_71.width/2,CGRectGetMinY(_70),CGRectGetWidth(objj_msgSend(_6e,"frame")),CGRectGetHeight(objj_msgSend(_6e,"frame"))),_73=objj_msgSend(_6f,"animationResizeTime:",_72);
var _74=objj_msgSend(objj_msgSend(CPViewAnimation,"alloc"),"initWithDuration:animationCurve:",_73,CPAnimationLinear);
objj_msgSend(_74,"setViewAnimations:",objj_msgSend(CPArray,"arrayWithObjects:",objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_6d,CPViewAnimationTargetKey,objj_msgSend(_6d,"frame"),CPViewAnimationStartFrameKey,objj_msgSend(_6d,"frame"),CPViewAnimationEndFrameKey,CPViewAnimationFadeOutEffect,CPViewAnimationEffectKey),objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_6e,CPViewAnimationTargetKey,objj_msgSend(_6e,"frame"),CPViewAnimationStartFrameKey,objj_msgSend(_6e,"frame"),CPViewAnimationEndFrameKey,CPViewAnimationFadeInEffect,CPViewAnimationEffectKey)));
objj_msgSend(_74,"startAnimation");
objj_msgSend(_6f,"setFrame:display:animate:",_72,YES,YES);
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",_73,_6b,sel_getUid("_didTransitionWithTimer:"),objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_6e,"toSubview",_6d,"fromSubview"),NO);
}
}),new objj_method(sel_getUid("_didTransitionWithTimer:"),function(_75,_76,_77){
with(_75){
var _78=objj_msgSend(_77,"userInfo"),_79=objj_msgSend(_78,"objectForKey:","fromSubview"),_7a=objj_msgSend(_78,"objectForKey:","toSubview");
objj_msgSend(_75,"_didTransitionFromSubview:toSubview:",_79,_7a);
}
}),new objj_method(sel_getUid("_willTransitionFromSubview:toSubview:"),function(_7b,_7c,_7d,_7e){
with(_7b){
if(objj_msgSend(_7e,"isEqual:",_resultView)){
objj_msgSend(_7b,"_resultViewWillActivate");
}else{
if(objj_msgSend(_7e,"isEqual:",_searchFormView)){
objj_msgSend(_7b,"_searchViewWillActivate");
}
}
}
}),new objj_method(sel_getUid("_didTransitionFromSubview:toSubview:"),function(_7f,_80,_81,_82){
with(_7f){
if(objj_msgSend(_82,"isEqual:",_resultView)){
objj_msgSend(_7f,"_resultViewDidActivate");
}else{
if(objj_msgSend(_82,"isEqual:",_searchFormView)){
objj_msgSend(_7f,"_searchViewDidActivate");
}
}
}
}),new objj_method(sel_getUid("_resultViewWillActivate"),function(_83,_84){
with(_83){
objj_msgSend(objj_msgSend(objj_msgSend(_83,"view"),"window"),"setDefaultButton:",_selectButton);
objj_msgSend(_cancelButton,"setKeyEquivalent:",CPEscapeFunctionKey);
objj_msgSend(_cancelSearchButton,"setKeyEquivalent:",nil);
}
}),new objj_method(sel_getUid("_resultViewDidActivate"),function(_85,_86){
with(_85){
objj_msgSend(objj_msgSend(objj_msgSend(_85,"view"),"window"),"makeFirstResponder:",_matchesTableView);
}
}),new objj_method(sel_getUid("_searchViewWillActivate"),function(_87,_88){
with(_87){
objj_msgSend(objj_msgSend(objj_msgSend(_87,"view"),"window"),"setDefaultButton:",_submitSearchButton);
objj_msgSend(_cancelSearchButton,"setKeyEquivalent:",CPEscapeFunctionKey);
objj_msgSend(_cancelButton,"setKeyEquivalent:",nil);
}
}),new objj_method(sel_getUid("_searchViewDidActivate"),function(_89,_8a){
with(_89){
objj_msgSend(objj_msgSend(objj_msgSend(_89,"view"),"window"),"makeFirstResponder:",_titleField);
objj_msgSend(_titleField,"selectAll:",_89);
}
}),new objj_method(sel_getUid("tableViewRowWasDoubleClicked:"),function(_8b,_8c,_8d){
with(_8b){
objj_msgSend(_8b,"_selectSearchResult:",objj_msgSend(_8b,"_searchResultAtIndex:",objj_msgSend(_matchesTableView,"clickedRow")));
}
}),new objj_method(sel_getUid("numberOfRowsInTableView:"),function(_8e,_8f,_90){
with(_8e){
return objj_msgSend(_searchResults,"count");
}
}),new objj_method(sel_getUid("tableView:objectValueForTableColumn:row:"),function(_91,_92,_93,_94,_95){
with(_91){
return objj_msgSend(objj_msgSend(_searchResults,"objectAtIndex:",_95),"valueForKey:",objj_msgSend(_94,"identifier"));
}
})]);
p;49;Controllers/MMMediaItemCollectionViewController.jt;11606;@STATIC;1.0;I;25;AppKit/CPViewController.ji;41;../DataSources/MMLibraryMediaDataSource.ji;44;../DataSources/MMLibraryTimelineDataSource.ji;28;../Models/MMLibrarySection.ji;36;../Views/MMMediaItemCollectionView.ji;23;../Views/MMScrollView.jt;11359;
objj_executeFile("AppKit/CPViewController.j",NO);
objj_executeFile("../DataSources/MMLibraryMediaDataSource.j",YES);
objj_executeFile("../DataSources/MMLibraryTimelineDataSource.j",YES);
objj_executeFile("../Models/MMLibrarySection.j",YES);
objj_executeFile("../Views/MMMediaItemCollectionView.j",YES);
objj_executeFile("../Views/MMScrollView.j",YES);
MMMediaItemCollectionViewControllerStateInitialized=0;
MMMediaItemCollectionViewControllerStateLoading=1;
MMMediaItemCollectionViewControllerStateLoaded=2;
var _1=objj_allocateClassPair(CPViewController,"MMMediaItemCollectionViewController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_librarySection"),new objj_ivar("_dataSource"),new objj_ivar("_collectionView"),new objj_ivar("_sortDescriptor"),new objj_ivar("_title"),new objj_ivar("_readyState")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("librarySection"),function(_3,_4){
with(_3){
return _librarySection;
}
}),new objj_method(sel_getUid("setLibrarySection:"),function(_5,_6,_7){
with(_5){
_librarySection=_7;
}
}),new objj_method(sel_getUid("title"),function(_8,_9){
with(_8){
return _title;
}
}),new objj_method(sel_getUid("setTitle:"),function(_a,_b,_c){
with(_a){
_title=_c;
}
}),new objj_method(sel_getUid("init"),function(_d,_e){
with(_d){
if(_d=objj_msgSendSuper({receiver:_d,super_class:objj_getClass("MMMediaItemCollectionViewController").super_class},"init")){
objj_msgSend(_d,"bind:toObject:withKeyPath:options:","title",_d,"librarySection.title",nil);
_sortDescriptor=objj_msgSend(CPSortDescriptor,"sortDescriptorWithKey:ascending:","titleSort",YES);
var _f=objj_msgSend(CPNotificationCenter,"defaultCenter");
objj_msgSend(_f,"addObserver:selector:name:object:",_d,sel_getUid("_recordWasUpdated:"),MMDataSourceDidUpdateRecord,nil);
objj_msgSend(_f,"addObserver:selector:name:object:",_d,sel_getUid("_recordWasDeleted:"),MMDataSourceDidDeleteRecord,nil);
objj_msgSend(_f,"addObserver:selector:name:object:",_d,sel_getUid("_recordWasCreated:"),MMDataSourceDidCreateRecord,nil);
_readyState=MMMediaItemCollectionViewControllerStateInitialized;
}
return _d;
}
}),new objj_method(sel_getUid("dataSource"),function(_10,_11){
with(_10){
if(!_dataSource){
_dataSource=objj_msgSend(objj_msgSend(MMLibraryMediaDataSource,"alloc"),"initWithDelegate:",_10);
}
return _dataSource;
}
}),new objj_method(sel_getUid("setLibrarySection:"),function(_12,_13,_14){
with(_12){
var _15=(_librarySection!=_14);
_librarySection=_14;
if(_15){
objj_msgSend(objj_msgSend(MMLibraryTimelineDataSource,"sharedDataSource"),"stopWatchingTimeline");
}
if(!_librarySection){
objj_msgSend(_12,"setContent:",[]);
}
if(_librarySection&&_15){
_readyState=MMMediaItemCollectionViewControllerStateLoading;
objj_msgSend(objj_msgSend(_12,"dataSource"),"refreshRecordsWithContextInfo:",_librarySection);
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:callback:repeats:",0,function(){
objj_msgSend(objj_msgSend(_collectionView,"window"),"makeFirstResponder:",_collectionView);
},NO);
}
}
}),new objj_method(sel_getUid("dataSource:didReceiveRecords:contextInfo:"),function(_16,_17,_18,_19,_1a){
with(_16){
if((_18!=_dataSource)||(_librarySection!=_1a)){
return;
}
objj_msgSend(_collectionView,"scrollPoint:",CGPointMake(0,0));
objj_msgSend(_collectionView,"setSelectionIndexes:",objj_msgSend(CPIndexSet,"indexSet"));
objj_msgSend(_16,"setContent:",_19);
objj_msgSend(objj_msgSend(MMLibraryTimelineDataSource,"sharedDataSource"),"watchTimelineForLibrarySection:",_librarySection);
}
}),new objj_method(sel_getUid("_recordWasUpdated:"),function(_1b,_1c,_1d){
with(_1b){
var _1e=objj_msgSend(_1d,"userInfo"),_1f=objj_msgSend(_1e,"objectForKey:","record"),_20=objj_msgSend(_1e,"objectForKey:","contextInfo");
if(!objj_msgSend(_1f,"isKindOfClass:",MMLibraryMediaItem)||!objj_msgSend(objj_msgSend(_1f,"librarySection"),"isEqual:",_librarySection)){
return;
}
if(!objj_msgSend(objj_msgSend(_1b,"content"),"containsObject:",_1f)){
CPLog.info("[%@ _recordWasUpdated:] we haven't seen %@ before, add it",objj_msgSend(_1b,"class"),_1f);
objj_msgSend(_1b,"_recordWasCreated:",_1d);
}
}
}),new objj_method(sel_getUid("_recordWasDeleted:"),function(_21,_22,_23){
with(_21){
var _24=objj_msgSend(_23,"userInfo"),_25=objj_msgSend(_24,"objectForKey:","record");
if(!objj_msgSend(_25,"isKindOfClass:",MMLibraryMediaItem)||!objj_msgSend(objj_msgSend(_25,"librarySection"),"isEqual:",_librarySection)){
return;
}
CPLog.info("[%@ _recordWasDeleted:] removing record with id=%@",objj_msgSend(_21,"class"),objj_msgSend(_25,"id"));
objj_msgSend(_collectionView,"removeObject:",_25);
}
}),new objj_method(sel_getUid("_recordWasCreated:"),function(_26,_27,_28){
with(_26){
var _29=objj_msgSend(_28,"userInfo"),_2a=objj_msgSend(_29,"objectForKey:","record");
if(!objj_msgSend(_2a,"isKindOfClass:",MMLibraryMediaItem)||!objj_msgSend(objj_msgSend(_2a,"librarySection"),"isEqual:",_librarySection)){
return;
}
CPLog.info("[%@ _recordWasCreated:] adding record %@",objj_msgSend(_26,"class"),_2a);
objj_msgSend(_collectionView,"insertObject:inArraySortedByDescriptors:",_2a,[_sortDescriptor]);
}
}),new objj_method(sel_getUid("status"),function(_2b,_2c){
with(_2b){
if(!_librarySection){
return nil;
}
var _2d=objj_msgSend(_librarySection,"type"),_2e="%d "+_2d,_2f=(_readyState===MMMediaItemCollectionViewControllerStateLoaded)?objj_msgSend(objj_msgSend(_2b,"content"),"count"):0;
switch(_2f){
case 0:
switch(_2d){
case "movie":
_2e=CPLocalizedString("no movies","Status label value for when there are no movies");
break;
case "show":
_2e=CPLocalizedString("no TV shows","Status label value when there are no TV shows");
break;
case "artist":
_2e=CPLocalizedString("no artists","Status label value when there are no musical artists");
break;
}
break;
case 1:
switch(_2d){
case "movie":
_2e=CPLocalizedString("1 movie","Status label value for when there is one movie");
break;
case "show":
_2e=CPLocalizedString("1 TV show","Status label value for when there is one TV show");
break;
case "artist":
_2e=CPLocalizedString("1 artist","Status label value for when there is one musical artist");
break;
}
break;
default:
switch(_2d){
case "movie":
_2e=CPLocalizedString("%d movies","Status label value for when there is more than one movie");
break;
case "show":
_2e=CPLocalizedString("%d TV shows","Status label value for when there is more than one TV show");
break;
case "artist":
_2e=CPLocalizedString("%d artists","Status label value for when there is more than one musical artist");
break;
}
break;
}
return objj_msgSend(CPString,"stringWithFormat:",_2e,_2f);
}
}),new objj_method(sel_getUid("location"),function(_30,_31){
with(_30){
if(!_librarySection){
return "";
}
return objj_msgSend(CPString,"stringWithFormat:","/sections/%@",objj_msgSend(_librarySection,"id"));
}
}),new objj_method(sel_getUid("content"),function(_32,_33){
with(_32){
return objj_msgSend(_collectionView,"content");
}
}),new objj_method(sel_getUid("setContent:"),function(_34,_35,_36){
with(_34){
objj_msgSend(_collectionView,"setContent:",_36);
_readyState=MMMediaItemCollectionViewControllerStateLoaded;
}
}),new objj_method(sel_getUid("loadView"),function(_37,_38){
with(_37){
var _39=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,800,800)),_3a=30,_3b=objj_msgSend(objj_msgSend(MMToolbar,"alloc"),"initWithFrame:style:",CGRectMake(0,CGRectGetHeight(objj_msgSend(_39,"frame"))-_3a,CGRectGetWidth(objj_msgSend(_39,"frame")),_3a),MMToolbarHUDStyle),_3c=objj_msgSend(objj_msgSend(MMScrollView,"alloc"),"initWithFrame:",CGRectMake(0,0,CGRectGetWidth(objj_msgSend(_39,"frame")),CGRectGetMinY(objj_msgSend(_3b,"frame")))),_3d=objj_msgSend(objj_msgSend(MMMediaItemCollectionView,"alloc"),"initWithFrame:",objj_msgSend(_3c,"bounds")),_3e=objj_msgSend(objj_msgSend(CPCollectionViewItem,"alloc"),"init"),_3f=objj_msgSend(objj_msgSend(MMMediaItemCell,"alloc"),"initWithFrame:",CGRectMake(0,0,175,220));
objj_msgSend(_3b,"setAutoresizingMask:",CPViewWidthSizable|CPViewMinYMargin);
var _40=objj_msgSend(HUDButton,"buttonWithTitle:",CPLocalizedString("Edit Section","Edit Section"));
objj_msgSend(_40,"setFrameOrigin:",CGPointMake(CGRectGetWidth(objj_msgSend(_3b,"frame"))-5-CGRectGetWidth(objj_msgSend(_40,"frame")),(CGRectGetHeight(objj_msgSend(_3b,"frame"))-CGRectGetHeight(objj_msgSend(_40,"frame")))/2));
objj_msgSend(_40,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin|CPViewMinXMargin);
objj_msgSend(_40,"setTarget:",_37);
objj_msgSend(_40,"setAction:",sel_getUid("editSection:"));
objj_msgSend(_3b,"addSubview:",_40);
var _41=objj_msgSend(HUDButton,"buttonWithTitle:",CPLocalizedString("Customize Section","Customize Section"));
objj_msgSend(_41,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_40,"frame"))-5-CGRectGetWidth(objj_msgSend(_41,"frame")),CGRectGetMinY(objj_msgSend(_40,"frame"))));
objj_msgSend(_41,"setAutoresizingMask:",objj_msgSend(_40,"autoresizingMask"));
objj_msgSend(_41,"setEnabled:",NO);
objj_msgSend(_3b,"addSubview:",_41);
var _42=objj_msgSend(objj_msgSend(MMImageView,"alloc"),"initWithFrame:",CGRectMake(5,(CGRectGetHeight(objj_msgSend(_3b,"frame"))-16)/2,16,16));
objj_msgSend(_42,"setImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","spinnerBlackBackground.gif")));
objj_msgSend(_42,"bind:toObject:withKeyPath:options:","hidden",_37,"librarySection.refreshing",objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",CPNegateBooleanTransformerName,CPValueTransformerNameBindingOption));
objj_msgSend(_3b,"addSubview:",_42);
objj_msgSend(_3c,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_3c,"setAutohidesScrollers:",YES);
objj_msgSend(_3c,"setDocumentView:",_3d);
objj_msgSend(_3e,"setView:",_3f);
objj_msgSend(_3d,"setItemPrototype:",_3e);
objj_msgSend(_3d,"setMinItemSize:",objj_msgSend(_3f,"frame").size);
objj_msgSend(_3d,"setMaxItemSize:",objj_msgSend(_3f,"frame").size);
objj_msgSend(_3d,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_3d,"setDelegate:",_37);
objj_msgSend(_39,"addSubview:",_3c);
objj_msgSend(_39,"addSubview:",_3b);
_collectionView=_3d;
objj_msgSend(_37,"setView:",_39);
}
}),new objj_method(sel_getUid("collectionView:didDoubleClickOnItemAtIndex:"),function(_43,_44,_45,_46){
with(_43){
var _47=objj_msgSend(objj_msgSend(_43,"content"),"objectAtIndex:",_46),_48=objj_msgSend(CPString,"stringWithFormat:","/sections/%@/media/%@",objj_msgSend(_librarySection,"id"),objj_msgSend(_47,"id"));
objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"setLocation:",_48);
}
}),new objj_method(sel_getUid("editSection:"),function(_49,_4a,_4b){
with(_49){
var _4c=objj_msgSend(objj_msgSend(MMSectionSettingsSheet,"alloc"),"initWithDataSource:",objj_msgSend(MMLibrarySectionsDataSource,"sharedDataSource"));
objj_msgSend(_4c,"beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:",objj_msgSend(objj_msgSend(_49,"view"),"window"),_49,nil,_librarySection);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("keyPathsForValuesAffectingStatus"),function(_4d,_4e){
with(_4d){
return objj_msgSend(CPSet,"setWithObjects:","content","librarySection");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingTitle"),function(_4f,_50){
with(_4f){
return objj_msgSend(CPSet,"setWithObject:","librarySection");
}
})]);
p;35;Controllers/MMMediaItemController.jt;10851;@STATIC;1.0;I;25;AppKit/CPViewController.ji;40;../Controllers/MMImagePickerController.ji;40;../Controllers/MMMatchPickerController.ji;43;../Controllers/MMMetadataEditorController.ji;45;../Controllers/MMMediaItemToolbarController.ji;32;../Views/MMMediaItemDetailView.ji;23;../Views/MMSeasonCell.jt;10548;
objj_executeFile("AppKit/CPViewController.j",NO);
objj_executeFile("../Controllers/MMImagePickerController.j",YES);
objj_executeFile("../Controllers/MMMatchPickerController.j",YES);
objj_executeFile("../Controllers/MMMetadataEditorController.j",YES);
objj_executeFile("../Controllers/MMMediaItemToolbarController.j",YES);
objj_executeFile("../Views/MMMediaItemDetailView.j",YES);
objj_executeFile("../Views/MMSeasonCell.j",YES);
var _1=objj_allocateClassPair(CPViewController,"MMMediaItemController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_detailView"),new objj_ivar("_content"),new objj_ivar("_contentController"),new objj_ivar("_childrenController"),new objj_ivar("_mediaItemDataSource"),new objj_ivar("_editor"),new objj_ivar("_wantedChildMediaItemId"),new objj_ivar("_toolbarController")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("content"),function(_3,_4){
with(_3){
return _content;
}
}),new objj_method(sel_getUid("setContent:"),function(_5,_6,_7){
with(_5){
_content=_7;
}
}),new objj_method(sel_getUid("contentController"),function(_8,_9){
with(_8){
return _contentController;
}
}),new objj_method(sel_getUid("init"),function(_a,_b){
with(_a){
if(_a=objj_msgSendSuper({receiver:_a,super_class:objj_getClass("MMMediaItemController").super_class},"init")){
_dataSource=objj_msgSend(objj_msgSend(MMMetadataItemDataSource,"alloc"),"initWithDelegate:",_a);
_mediaItemDataSource=objj_msgSend(objj_msgSend(MMLibraryMediaDataSource,"alloc"),"initWithDelegate:",_a);
_childrenController=objj_msgSend(objj_msgSend(CPArrayController,"alloc"),"init");
}
return _a;
}
}),new objj_method(sel_getUid("title"),function(_c,_d){
with(_c){
return objj_msgSend(objj_msgSend(_c,"content"),"displayTitle");
}
}),new objj_method(sel_getUid("location"),function(_e,_f){
with(_e){
return objj_msgSend(objj_msgSend(_e,"class"),"locationForMediaItem:",objj_msgSend(_e,"content"));
}
}),new objj_method(sel_getUid("willBePushedOntoContentController:"),function(_10,_11,_12){
with(_10){
objj_msgSend(_10,"willChangeValueForKey:","contentController");
_contentController=_12;
objj_msgSend(_10,"didChangeValueForKey:","contentController");
}
}),new objj_method(sel_getUid("wasPoppedOffContentController:"),function(_13,_14,_15){
with(_13){
objj_msgSend(_13,"willChangeValueForKey:","contentController");
_contentController=nil;
objj_msgSend(_13,"didChangeValueForKey:","contentController");
}
}),new objj_method(sel_getUid("willBeOrderedBackByContentController:"),function(_16,_17,_18){
with(_16){
objj_msgSend(_detailView,"setContentHidden:",YES);
}
}),new objj_method(sel_getUid("willBeOrderedFrontByContentController:"),function(_19,_1a,_1b){
with(_19){
objj_msgSend(_detailView,"setContentHidden:",NO);
}
}),new objj_method(sel_getUid("loadView"),function(_1c,_1d){
with(_1c){
_toolbarController=objj_msgSend(objj_msgSend(MMMediaItemToolbarController,"alloc"),"init");
var _1e=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,800,800)),_1f=objj_msgSend(_toolbarController,"view"),_20=CGRectGetHeight(objj_msgSend(_1f,"frame")),_21=objj_msgSend(objj_msgSend(MMMediaItemDetailView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_1f,"setFrame:",CGRectMake(0,CGRectGetHeight(objj_msgSend(_1e,"frame"))-_20,CGRectGetWidth(objj_msgSend(_1e,"frame")),_20));
objj_msgSend(_21,"setFrame:",CGRectMake(0,0,CGRectGetWidth(objj_msgSend(_1e,"frame")),CGRectGetMinY(objj_msgSend(_1f,"frame"))));
objj_msgSend(_21,"setDelegate:",_1c);
objj_msgSend(_1f,"setAutoresizingMask:",CPViewMinYMargin|CPViewWidthSizable);
objj_msgSend(_21,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_1e,"addSubview:",_21);
objj_msgSend(_1e,"addSubview:",_1f);
objj_msgSend(_21,"bind:toObject:withKeyPath:options:","title",_1c,"title",nil);
objj_msgSend(_21,"bind:toObject:withKeyPath:options:","tagline",_1c,"subtitle",nil);
objj_msgSend(_21,"bind:toObject:withKeyPath:options:","year",_1c,"content.year",nil);
objj_msgSend(_21,"bind:toObject:withKeyPath:options:","summary",_1c,"content.summary",nil);
objj_msgSend(_21,"bind:toObject:withKeyPath:options:","thumbImage",_1c,"content.thumbImage",nil);
objj_msgSend(_21,"bind:toObject:withKeyPath:options:","artImage",_1c,"content.root.artImage",nil);
objj_msgSend(_toolbarController,"bind:toObject:withKeyPath:options:","content",_1c,"content",nil);
objj_msgSend(_toolbarController,"bind:toObject:withKeyPath:options:","contentController",_1c,"contentController",nil);
_detailView=_21;
objj_msgSend(_1c,"setView:",_1e);
}
}),new objj_method(sel_getUid("itemStatus"),function(_22,_23){
with(_22){
var _24=objj_msgSend(objj_msgSend(_22,"content"),"updatedAt");
if(!_24){
return nil;
}
return objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Last refreshed %@ at %@","Status label for media items"),objj_msgSend(_24,"relativeDate"),objj_msgSend(_24,"shortLocalTime"));
}
}),new objj_method(sel_getUid("subtitle"),function(_25,_26){
with(_25){
return objj_msgSend(objj_msgSend(_25,"content"),"tagline");
}
}),new objj_method(sel_getUid("setContent:"),function(_27,_28,_29){
with(_27){
if(objj_msgSend(_content,"isEqual:",_29)){
return;
}
_content=_29;
objj_msgSend(_childrenController,"setContent:",[]);
switch(objj_msgSend(_content,"type")){
case MMLibraryMediaItemTypeShow:
objj_msgSend(_27,"view");
var _2a=objj_msgSend(objj_msgSend(CPCollectionViewItem,"alloc"),"init"),_2b=objj_msgSend(objj_msgSend(MMSeasonCell,"alloc"),"initWithFrame:",CGRectMake(0,0,155,198));
objj_msgSend(_2a,"setView:",_2b);
objj_msgSend(_detailView,"setChildItemPrototype:",_2a);
objj_msgSend(_detailView,"setChildrenController:",_childrenController);
objj_msgSend(_mediaItemDataSource,"refreshRecordsWithContextInfo:",_content);
break;
default:
objj_msgSend(_detailView,"setChildItemPrototype:",nil);
objj_msgSend(_detailView,"setChildrenController:",nil);
break;
}
}
}),new objj_method(sel_getUid("wasPushedOntoContentController:"),function(_2c,_2d,_2e){
with(_2c){
var _2f=objj_msgSend(_2c,"location"),_30=objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"formattedHash");
if(objj_msgSend(_30,"isEqualToString:",_2f)){
return;
}
if(!objj_msgSend(_30,"hasPrefix:",_2f)){
return;
}
var _31=objj_msgSend(_30,"substringFromIndex:",objj_msgSend(_2f,"length"));
if(!objj_msgSend(_31,"hasPrefix:","/children/")){
return;
}
_31=objj_msgSend(_31,"substringFromIndex:",objj_msgSend("/children/","length"));
var _32=objj_msgSend(_31,"componentsSeparatedByString:","/");
_wantedChildMediaItemId=Number(objj_msgSend(_32,"objectAtIndex:",0));
var _33=objj_msgSend(_childrenController,"content");
for(var i=0,_34=objj_msgSend(_33,"count");i<_34;i++){
var _35=_33[i];
if(objj_msgSend(_35,"id")==_wantedChildMediaItemId){
_wantedChildMediaItemId=nil;
var _36=objj_msgSend(objj_msgSend(MMSeasonController,"alloc"),"init");
objj_msgSend(_36,"setContent:",_35);
objj_msgSend(_contentController,"pushViewController:animated:",_36,NO);
}
}
}
}),new objj_method(sel_getUid("dataSource:didReceiveRecords:contextInfo:"),function(_37,_38,_39,_3a,_3b){
with(_37){
if((_39==_mediaItemDataSource)&&(_3b==objj_msgSend(_37,"content"))){
objj_msgSend(_childrenController,"setContent:",_3a);
if(_wantedChildMediaItemId){
for(var i=0,_3c=objj_msgSend(_3a,"count");i<_3c;i++){
var _3d=_3a[i];
if(objj_msgSend(_3d,"id")==_wantedChildMediaItemId){
_wantedChildMediaItemId=nil;
var _3e=objj_msgSend(objj_msgSend(MMSeasonController,"alloc"),"init");
objj_msgSend(_3e,"setContent:",_3d);
objj_msgSend(_contentController,"pushViewController:animated:",_3e,NO);
}
}
}
}
}
}),new objj_method(sel_getUid("fixIncorrectMatch:"),function(_3f,_40,_41){
with(_3f){
_matchPicker=objj_msgSend(objj_msgSend(MMMatchPickerController,"alloc"),"initWithDelegate:",_3f);
objj_msgSend(_matchPicker,"setMediaItem:",objj_msgSend(_3f,"content"));
objj_msgSend(_matchPicker,"presentSheetInWindow:",objj_msgSend(objj_msgSend(_3f,"view"),"window"));
}
}),new objj_method(sel_getUid("picker:didSelectSearchResult:"),function(_42,_43,_44,_45){
with(_42){
if(_44!==_matchPicker){
return;
}
CPLog.info("[%@ -picker:didSelectSearchResult:] user chose %@ as the correct match for %@",objj_msgSend(_42,"class"),_45,objj_msgSend(_42,"content"));
objj_msgSend(_matchPicker,"dismissSheet"),_matchPicker=nil;
objj_msgSend(objj_msgSend(MMMediaMatchesDataSource,"sharedDataSource"),"selectMatch:forMediaItem:",_45,objj_msgSend(_42,"content"));
}
}),new objj_method(sel_getUid("imagePicker:didSelectThumbnailForImage:"),function(_46,_47,_48,_49){
with(_46){
if(objj_msgSend(objj_msgSend(_48,"dataSource"),"isKindOfClass:",MMPosterMetadataDataSource)){
objj_msgSend(_detailView,"setThumbImage:",objj_msgSend(_49,"image"));
}else{
if(objj_msgSend(objj_msgSend(_48,"dataSource"),"isKindOfClass:",MMBackgroundArtMetadataDataSource)){
objj_msgSend(_detailView,"setArtImage:",objj_msgSend(_49,"image"));
}
}
}
}),new objj_method(sel_getUid("imagePickerDidCancel:"),function(_4a,_4b,_4c){
with(_4a){
if(objj_msgSend(objj_msgSend(_4c,"dataSource"),"isKindOfClass:",MMPosterMetadataDataSource)){
objj_msgSend(_detailView,"setThumbImage:",objj_msgSend(objj_msgSend(_4a,"content"),"thumbImage"));
}else{
if(objj_msgSend(objj_msgSend(_4c,"dataSource"),"isKindOfClass:",MMBackgroundArtMetadataDataSource)){
objj_msgSend(_detailView,"setArtImage:",objj_msgSend(objj_msgSend(_4a,"content"),"artImage"));
}
}
}
}),new objj_method(sel_getUid("matchPickerDidCancel:"),function(_4d,_4e,_4f){
with(_4d){
objj_msgSend(_matchPicker,"dismissSheet"),_matchPicker=nil;
}
}),new objj_method(sel_getUid("mediaItemDetailView:didSelectChild:"),function(_50,_51,_52,_53){
with(_50){
objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"setLocation:",objj_msgSend(MMSeasonController,"locationForSeason:",_53));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("keyPathsForValuesAffectingTitle"),function(_54,_55){
with(_54){
return objj_msgSend(CPSet,"setWithObjects:","content","content.displayTitle");
}
}),new objj_method(sel_getUid("locationForMediaItem:"),function(_56,_57,_58){
with(_56){
return objj_msgSend(CPString,"stringWithFormat:","/sections/%@/media/%@",objj_msgSend(objj_msgSend(_58,"librarySection"),"id"),objj_msgSend(_58,"id"));
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingItemStatus"),function(_59,_5a){
with(_59){
return objj_msgSend(CPSet,"setWithObjects:","content","content.updatedAt");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingSubtitle"),function(_5b,_5c){
with(_5b){
return objj_msgSend(CPSet,"setWithObjects:","content","content.tagline");
}
})]);
p;42;Controllers/MMMediaItemToolbarController.jt;10318;@STATIC;1.0;I;25;AppKit/CPViewController.ji;20;../Views/MMToolbar.jt;10243;
objj_executeFile("AppKit/CPViewController.j",NO);
objj_executeFile("../Views/MMToolbar.j",YES);
var _1=objj_allocateClassPair(CPViewController,"MMMediaItemToolbarController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_content"),new objj_ivar("_contentController"),new objj_ivar("_dataSource"),new objj_ivar("_changeArtworkMenu")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("content"),function(_3,_4){
with(_3){
return _content;
}
}),new objj_method(sel_getUid("setContent:"),function(_5,_6,_7){
with(_5){
_content=_7;
}
}),new objj_method(sel_getUid("contentController"),function(_8,_9){
with(_8){
return _contentController;
}
}),new objj_method(sel_getUid("setContentController:"),function(_a,_b,_c){
with(_a){
_contentController=_c;
}
}),new objj_method(sel_getUid("loadView"),function(_d,_e){
with(_d){
var _f=objj_msgSend(objj_msgSend(MMToolbar,"alloc"),"initWithFrame:style:",CGRectMake(0,0,400,30),MMToolbarHUDStyle);
var _10=objj_msgSend(CPTextField,"labelWithTitle:","");
objj_msgSend(_10,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_10,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_10,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",10));
objj_msgSend(_10,"setFrame:",CGRectMake(10,(CGRectGetHeight(objj_msgSend(_f,"frame"))-CGRectGetHeight(objj_msgSend(_10,"frame")))/2,CGRectGetWidth(objj_msgSend(_f,"frame")),CGRectGetHeight(objj_msgSend(_10,"frame"))));
objj_msgSend(_10,"bind:toObject:withKeyPath:options:",CPValueBinding,_d,"status",nil);
objj_msgSend(_f,"addSubview:",_10);
var _11=objj_msgSend(HUDButton,"buttonWithTitle:",CPLocalizedString("Edit Metadata","Edit Metadata"));
objj_msgSend(_11,"setKeyEquivalent:","i");
objj_msgSend(_11,"setKeyEquivalentModifierMask:",CPCommandKeyMask);
objj_msgSend(_11,"setFrameOrigin:",CGPointMake(CGRectGetWidth(objj_msgSend(_f,"frame"))-5-CGRectGetWidth(objj_msgSend(_11,"frame")),(CGRectGetHeight(objj_msgSend(_f,"frame"))-CGRectGetHeight(objj_msgSend(_11,"frame")))/2));
objj_msgSend(_11,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin|CPViewMinXMargin);
objj_msgSend(_11,"setTarget:",_d);
objj_msgSend(_11,"setAction:",sel_getUid("editMetadata:"));
objj_msgSend(_11,"bind:toObject:withKeyPath:options:","enabled",_d,"editMetadataEnabled",nil);
objj_msgSend(_f,"addSubview:",_11);
var _12=objj_msgSend(HUDButton,"buttonWithTitle:",CPLocalizedString("Change Artwork","Change Artwork"));
objj_msgSend(_12,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_11,"frame"))-5-CGRectGetWidth(objj_msgSend(_12,"frame")),(CGRectGetHeight(objj_msgSend(_f,"frame"))-CGRectGetHeight(objj_msgSend(_12,"frame")))/2));
objj_msgSend(_12,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin|CPViewMinXMargin);
objj_msgSend(_12,"setTarget:",_d);
objj_msgSend(_12,"setAction:",sel_getUid("changeArtwork:"));
objj_msgSend(_f,"addSubview:",_12);
var _13=objj_msgSend(HUDButton,"buttonWithTitle:",CPLocalizedString("Fix incorrect match","Fix incorrect match"));
objj_msgSend(_13,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_12,"frame"))-5-CGRectGetWidth(objj_msgSend(_13,"frame")),(CGRectGetHeight(objj_msgSend(_f,"frame"))-CGRectGetHeight(objj_msgSend(_13,"frame")))/2));
objj_msgSend(_13,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin|CPViewMinXMargin);
objj_msgSend(_13,"setTarget:",_d);
objj_msgSend(_13,"setAction:",sel_getUid("fixIncorrectMatch:"));
objj_msgSend(_13,"bind:toObject:withKeyPath:options:","enabled",_d,"fixIncorrectMatchEnabled",nil);
objj_msgSend(_f,"addSubview:",_13);
_changeArtworkMenu=objj_msgSend(objj_msgSend(CPMenu,"alloc"),"initWithTitle:","");
objj_msgSend(_changeArtworkMenu,"setAutoenablesItems:",NO);
var _14=objj_msgSend(_changeArtworkMenu,"addItemWithTitle:action:keyEquivalent:","",sel_getUid("choosePoster:"),nil);
objj_msgSend(_14,"setTarget:",_d);
objj_msgSend(_14,"bind:toObject:withKeyPath:options:","enabled",_d,"choosePosterEnabled",nil);
objj_msgSend(_14,"bind:toObject:withKeyPath:options:","title",_d,"titleForChoosePosterMenuItem",nil);
var _15=objj_msgSend(_changeArtworkMenu,"addItemWithTitle:action:keyEquivalent:",CPLocalizedString("Choose Banner","Choose Banner"),sel_getUid("chooseBanner:"),nil);
objj_msgSend(_15,"setTarget:",_d);
objj_msgSend(_15,"bind:toObject:withKeyPath:options:","enabled",_d,"chooseBannerEnabled",nil);
var _16=objj_msgSend(_changeArtworkMenu,"addItemWithTitle:action:keyEquivalent:",CPLocalizedString("Choose Background Art","Choose Background Art"),sel_getUid("chooseBackgroundArt:"),nil);
objj_msgSend(_16,"setTarget:",_d);
objj_msgSend(_16,"bind:toObject:withKeyPath:options:","enabled",_d,"chooseBackgroundArtEnabled",nil);
objj_msgSend(_d,"setView:",_f);
}
}),new objj_method(sel_getUid("status"),function(_17,_18){
with(_17){
var _19=objj_msgSend(objj_msgSend(_17,"content"),"updatedAt");
if(!_19){
return nil;
}
return objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Last refreshed %@ at %@","Status label for media items"),objj_msgSend(_19,"relativeDate"),objj_msgSend(_19,"shortLocalTime"));
}
}),new objj_method(sel_getUid("isFixIncorrectMatchEnabled"),function(_1a,_1b){
with(_1a){
return objj_msgSend(objj_msgSend(_1a,"content"),"parent")==nil;
}
}),new objj_method(sel_getUid("titleForChoosePosterMenuItem"),function(_1c,_1d){
with(_1c){
switch(objj_msgSend(objj_msgSend(_1c,"content"),"type")){
case MMLibraryMediaItemTypeEpisode:
return CPLocalizedString("Choose Episode Thumbnail","Choose Episode Thumbnail menu item");
case MMLibraryMediaItemTypeSeason:
return CPLocalizedString("Choose Season Thumbnail","Choose Season Thumbnail menu item");
default:
return CPLocalizedString("Choose Poster","Choose Poster menu item");
}
}
}),new objj_method(sel_getUid("isEditMetadataEnabled"),function(_1e,_1f){
with(_1e){
return objj_msgSend(objj_msgSend(_1e,"content"),"type")!=MMLibraryMediaItemTypeSeason;
}
}),new objj_method(sel_getUid("isChoosePosterEnabled"),function(_20,_21){
with(_20){
return YES;
}
}),new objj_method(sel_getUid("isChooseBannerEnabled"),function(_22,_23){
with(_22){
return objj_msgSend(objj_msgSend(_22,"content"),"parent")==nil;
}
}),new objj_method(sel_getUid("isChooseBackgroundArtEnabled"),function(_24,_25){
with(_24){
return objj_msgSend(objj_msgSend(_24,"content"),"parent")==nil;
}
}),new objj_method(sel_getUid("changeArtwork:"),function(_26,_27,_28){
with(_26){
objj_msgSend(_changeArtworkMenu,"popUpMenuPositioningItem:atLocation:inView:callback:",objj_msgSend(objj_msgSend(_changeArtworkMenu,"itemArray"),"objectAtIndex:",0),CGPointMake(0,0),_28,nil);
}
}),new objj_method(sel_getUid("choosePoster:"),function(_29,_2a,_2b){
with(_29){
_imagePicker=objj_msgSend(objj_msgSend(MMImagePickerController,"alloc"),"initWithDelegate:",_29);
objj_msgSend(_imagePicker,"setMediaItem:",objj_msgSend(_29,"content"));
objj_msgSend(_imagePicker,"setItemSize:",CGSizeMake(128,150));
objj_msgSend(_imagePicker,"setDataSource:",objj_msgSend(MMPosterMetadataDataSource,"sharedDataSource"));
objj_msgSend(_contentController,"pushViewController:animated:",_imagePicker,YES);
}
}),new objj_method(sel_getUid("chooseBanner:"),function(_2c,_2d,_2e){
with(_2c){
_imagePicker=objj_msgSend(objj_msgSend(MMImagePickerController,"alloc"),"initWithDelegate:",_2c);
objj_msgSend(_imagePicker,"setMediaItem:",objj_msgSend(_2c,"content"));
objj_msgSend(_imagePicker,"setItemSize:",CGSizeMake(150,75));
objj_msgSend(_imagePicker,"setDataSource:",objj_msgSend(MMBannerMetadataDataSource,"sharedDataSource"));
objj_msgSend(_contentController,"pushViewController:animated:",_imagePicker,YES);
}
}),new objj_method(sel_getUid("chooseBackgroundArt:"),function(_2f,_30,_31){
with(_2f){
_imagePicker=objj_msgSend(objj_msgSend(MMImagePickerController,"alloc"),"initWithDelegate:",_2f);
objj_msgSend(_imagePicker,"setMediaItem:",objj_msgSend(_2f,"content"));
objj_msgSend(_imagePicker,"setItemSize:",CGSizeMake(150,75));
objj_msgSend(_imagePicker,"setDataSource:",objj_msgSend(MMBackgroundArtMetadataDataSource,"sharedDataSource"));
objj_msgSend(_contentController,"pushViewController:animated:",_imagePicker,YES);
}
}),new objj_method(sel_getUid("editMetadata:"),function(_32,_33,_34){
with(_32){
_editor=objj_msgSend(objj_msgSend(MMMetadataEditorController,"alloc"),"initWithDelegate:",_32);
objj_msgSend(_editor,"presentMediaItem:inWindow:",objj_msgSend(_32,"content"),objj_msgSend(objj_msgSend(_32,"view"),"window"));
}
}),new objj_method(sel_getUid("metadataEditor:didCommitMetadataItem:"),function(_35,_36,_37,_38){
with(_35){
if(_dataSource==nil){
_dataSource=objj_msgSend(objj_msgSend(MMMetadataItemDataSource,"alloc"),"initWithDelegate:",_35);
}
objj_msgSend(_dataSource,"updateRecord:",_38);
}
}),new objj_method(sel_getUid("dataSource:didUpdateRecord:contextInfo:"),function(_39,_3a,_3b,_3c,_3d){
with(_39){
if(_3b==_dataSource){
objj_msgSend(_editor,"dismissSheet");
}
}
}),new objj_method(sel_getUid("dataSource:didFailToUpdateRecord:withError:contextInfo:"),function(_3e,_3f,_40,_41,_42,_43){
with(_3e){
if(_40==_dataSource){
objj_msgSend(AppController,"notifyUserOfError:withTitle:",_42,"Unable to update metadata");
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("keyPathsForValuesAffectingStatus"),function(_44,_45){
with(_44){
return objj_msgSend(CPSet,"setWithObjects:","content","content.updatedAt");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingFixIncorrectMatchEnabled"),function(_46,_47){
with(_46){
return objj_msgSend(CPSet,"setWithObjects:","content","content.parent");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingTitleForChoosePosterMenuItem"),function(_48,_49){
with(_48){
return objj_msgSend(CPSet,"setWithObjects:","content","content.parent");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingEditMetadataEnabled"),function(_4a,_4b){
with(_4a){
return objj_msgSend(CPSet,"setWithObjects:","content","content.type");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingChooseBannerEnabled"),function(_4c,_4d){
with(_4c){
return objj_msgSend(CPSet,"setWithObjects:","content","content.parent");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingChooseBackgroundArtEnabled"),function(_4e,_4f){
with(_4e){
return objj_msgSend(CPSet,"setWithObjects:","content","content.parent");
}
})]);
p;40;Controllers/MMMetadataEditorController.jt;18826;@STATIC;1.0;I;25;AppKit/CPViewController.ji;22;../CPDateTransformer.ji;26;../Models/MMMetadataItem.ji;21;../CPView+sizeToFit.ji;27;../Views/MMSheetContainer.ji;23;../Views/MMLockButton.jt;18632;
objj_executeFile("AppKit/CPViewController.j",NO);
objj_executeFile("../CPDateTransformer.j",YES);
objj_executeFile("../Models/MMMetadataItem.j",YES);
objj_executeFile("../CPView+sizeToFit.j",YES);
objj_executeFile("../Views/MMSheetContainer.j",YES);
objj_executeFile("../Views/MMLockButton.j",YES);
var _1=objj_allocateClassPair(CPViewController,"MMMetadataEditorController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_delegate"),new objj_ivar("_metadataItem"),new objj_ivar("_sheetPanel"),new objj_ivar("_initialFirstResponder")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("delegate"),function(_3,_4){
with(_3){
return _delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_5,_6,_7){
with(_5){
_delegate=_7;
}
}),new objj_method(sel_getUid("metadataItem"),function(_8,_9){
with(_8){
return _metadataItem;
}
}),new objj_method(sel_getUid("setMetadataItem:"),function(_a,_b,_c){
with(_a){
_metadataItem=_c;
}
}),new objj_method(sel_getUid("initWithDelegate:"),function(_d,_e,_f){
with(_d){
if(_d=objj_msgSend(_d,"init")){
_delegate=_f;
}
return _d;
}
}),new objj_method(sel_getUid("loadView"),function(_10,_11){
with(_10){
var _12=260,_13=186,_14=122,_15=10,_16=objj_msgSend(CPFont,"boldSystemFontOfSize:",12);
var _17=objj_msgSend(objj_msgSend(MMSheetContainer,"alloc"),"initWithFrame:",CGRectMakeZero());
var _18=objj_msgSend(_17,"currentValueForThemeAttribute:","content-inset");
var _19=objj_msgSend(CPTextField,"textFieldWithStringValue:placeholder:width:","","",_13);
var _1a=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Title","Title"));
objj_msgSend(_1a,"setFont:",_16);
objj_msgSend(_1a,"sizeToFit");
objj_msgSend(_1a,"setFrameOrigin:",CGPointMake(_18.left,_18.top));
objj_msgSend(_19,"setFrameOrigin:",CGPointMake(_18.left,CGRectGetMaxY(objj_msgSend(_1a,"frame"))));
objj_msgSend(_19,"bind:toObject:withKeyPath:options:",CPValueBinding,_10,"metadataItem.title",nil);
objj_msgSend(_17,"addSubview:",_19);
objj_msgSend(_17,"addSubview:",_1a);
var _1b=objj_msgSend(MMLockButton,"buttonForField:",_19);
objj_msgSend(_1b,"bind:toObject:withKeyPath:options:","locked",_10,"metadataItem.titleLocked",nil);
objj_msgSend(_17,"addSubview:",_1b);
var _1c=objj_msgSend(CPTextField,"textFieldWithStringValue:placeholder:width:","","",_13);
var _1d=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Sort Title","Sort Title"));
objj_msgSend(_1d,"setFont:",_16);
objj_msgSend(_1d,"sizeToFit");
objj_msgSend(_1d,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(_1b,"frame"))+_15,CGRectGetMinY(objj_msgSend(_1a,"frame"))));
objj_msgSend(_1c,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_1d,"frame")),CGRectGetMinY(objj_msgSend(_19,"frame"))));
objj_msgSend(_1c,"bind:toObject:withKeyPath:options:",CPValueBinding,_10,"metadataItem.titleSort",nil);
objj_msgSend(_17,"addSubview:",_1c);
objj_msgSend(_17,"addSubview:",_1d);
var _1e=objj_msgSend(MMLockButton,"buttonForField:",_1c);
objj_msgSend(_1e,"bind:toObject:withKeyPath:options:","locked",_10,"metadataItem.titleSortLocked",nil);
objj_msgSend(_17,"addSubview:",_1e);
var _1f=objj_msgSend(CPTextField,"textFieldWithStringValue:placeholder:width:","","",_14);
var _20=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Year","Year"));
objj_msgSend(_20,"setFont:",_16);
objj_msgSend(_20,"sizeToFit");
objj_msgSend(_20,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(_1e,"frame"))+_15,CGRectGetMinY(objj_msgSend(_1d,"frame"))));
objj_msgSend(_1f,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_20,"frame")),CGRectGetMinY(objj_msgSend(_1c,"frame"))));
objj_msgSend(_1f,"bind:toObject:withKeyPath:options:",CPValueBinding,_10,"metadataItem.year",nil);
objj_msgSend(_17,"addSubview:",_1f);
objj_msgSend(_17,"addSubview:",_20);
var _21=objj_msgSend(MMLockButton,"buttonForField:",_1f);
objj_msgSend(_21,"bind:toObject:withKeyPath:options:","locked",_10,"metadataItem.yearLocked",nil);
objj_msgSend(_17,"addSubview:",_21);
var _22=objj_msgSend(CPTextField,"textFieldWithStringValue:placeholder:width:","","",_13);
var _23=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Original Title","Original Title"));
objj_msgSend(_23,"setFont:",_16);
objj_msgSend(_23,"sizeToFit");
objj_msgSend(_23,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_1a,"frame")),CGRectGetMaxY(objj_msgSend(_19,"frame"))+_15));
objj_msgSend(_22,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_23,"frame")),CGRectGetMaxY(objj_msgSend(_23,"frame"))));
objj_msgSend(_22,"bind:toObject:withKeyPath:options:",CPValueBinding,_10,"metadataItem.originalTitle",nil);
objj_msgSend(_17,"addSubview:",_22);
objj_msgSend(_17,"addSubview:",_23);
var _24=objj_msgSend(MMLockButton,"buttonForField:",_22);
objj_msgSend(_24,"bind:toObject:withKeyPath:options:","locked",_10,"metadataItem.originalTitleLocked",nil);
objj_msgSend(_17,"addSubview:",_24);
var _25=objj_msgSend(CPTextField,"textFieldWithStringValue:placeholder:width:","","",_13);
var _26=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Tagline","Tagline"));
objj_msgSend(_26,"setFont:",_16);
objj_msgSend(_26,"sizeToFit");
objj_msgSend(_26,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(_24,"frame"))+_15,CGRectGetMinY(objj_msgSend(_23,"frame"))));
objj_msgSend(_25,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_26,"frame")),CGRectGetMinY(objj_msgSend(_22,"frame"))));
objj_msgSend(_25,"bind:toObject:withKeyPath:options:",CPValueBinding,_10,"metadataItem.tagline",nil);
objj_msgSend(_17,"addSubview:",_25);
objj_msgSend(_17,"addSubview:",_26);
var _27=objj_msgSend(MMLockButton,"buttonForField:",_25);
objj_msgSend(_27,"bind:toObject:withKeyPath:options:","locked",_10,"metadataItem.taglineLocked",nil);
objj_msgSend(_17,"addSubview:",_27);
var _28=objj_msgSend(CPTextField,"textFieldWithStringValue:placeholder:width:","","",_14);
var _29=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Rating","Rating"));
objj_msgSend(_29,"setFont:",_16);
objj_msgSend(_29,"sizeToFit");
objj_msgSend(_29,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(_27,"frame"))+_15,CGRectGetMinY(objj_msgSend(_26,"frame"))));
objj_msgSend(_28,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_29,"frame")),CGRectGetMinY(objj_msgSend(_25,"frame"))));
objj_msgSend(_28,"bind:toObject:withKeyPath:options:",CPValueBinding,_10,"metadataItem.rating",nil);
objj_msgSend(_17,"addSubview:",_28);
objj_msgSend(_17,"addSubview:",_29);
var _2a=objj_msgSend(MMLockButton,"buttonForField:",_28);
objj_msgSend(_2a,"bind:toObject:withKeyPath:options:","locked",_10,"metadataItem.ratingLocked",nil);
objj_msgSend(_17,"addSubview:",_2a);
var _2b=objj_msgSend(LPMultiLineTextField,"textFieldWithStringValue:placeholder:width:","","",CGRectGetMaxX(objj_msgSend(_28,"frame"))-CGRectGetMinX(objj_msgSend(_22,"frame")));
var _2c=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Summary","Summary"));
objj_msgSend(_2c,"setFont:",_16);
objj_msgSend(_2c,"sizeToFit");
objj_msgSend(_2c,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_23,"frame")),CGRectGetMaxY(objj_msgSend(_22,"frame"))+_15));
objj_msgSend(_2b,"setFrame:",CGRectMake(CGRectGetMinX(objj_msgSend(_2c,"frame")),CGRectGetMaxY(objj_msgSend(_2c,"frame")),CGRectGetWidth(objj_msgSend(_2b,"frame")),96));
objj_msgSend(_2b,"bind:toObject:withKeyPath:options:",CPValueBinding,_10,"metadataItem.summary",nil);
objj_msgSend(_17,"addSubview:",_2b);
objj_msgSend(_17,"addSubview:",_2c);
var _2d=objj_msgSend(MMLockButton,"buttonForField:",_2b);
objj_msgSend(_2d,"bind:toObject:withKeyPath:options:","locked",_10,"metadataItem.summaryLocked",nil);
objj_msgSend(_17,"addSubview:",_2d);
var _2e=objj_msgSend(CPTextField,"textFieldWithStringValue:placeholder:width:","","",_12);
var _2f=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Studio","Studio"));
objj_msgSend(_2f,"setFont:",_16);
objj_msgSend(_2f,"sizeToFit");
objj_msgSend(_2f,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_2c,"frame")),CGRectGetMaxY(objj_msgSend(_2b,"frame"))+_15));
objj_msgSend(_2e,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_2f,"frame")),CGRectGetMaxY(objj_msgSend(_2f,"frame"))));
objj_msgSend(_2e,"bind:toObject:withKeyPath:options:",CPValueBinding,_10,"metadataItem.studio",nil);
objj_msgSend(_17,"addSubview:",_2e);
objj_msgSend(_17,"addSubview:",_2f);
var _30=objj_msgSend(MMLockButton,"buttonForField:",_2e);
objj_msgSend(_30,"bind:toObject:withKeyPath:options:","locked",_10,"metadataItem.studioLocked",nil);
objj_msgSend(_17,"addSubview:",_30);
var _31=objj_msgSend(CPTextField,"textFieldWithStringValue:placeholder:width:","","",_14);
var _32=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Originally Available","Originally Available"));
objj_msgSend(_32,"setFont:",_16);
objj_msgSend(_32,"sizeToFit");
objj_msgSend(_32,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_2d,"frame"))-CGRectGetWidth(objj_msgSend(_31,"frame")),CGRectGetMinY(objj_msgSend(_2f,"frame"))));
objj_msgSend(_31,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_32,"frame")),CGRectGetMaxY(objj_msgSend(_32,"frame"))));
objj_msgSend(_31,"bind:toObject:withKeyPath:options:",CPValueBinding,_10,"metadataItem.originallyAvailableAt",objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(objj_msgSend(CPDateTransformer,"alloc"),"init"),CPValueTransformerBindingOption));
objj_msgSend(_17,"addSubview:",_31);
objj_msgSend(_17,"addSubview:",_32);
var _33=objj_msgSend(MMLockButton,"buttonForField:",_31);
objj_msgSend(_33,"bind:toObject:withKeyPath:options:","locked",_10,"metadataItem.originallyAvailableAtLocked",nil);
objj_msgSend(_17,"addSubview:",_33);
var _34=objj_msgSend(CPTextField,"textFieldWithStringValue:placeholder:width:","","",CGRectGetMinX(objj_msgSend(_31,"frame"))-CGRectGetMaxX(objj_msgSend(_30,"frame"))-_15*2-CGRectGetWidth(objj_msgSend(_30,"frame")));
var _35=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Content Rating","Content Rating"));
objj_msgSend(_35,"setFont:",_16);
objj_msgSend(_35,"sizeToFit");
objj_msgSend(_35,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(_30,"frame"))+_15,CGRectGetMinY(objj_msgSend(_2f,"frame"))));
objj_msgSend(_34,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_35,"frame")),CGRectGetMaxY(objj_msgSend(_35,"frame"))));
objj_msgSend(_34,"bind:toObject:withKeyPath:options:",CPValueBinding,_10,"metadataItem.contentRating",nil);
objj_msgSend(_17,"addSubview:",_34);
objj_msgSend(_17,"addSubview:",_35);
var _36=objj_msgSend(MMLockButton,"buttonForField:",_34);
objj_msgSend(_36,"bind:toObject:withKeyPath:options:","locked",_10,"metadataItem.contentRatingLocked",nil);
objj_msgSend(_17,"addSubview:",_36);
var _37=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Writers","Writers"));
objj_msgSend(_37,"setFont:",_16);
objj_msgSend(_37,"sizeToFit");
objj_msgSend(_37,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_2f,"frame")),CGRectGetMaxY(objj_msgSend(_2e,"frame"))+_15));
var _38=objj_msgSend(objj_msgSend(CPTokenField,"alloc"),"initWithFrame:",CGRectMake(CGRectGetMinX(objj_msgSend(_37,"frame")),CGRectGetMaxY(objj_msgSend(_37,"frame")),0,0));
objj_msgSend(_38,"sizeToFit");
objj_msgSend(_38,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_2e,"frame")),CGRectGetHeight(objj_msgSend(_38,"frame"))));
objj_msgSend(_38,"setEditable:",YES);
objj_msgSend(_38,"bind:toObject:withKeyPath:options:",CPValueBinding,_10,"metadataItem.writers",nil);
objj_msgSend(_17,"addSubview:",_38);
objj_msgSend(_17,"addSubview:",_37);
var _39=objj_msgSend(MMLockButton,"buttonForField:",_38);
objj_msgSend(_39,"bind:toObject:withKeyPath:options:","locked",_10,"metadataItem.writersLocked",nil);
objj_msgSend(_17,"addSubview:",_39);
var _3a=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Directors","Directors"));
objj_msgSend(_3a,"setFont:",_16);
objj_msgSend(_3a,"sizeToFit");
objj_msgSend(_3a,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(_39,"frame"))+_15,CGRectGetMinY(objj_msgSend(_37,"frame"))));
var _3b=objj_msgSend(objj_msgSend(CPTokenField,"alloc"),"initWithFrame:",CGRectMake(CGRectGetMinX(objj_msgSend(_3a,"frame")),CGRectGetMaxY(objj_msgSend(_3a,"frame")),0,0));
objj_msgSend(_3b,"sizeToFit");
objj_msgSend(_3b,"setFrameSize:",CGSizeMake(CGRectGetMinX(objj_msgSend(_33,"frame"))-CGRectGetMinX(objj_msgSend(_39,"frame"))-_15-CGRectGetWidth(objj_msgSend(_39,"frame")),CGRectGetHeight(objj_msgSend(_3b,"frame"))));
objj_msgSend(_3b,"setEditable:",YES);
objj_msgSend(_3b,"bind:toObject:withKeyPath:options:",CPValueBinding,_10,"metadataItem.directors",nil);
objj_msgSend(_17,"addSubview:",_3b);
objj_msgSend(_17,"addSubview:",_3a);
var _3c=objj_msgSend(MMLockButton,"buttonForField:",_3b);
objj_msgSend(_3c,"bind:toObject:withKeyPath:options:","locked",_10,"metadataItem.directorsLocked",nil);
objj_msgSend(_17,"addSubview:",_3c);
var _3d=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Genres","Genres"));
objj_msgSend(_3d,"setFont:",_16);
objj_msgSend(_3d,"sizeToFit");
objj_msgSend(_3d,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_37,"frame")),CGRectGetMaxY(objj_msgSend(_38,"frame"))+_15));
var _3e=objj_msgSend(objj_msgSend(CPTokenField,"alloc"),"initWithFrame:",CGRectMake(CGRectGetMinX(objj_msgSend(_3d,"frame")),CGRectGetMaxY(objj_msgSend(_3d,"frame")),0,0));
objj_msgSend(_3e,"sizeToFit");
objj_msgSend(_3e,"setFrameSize:",CGSizeMake(_12,CGRectGetHeight(objj_msgSend(_3e,"frame"))));
objj_msgSend(_3e,"setEditable:",YES);
objj_msgSend(_3e,"bind:toObject:withKeyPath:options:",CPValueBinding,_10,"metadataItem.genres",nil);
objj_msgSend(_17,"addSubview:",_3e);
objj_msgSend(_17,"addSubview:",_3d);
var _3f=objj_msgSend(MMLockButton,"buttonForField:",_3e);
objj_msgSend(_3f,"bind:toObject:withKeyPath:options:","locked",_10,"metadataItem.genresLocked",nil);
objj_msgSend(_17,"addSubview:",_3f);
var _40=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Collections","Collections"));
objj_msgSend(_40,"setFont:",_16);
objj_msgSend(_40,"sizeToFit");
objj_msgSend(_40,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(_3f,"frame"))+_15,CGRectGetMinY(objj_msgSend(_3d,"frame"))));
var _41=objj_msgSend(objj_msgSend(CPTokenField,"alloc"),"initWithFrame:",CGRectMake(CGRectGetMinX(objj_msgSend(_40,"frame")),CGRectGetMaxY(objj_msgSend(_40,"frame")),CGRectGetWidth(objj_msgSend(_3b,"frame")),CGRectGetHeight(objj_msgSend(_3b,"frame"))));
objj_msgSend(_41,"setEditable:",YES);
objj_msgSend(_41,"bind:toObject:withKeyPath:options:",CPValueBinding,_10,"metadataItem.collections",nil);
objj_msgSend(_17,"addSubview:",_41);
objj_msgSend(_17,"addSubview:",_40);
var _42=objj_msgSend(MMLockButton,"buttonForField:",_41);
objj_msgSend(_42,"bind:toObject:withKeyPath:options:","locked",_10,"metadataItem.collectionLocked",nil);
objj_msgSend(_17,"addSubview:",_42);
var _43=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Save","Save"));
objj_msgSend(_43,"setKeyEquivalent:",CPCarriageReturnCharacter);
objj_msgSend(_43,"setFrameOrigin:",CGPointMake(CGRectGetWidth(objj_msgSend(_17,"frame"))-_18.right-CGRectGetWidth(objj_msgSend(_43,"frame")),CGRectGetHeight(objj_msgSend(_17,"frame"))-_18.bottom-CGRectGetHeight(objj_msgSend(_43,"frame"))));
objj_msgSend(_43,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin);
objj_msgSend(_43,"setTarget:",_10);
objj_msgSend(_43,"setAction:",sel_getUid("save:"));
objj_msgSend(_17,"addSubview:",_43);
var _44=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Cancel","Cancel"));
objj_msgSend(_44,"setKeyEquivalent:",CPEscapeFunctionKey);
objj_msgSend(_44,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_43,"frame"))-5-CGRectGetWidth(objj_msgSend(_44,"frame")),CGRectGetMinY(objj_msgSend(_43,"frame"))));
objj_msgSend(_44,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin);
objj_msgSend(_44,"setTarget:",_10);
objj_msgSend(_44,"setAction:",sel_getUid("cancel:"));
objj_msgSend(_17,"addSubview:",_44);
_initialFirstResponder=_19;
objj_msgSend(_10,"setView:",_17);
}
}),new objj_method(sel_getUid("presentSheetInWindow:"),function(_45,_46,_47){
with(_45){
if(_sheetPanel){
return;
}
objj_msgSend(objj_msgSend(_45,"view"),"sizeToFit");
_sheetPanel=objj_msgSend(objj_msgSend(CPPanel,"alloc"),"initWithContentRect:styleMask:",objj_msgSend(objj_msgSend(_45,"view"),"bounds"),CPDocModalWindowMask);
objj_msgSend(_sheetPanel,"setInitialFirstResponder:",_initialFirstResponder);
objj_msgSend(_sheetPanel,"setContentView:",objj_msgSend(_45,"view"));
objj_msgSend(CPApp,"beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:",_sheetPanel,_47,nil,nil,nil);
}
}),new objj_method(sel_getUid("presentMetadataItem:inWindow:"),function(_48,_49,_4a,_4b){
with(_48){
objj_msgSend(_48,"setMetadataItem:",_4a);
objj_msgSend(_48,"presentSheetInWindow:",_4b);
}
}),new objj_method(sel_getUid("presentMediaItem:inWindow:"),function(_4c,_4d,_4e,_4f){
with(_4c){
var _50=objj_msgSend(MMMetadataItem,"metadataItemForMediaItem:",_4e),_51=objj_msgSend(MMMetadataItemDataSource,"sharedDataSource");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_4c,sel_getUid("metadataItemDataSourceDidRefreshRecords:"),MMDataSourceDidReceiveRecords,_51);
objj_msgSend(_51,"refreshRecord:contextInfo:",_50,_4f);
}
}),new objj_method(sel_getUid("metadataItemDataSourceDidRefreshRecords:"),function(_52,_53,_54){
with(_52){
var _55=objj_msgSend(_54,"userInfo"),_56=objj_msgSend(objj_msgSend(_55,"objectForKey:","records"),"objectAtIndex:",0),_57=objj_msgSend(_55,"objectForKey:","contextInfo");
if(objj_msgSend(_57,"isKindOfClass:",CPWindow)){
objj_msgSend(_52,"presentMetadataItem:inWindow:",_56,_57);
}
}
}),new objj_method(sel_getUid("dismissSheet"),function(_58,_59){
with(_58){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_58,MMDataSourceDidReceiveRecords,objj_msgSend(MMMetadataItemDataSource,"sharedDataSource"));
if(!_sheetPanel){
return;
}
objj_msgSend(CPApp,"endSheet:returnCode:",_sheetPanel,0),_sheetPanel=nil;
}
}),new objj_method(sel_getUid("save:"),function(_5a,_5b,_5c){
with(_5a){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("metadataEditor:didCommitMetadataItem:"))){
objj_msgSend(_delegate,"metadataEditor:didCommitMetadataItem:",_5a,_metadataItem);
}
}
}),new objj_method(sel_getUid("cancel:"),function(_5d,_5e,_5f){
with(_5d){
objj_msgSend(_5d,"dismissSheet");
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("metadataEditorDidCancel:"))){
objj_msgSend(_delegate,"metadataEditorDidCancel:",_5d);
}
}
})]);
p;31;Controllers/MMPrefsController.jt;1289;@STATIC;1.0;I;21;AppKit/CPController.ji;34;../DataSources/MMPrefsDataSource.ji;19;../Models/MMPrefs.jt;1181;
objj_executeFile("AppKit/CPController.j",NO);
objj_executeFile("../DataSources/MMPrefsDataSource.j",YES);
objj_executeFile("../Models/MMPrefs.j",YES);
var _1=null;
var _2=objj_allocateClassPair(CPController,"MMPrefsController"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_prefs")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("init"),function(_4,_5){
with(_4){
if(_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("MMPrefsController").super_class},"init")){
_prefs=objj_msgSend(objj_msgSend(MMPrefs,"alloc"),"init");
}
return _4;
}
}),new objj_method(sel_getUid("synchronize"),function(_6,_7){
with(_6){
return objj_msgSend(_prefs,"synchronize");
}
}),new objj_method(sel_getUid("values"),function(_8,_9){
with(_8){
return _prefs;
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("sharedPrefsController"),function(_a,_b){
with(_a){
if(!_1){
CPLog.debug("Initializing shared prefs controller");
_1=objj_msgSend(objj_msgSend(_a,"alloc"),"init");
objj_msgSend(_1,"synchronize");
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",120,_1,sel_getUid("synchronize"),nil,YES);
}
return _1;
}
})]);
p;31;Controllers/MMScrollAnimation.jt;1494;@STATIC;1.0;I;20;AppKit/CPAnimation.jt;1450;
objj_executeFile("AppKit/CPAnimation.j",NO);
var _1=objj_allocateClassPair(CPAnimation,"MMScrollAnimation"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_viewToScroll"),new objj_ivar("_startPoint"),new objj_ivar("_endPoint"),new objj_ivar("_delta")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithView:offset:"),function(_3,_4,_5,_6){
with(_3){
var _7=objj_msgSend(_5,"bounds").origin;
return _3=objj_msgSend(_3,"initWithView:toPoint:",_5,CGPointMake(_7.x+_6.width,_7.y+_6.height));
}
}),new objj_method(sel_getUid("initWithView:toPoint:"),function(_8,_9,_a,_b){
with(_8){
return _8=objj_msgSend(_8,"initWithView:fromPoint:toPoint:",_a,objj_msgSend(_a,"bounds").origin,_b);
}
}),new objj_method(sel_getUid("initWithView:fromPoint:toPoint:"),function(_c,_d,_e,_f,_10){
with(_c){
if(_c=objj_msgSendSuper({receiver:_c,super_class:objj_getClass("MMScrollAnimation").super_class},"initWithDuration:animationCurve:",0.2,CPAnimationEaseOut)){
_viewToScroll=_e;
_startPoint=_f;
_endPoint=_10;
_delta=CGSizeMake(_endPoint.x-_startPoint.x,_endPoint.y-_startPoint.y);
}
return _c;
}
}),new objj_method(sel_getUid("setCurrentProgress:"),function(_11,_12,_13){
with(_11){
objj_msgSendSuper({receiver:_11,super_class:objj_getClass("MMScrollAnimation").super_class},"setCurrentProgress:",_13);
objj_msgSend(_viewToScroll,"scrollToPoint:",CGPointMake(_startPoint.x+_delta.width*_13,_startPoint.y+_delta.height*_13));
}
})]);
p;32;Controllers/MMSeasonController.jt;8956;@STATIC;1.0;I;25;AppKit/CPViewController.ji;30;../Models/MMLibraryMediaItem.ji;29;../Views/MMSeasonDetailView.ji;24;../Views/MMEpisodeCell.ji;21;MMEpisodeController.jt;8783;
objj_executeFile("AppKit/CPViewController.j",NO);
objj_executeFile("../Models/MMLibraryMediaItem.j",YES);
objj_executeFile("../Views/MMSeasonDetailView.j",YES);
objj_executeFile("../Views/MMEpisodeCell.j",YES);
objj_executeFile("MMEpisodeController.j",YES);
var _1=objj_allocateClassPair(CPViewController,"MMSeasonController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_content"),new objj_ivar("_mediaItemDataSource"),new objj_ivar("_childrenController"),new objj_ivar("_detailView"),new objj_ivar("_contentController"),new objj_ivar("_wantedChildMediaItemId")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("content"),function(_3,_4){
with(_3){
return _content;
}
}),new objj_method(sel_getUid("setContent:"),function(_5,_6,_7){
with(_5){
_content=_7;
}
}),new objj_method(sel_getUid("contentController"),function(_8,_9){
with(_8){
return _contentController;
}
}),new objj_method(sel_getUid("init"),function(_a,_b){
with(_a){
if(_a=objj_msgSendSuper({receiver:_a,super_class:objj_getClass("MMSeasonController").super_class},"init")){
_mediaItemDataSource=objj_msgSend(objj_msgSend(MMLibraryMediaDataSource,"alloc"),"initWithDelegate:",_a);
_childrenController=objj_msgSend(objj_msgSend(CPArrayController,"alloc"),"init");
}
return _a;
}
}),new objj_method(sel_getUid("loadView"),function(_c,_d){
with(_c){
_toolbarController=objj_msgSend(objj_msgSend(MMMediaItemToolbarController,"alloc"),"init");
var _e=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,800,800)),_f=objj_msgSend(_toolbarController,"view"),_10=CGRectGetHeight(objj_msgSend(_f,"frame")),_11=objj_msgSend(objj_msgSend(MMSeasonDetailView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_f,"setFrame:",CGRectMake(0,CGRectGetHeight(objj_msgSend(_e,"frame"))-_10,CGRectGetWidth(objj_msgSend(_e,"frame")),_10));
objj_msgSend(_11,"setFrame:",CGRectMake(0,0,CGRectGetWidth(objj_msgSend(_e,"frame")),CGRectGetMinY(objj_msgSend(_f,"frame"))));
objj_msgSend(_11,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_f,"setAutoresizingMask:",CPViewMinYMargin|CPViewWidthSizable);
objj_msgSend(_11,"setDelegate:",_c);
objj_msgSend(_11,"bind:toObject:withKeyPath:options:","title",_c,"fullTitle",nil);
objj_msgSend(_11,"bind:toObject:withKeyPath:options:","subtitle",_c,"subtitle",nil);
objj_msgSend(_11,"bind:toObject:withKeyPath:options:","thumbImage",_c,"content.thumbImage",nil);
objj_msgSend(_toolbarController,"bind:toObject:withKeyPath:options:","content",_c,"content",nil);
objj_msgSend(_toolbarController,"bind:toObject:withKeyPath:options:","contentController",_c,"contentController",nil);
objj_msgSend(_e,"addSubview:",_11);
objj_msgSend(_e,"addSubview:",_f);
_childrenController=objj_msgSend(objj_msgSend(CPArrayController,"alloc"),"init");
_detailView=_11;
objj_msgSend(_c,"setView:",_e);
}
}),new objj_method(sel_getUid("title"),function(_12,_13){
with(_12){
return objj_msgSend(_content,"displayTitle");
}
}),new objj_method(sel_getUid("fullTitle"),function(_14,_15){
with(_14){
return objj_msgSend(CPString,"stringWithFormat:","%@: %@",objj_msgSend(objj_msgSend(_content,"parent"),"displayTitle"),objj_msgSend(_14,"title"));
}
}),new objj_method(sel_getUid("setContent:"),function(_16,_17,_18){
with(_16){
if(objj_msgSend(_content,"isEqual:",_18)){
return;
}
_content=_18;
objj_msgSend(_childrenController,"setContent:",[]);
switch(objj_msgSend(_content,"type")){
case MMLibraryMediaItemTypeSeason:
objj_msgSend(_16,"view");
var _19=objj_msgSend(objj_msgSend(CPCollectionViewItem,"alloc"),"init"),_1a=objj_msgSend(objj_msgSend(MMEpisodeCell,"alloc"),"initWithFrame:",CGRectMake(0,0,CGRectGetWidth(objj_msgSend(_detailView,"frame")),96));
objj_msgSend(_19,"setView:",_1a);
objj_msgSend(_detailView,"setChildItemPrototype:",_19);
objj_msgSend(_detailView,"setChildrenController:",_childrenController);
objj_msgSend(_mediaItemDataSource,"refreshRecordsWithContextInfo:",_content);
break;
default:
objj_msgSend(_detailView,"setChildrenController:",nil);
break;
}
}
}),new objj_method(sel_getUid("dataSource:didReceiveRecords:contextInfo:"),function(_1b,_1c,_1d,_1e,_1f){
with(_1b){
if(!objj_msgSend(_1f,"isEqual:",_content)){
return;
}
objj_msgSend(_1b,"willChangeValueForKey:","status");
objj_msgSend(_childrenController,"setContent:",_1e);
objj_msgSend(_1b,"didChangeValueForKey:","status");
if(_wantedChildMediaItemId){
for(var i=0,_20=objj_msgSend(_1e,"count");i<_20;i++){
var _21=_1e[i];
if(objj_msgSend(_21,"id")==_wantedChildMediaItemId){
_wantedChildMediaItemId=nil;
var _22=objj_msgSend(objj_msgSend(MMEpisodeController,"alloc"),"init");
objj_msgSend(_22,"setContent:",_21);
objj_msgSend(_contentController,"pushViewController:animated:",_22,NO);
}
}
}
}
}),new objj_method(sel_getUid("willBePushedOntoContentController:"),function(_23,_24,_25){
with(_23){
objj_msgSend(_23,"willChangeValueForKey:","contentController");
_contentController=_25;
objj_msgSend(_23,"didChangeValueForKey:","contentController");
}
}),new objj_method(sel_getUid("wasPoppedOffContentController:"),function(_26,_27,_28){
with(_26){
objj_msgSend(_26,"willChangeValueForKey:","contentController");
_contentController=nil;
objj_msgSend(_26,"didChangeValueForKey:","contentController");
}
}),new objj_method(sel_getUid("status"),function(_29,_2a){
with(_29){
var _2b=objj_msgSend(objj_msgSend(_childrenController,"content"),"count");
if(_2b===nil){
return nil;
}
switch(_2b){
case 0:
return CPLocalizedString("no episodes","Status for list of episodes when there are none");
case 1:
return CPLocalizedString("1 episode","Status for list of episodes when there is one");
default:
return objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("%d episodes","Status for list of episodes when there is more than one"),_2b);
}
return nil;
}
}),new objj_method(sel_getUid("subtitle"),function(_2c,_2d){
with(_2c){
return objj_msgSend(_2c,"status");
}
}),new objj_method(sel_getUid("itemStatus"),function(_2e,_2f){
with(_2e){
var _30=objj_msgSend(objj_msgSend(_2e,"content"),"updatedAt");
if(!_30){
return nil;
}
return objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Last refreshed %@ at %@","Status label for media items"),objj_msgSend(_30,"relativeDate"),objj_msgSend(_30,"shortLocalTime"));
}
}),new objj_method(sel_getUid("location"),function(_31,_32){
with(_31){
return objj_msgSend(objj_msgSend(_31,"class"),"locationForSeason:",_content);
}
}),new objj_method(sel_getUid("mediaItemDetailView:didSelectChild:"),function(_33,_34,_35,_36){
with(_33){
objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"setLocation:",objj_msgSend(MMEpisodeController,"locationForMediaItem:",_36));
}
}),new objj_method(sel_getUid("wasPushedOntoContentController:"),function(_37,_38,_39){
with(_37){
var _3a=objj_msgSend(_37,"location"),_3b=objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"formattedHash");
if(objj_msgSend(_3b,"isEqualToString:",_3a)){
return;
}
if(!objj_msgSend(_3b,"hasPrefix:",_3a)){
return;
}
var _3c=objj_msgSend(_3b,"substringFromIndex:",objj_msgSend(_3a,"length"));
if(!objj_msgSend(_3c,"hasPrefix:","/children/")){
return;
}
_3c=objj_msgSend(_3c,"substringFromIndex:",objj_msgSend("/children/","length"));
var _3d=objj_msgSend(_3c,"componentsSeparatedByString:","/");
_wantedChildMediaItemId=Number(objj_msgSend(_3d,"objectAtIndex:",0));
var _3e=objj_msgSend(_childrenController,"content");
for(var i=0,_3f=objj_msgSend(_3e,"count");i<_3f;i++){
var _40=_3e[i];
if(objj_msgSend(_40,"id")==_wantedChildMediaItemId){
_wantedChildMediaItemId=nil;
var _41=objj_msgSend(objj_msgSend(MMSeasonController,"alloc"),"init");
objj_msgSend(_41,"setContent:",_40);
objj_msgSend(_contentController,"pushViewController:animated:",_41,NO);
}
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("keyPathsForValuesAffectingTitle"),function(_42,_43){
with(_42){
return objj_msgSend(CPSet,"setWithObjects:","content","content.displayTitle");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingFullTitle"),function(_44,_45){
with(_44){
return objj_msgSend(CPSet,"setWithObjects:","title","content.parent","content.parent.displayTitle");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingItemStatus"),function(_46,_47){
with(_46){
return objj_msgSend(CPSet,"setWithObjects:","content","content.updatedAt");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingSubtitle"),function(_48,_49){
with(_48){
return objj_msgSend(CPSet,"setWithObjects:","status");
}
}),new objj_method(sel_getUid("locationForSeason:"),function(_4a,_4b,_4c){
with(_4a){
return objj_msgSend(CPString,"stringWithFormat:","/sections/%@/media/%@/children/%@",objj_msgSend(objj_msgSend(_4c,"librarySection"),"id"),objj_msgSend(objj_msgSend(_4c,"parent"),"id"),objj_msgSend(_4c,"id"));
}
})]);
p;31;DataSources/MMAgentDataSource.jt;3463;@STATIC;1.0;i;14;MMDataSource.ji;19;../Models/MMAgent.ji;26;../Models/LanguageConfig.ji;18;../Models/PMSURL.jt;3347;
objj_executeFile("MMDataSource.j",YES);
objj_executeFile("../Models/MMAgent.j",YES);
objj_executeFile("../Models/LanguageConfig.j",YES);
objj_executeFile("../Models/PMSURL.j",YES);
var _1=objj_allocateClassPair(MMDataSource,"MMAgentDataSource"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_cache")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_3,_4){
with(_3){
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("MMAgentDataSource").super_class},"init")){
_cache=objj_msgSend(CPDictionary,"dictionary");
}
return _3;
}
}),new objj_method(sel_getUid("refreshRecordsWithContextInfo:"),function(_5,_6,_7){
with(_5){
var _8=objj_msgSend(_5,"cacheValueForKey:",_7);
if(!_8){
objj_msgSendSuper({receiver:_5,super_class:objj_getClass("MMAgentDataSource").super_class},"refreshRecordsWithContextInfo:",_7);
}else{
window.setTimeout(function(){
objj_msgSendSuper({receiver:_5,super_class:objj_getClass("MMAgentDataSource").super_class},"didReceiveRecords:connection:contextInfo:",_8,nil,_7);
},0);
}
}
}),new objj_method(sel_getUid("URLForRecordsWithContextInfo:"),function(_9,_a,_b){
with(_9){
var _c=_b;
switch(_b){
case MMLibrarySectionTypeMovies:
_c="1";
break;
case MMLibrarySectionTypeTV:
_c="2";
break;
case MMLibrarySectionTypeArtist:
_c="8";
break;
}
return objj_msgSend(PMSURL,"URLWithPath:params:","/system/agents",objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_c,"mediaType"));
}
}),new objj_method(sel_getUid("shouldProcessNode:contextInfo:"),function(_d,_e,_f,_10){
with(_d){
return String(_f.nodeName)=="Agent";
}
}),new objj_method(sel_getUid("recordFromElement:contextInfo:"),function(_11,_12,_13,_14){
with(_11){
var _15=objj_msgSend(objj_msgSend(MMAgent,"alloc"),"init");
objj_msgSend(_15,"setValuesForNodeAttributes:ignoreUndefinedKeys:",_13,YES);
var _16=_13.childNodes,_17=objj_msgSend(CPArray,"array");
for(var j=_16.length;j--;){
var _18=_16[j];
if(String(_18.nodeName)=="Language"){
var _19=objj_msgSend(objj_msgSend(LanguageConfig,"alloc"),"initWithCode:",_18.getAttribute("code"));
objj_msgSend(_17,"insertObject:atIndex:",_19,0);
}
}
objj_msgSend(_15,"setLanguages:",_17);
return _15;
}
}),new objj_method(sel_getUid("didReceiveRecords:connection:contextInfo:"),function(_1a,_1b,_1c,_1d,_1e){
with(_1a){
objj_msgSend(_1a,"setCacheValue:forKey:",_1c,_1e);
objj_msgSendSuper({receiver:_1a,super_class:objj_getClass("MMAgentDataSource").super_class},"didReceiveRecords:connection:contextInfo:",_1c,_1d,_1e);
}
}),new objj_method(sel_getUid("setCacheValue:forKey:"),function(_1f,_20,_21,key){
with(_1f){
CPLog.debug("[%@ -setCacheValue:forKey:] cache SET for key=%@",objj_msgSend(_1f,"class"),key);
objj_msgSend(_cache,"setValue:forKey:",_21,objj_msgSend(_1f,"_cacheKeyForContextInfo:",key));
}
}),new objj_method(sel_getUid("cacheValueForKey:"),function(_22,_23,key){
with(_22){
var _24=objj_msgSend(_cache,"valueForKey:",objj_msgSend(_22,"_cacheKeyForContextInfo:",key));
CPLog.debug("[%@ -cacheValueForKey:] cache %@ for key=%@",objj_msgSend(_22,"class"),_24?"HIT":"MISS",key);
return _24;
}
}),new objj_method(sel_getUid("_cacheKeyForContextInfo:"),function(_25,_26,_27){
with(_25){
if(objj_msgSend(_27,"respondsToSelector:",sel_getUid("stringValue"))){
return objj_msgSend(_27,"stringValue");
}else{
return _27||objj_msgSend(CPNull,"null");
}
}
})]);
p;47;DataSources/MMBackgroundArtMetadataDataSource.jt;1424;@STATIC;1.0;i;27;MMImageMetadataDataSource.ji;18;../Models/PMSURL.jt;1350;
objj_executeFile("MMImageMetadataDataSource.j",YES);
objj_executeFile("../Models/PMSURL.j",YES);
var _1=objj_allocateClassPair(MMImageMetadataDataSource,"MMBackgroundArtMetadataDataSource"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("selectMetadataImage:forMediaItem:"),function(_3,_4,_5,_6){
with(_3){
var _7=objj_msgSend(CPDictionary,"dictionaryFromURLParams:",objj_msgSend(objj_msgSend(_6,"artURL"),"parameterString"));
objj_msgSend(_7,"setObject:forKey:",FLOOR(objj_msgSend(CPDate,"date").getTime()/1000),"t");
objj_msgSend(_6,"setArt:",objj_msgSend(objj_msgSend(PMSURL,"URLWithPath:params:",objj_msgSend(objj_msgSend(_6,"artURL"),"path"),_7),"description"));
objj_msgSendSuper({receiver:_3,super_class:objj_getClass("MMBackgroundArtMetadataDataSource").super_class},"selectMetadataImage:forMediaItem:",_5,_6);
}
}),new objj_method(sel_getUid("URLForRecordsWithContextInfo:"),function(_8,_9,_a){
with(_8){
return objj_msgSend(_8,"URLForMediaItem:withSuffix:",_a,"/arts");
}
}),new objj_method(sel_getUid("URLForUpdatedRecord:contextInfo:"),function(_b,_c,_d,_e){
with(_b){
var _f=_d,_10=_e;
return objj_msgSend(PMSURL,"URLWithPath:params:",objj_msgSend(_b,"URLForMediaItem:withSuffix:",_10,"/art"),objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(_f,"ratingKey"),"url"));
}
})]);
p;40;DataSources/MMBannerMetadataDataSource.jt;806;@STATIC;1.0;i;27;MMImageMetadataDataSource.ji;18;../Models/PMSURL.jt;733;
objj_executeFile("MMImageMetadataDataSource.j",YES);
objj_executeFile("../Models/PMSURL.j",YES);
var _1=objj_allocateClassPair(MMImageMetadataDataSource,"MMBannerMetadataDataSource"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("URLForRecordsWithContextInfo:"),function(_3,_4,_5){
with(_3){
return objj_msgSend(_3,"URLForMediaItem:withSuffix:",_5,"/banners");
}
}),new objj_method(sel_getUid("URLForUpdatedRecord:contextInfo:"),function(_6,_7,_8,_9){
with(_6){
var _a=_8,_b=_9;
return objj_msgSend(PMSURL,"URLWithPath:params:",objj_msgSend(_6,"URLForMediaItem:withSuffix:",_b,"/banner"),objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(_a,"ratingKey"),"url"));
}
})]);
p;26;DataSources/MMDataSource.jt;22401;@STATIC;1.0;I;21;Foundation/CPObject.jI;18;Foundation/CPURL.ji;20;../MMURLConnection.ji;13;MMDataStore.jt;22289;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("Foundation/CPURL.j",NO);
objj_executeFile("../MMURLConnection.j",YES);
objj_executeFile("MMDataStore.j",YES);
MMDataSourceImplementationIncomplete="MMDataSourceImplementationIncomplete";
MMDataSourceDidRequestRecord="MMDataSourceDidRequestRecord";
MMDataSourceDidRequestRecords="MMDataSourceDidRequestRecords";
MMDataSourceDidReceiveRecords="MMDataSourceDidReceiveRecords";
MMDataSourceDidFailToReceiveRecords="MMDataSourceDidFailToReceiveRecords";
MMDataSourceDidDeleteRecord="MMDataSourceDidDeleteRecord";
MMDataSourceDidFailToDeleteRecord="MMDataSourceDidFailToDeleteRecord";
MMDataSourceDidCreateRecord="MMDataSourceDidCreateRecord";
MMDataSourceDidFailToCreateRecord="MMDataSourceDidFailToCreateRecord";
MMDataSourceDidUpdateRecord="MMDataSourceDidUpdateRecord";
MMDataSourceDidFailToUpdateRecord="MMDataSourceDidFailToUpdateRecord";
var _1=objj_msgSend(CPDictionary,"dictionary");
var _2=objj_allocateClassPair(CPObject,"MMDataSource"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("delegate"),new objj_ivar("dataStore"),new objj_ivar("recordsByRefreshConnection"),new objj_ivar("recordsByDeleteConnection"),new objj_ivar("recordsByCreateConnection"),new objj_ivar("recordsByUpdateConnection"),new objj_ivar("contextInfoByConnection"),new objj_ivar("statusCodeByConnection"),new objj_ivar("arrayControllers"),new objj_ivar("notificationCenter"),new objj_ivar("delegateRespondsTo_dataSource_didRequestRecord_contextInfo"),new objj_ivar("delegateRespondsTo_dataSource_didRequestRecordsWithContextInfo"),new objj_ivar("delegateRespondsTo_dataSource_didReceiveRecords_contextInfo"),new objj_ivar("delegateRespondsTo_dataSource_didFailToReceiveRecords_withError_contextInfo"),new objj_ivar("delegateRespondsTo_dataSource_didDeleteRecord_contextInfo"),new objj_ivar("delegateRespondsTo_dataSource_didFailToDeleteRecord_withError_contextInfo"),new objj_ivar("delegateRespondsTo_dataSource_didCreateRecord_contextInfo"),new objj_ivar("delegateRespondsTo_dataSource_didFailToCreateRecord_withError_contextInfo"),new objj_ivar("delegateRespondsTo_dataSource_didUpdateRecord_contextInfo"),new objj_ivar("delegateRespondsTo_dataSource_didFailToUpdateRecord_withError_contextInfo")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("delegate"),function(_4,_5){
with(_4){
return delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_6,_7,_8){
with(_6){
delegate=_8;
}
}),new objj_method(sel_getUid("dataStore"),function(_9,_a){
with(_9){
return dataStore;
}
}),new objj_method(sel_getUid("setDataStore:"),function(_b,_c,_d){
with(_b){
dataStore=_d;
}
}),new objj_method(sel_getUid("init"),function(_e,_f){
with(_e){
return objj_msgSend(_e,"initWithDelegate:",nil);
}
}),new objj_method(sel_getUid("initWithDelegate:"),function(_10,_11,_12){
with(_10){
return objj_msgSend(_10,"initWithDelegate:dataStore:",_12,nil);
}
}),new objj_method(sel_getUid("initWithDelegate:dataStore:"),function(_13,_14,_15,_16){
with(_13){
if(_13=objj_msgSendSuper({receiver:_13,super_class:objj_getClass("MMDataSource").super_class},"init")){
objj_msgSend(_13,"setDelegate:",_15);
objj_msgSend(_13,"setDataStore:",_16||objj_msgSend(MMDataStore,"defaultDataStore"));
recordsByRefreshConnection=objj_msgSend(CPDictionary,"dictionary");
recordsByDeleteConnection=objj_msgSend(CPDictionary,"dictionary");
recordsByCreateConnection=objj_msgSend(CPDictionary,"dictionary");
recordsByUpdateConnection=objj_msgSend(CPDictionary,"dictionary");
contextInfoByConnection=objj_msgSend(CPDictionary,"dictionary");
statusCodeByConnection=objj_msgSend(CPDictionary,"dictionary");
notificationCenter=objj_msgSend(CPNotificationCenter,"defaultCenter");
arrayControllers=objj_msgSend(CPArray,"array");
}
return _13;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_17,_18,_19){
with(_17){
delegate=_19;
delegateRespondsTo_dataSource_didRequestRecord_contextInfo=objj_msgSend(delegate,"respondsToSelector:",sel_getUid("dataSource:didRequestRecord:contextInfo:"));
delegateRespondsTo_dataSource_didRequestRecordsWithContextInfo=objj_msgSend(delegate,"respondsToSelector:",sel_getUid("dataSource:didRequestRecordsWithContextInfo:"));
delegateRespondsTo_dataSource_didReceiveRecords_contextInfo=objj_msgSend(delegate,"respondsToSelector:",sel_getUid("dataSource:didReceiveRecords:contextInfo:"));
delegateRespondsTo_dataSource_didFailToReceiveRecords_withError_contextInfo=objj_msgSend(delegate,"respondsToSelector:",sel_getUid("dataSource:didFailToReceiveRecordsWithError:contextInfo:"));
delegateRespondsTo_dataSource_didDeleteRecord_contextInfo=objj_msgSend(delegate,"respondsToSelector:",sel_getUid("dataSource:didDeleteRecord:contextInfo:"));
delegateRespondsTo_dataSource_didFailToDeleteRecord_withError_contextInfo=objj_msgSend(delegate,"respondsToSelector:",sel_getUid("dataSource:didFailToDeleteRecord:withError:contextInfo:"));
delegateRespondsTo_dataSource_didCreateRecord_contextInfo=objj_msgSend(delegate,"respondsToSelector:",sel_getUid("dataSource:didCreateRecord:contextInfo:"));
delegateRespondsTo_dataSource_didFailToCreateRecord_withError_contextInfo=objj_msgSend(delegate,"respondsToSelector:",sel_getUid("dataSource:didFailToCreateRecord:withError:contextInfo:"));
delegateRespondsTo_dataSource_didUpdateRecord_contextInfo=objj_msgSend(delegate,"respondsToSelector:",sel_getUid("dataSource:didUpdateRecord:contextInfo:"));
delegateRespondsTo_dataSource_didFailToUpdateRecord_withError_contextInfo=objj_msgSend(delegate,"respondsToSelector:",sel_getUid("dataSource:didFailToUpdateRecord:withError:contextInfo:"));
}
}),new objj_method(sel_getUid("setSelectionIndexes:"),function(_1a,_1b,_1c){
with(_1a){
objj_msgSend(arrayControllers,"setValue:forKey:",_1c,"selectionIndexes");
}
}),new objj_method(sel_getUid("addArrayController:"),function(_1d,_1e,_1f){
with(_1d){
objj_msgSend(arrayControllers,"addObject:",_1f);
}
}),new objj_method(sel_getUid("removeArrayController:"),function(_20,_21,_22){
with(_20){
objj_msgSend(arrayControllers,"removeObject:",_22);
}
}),new objj_method(sel_getUid("refreshRecord:"),function(_23,_24,_25){
with(_23){
objj_msgSend(_23,"refreshRecord:contextInfo:",_25,nil);
}
}),new objj_method(sel_getUid("refreshRecord:contextInfo:"),function(_26,_27,_28,_29){
with(_26){
var _2a=objj_msgSend(CPURLRequest,"requestWithURL:",objj_msgSend(_26,"URLForRecord:contextInfo:",_28,_29)),_2b=objj_msgSend(objj_msgSend(MMURLConnection,"alloc"),"initWithRequest:delegate:startImmediately:",_2a,_26,NO);
objj_msgSend(contextInfoByConnection,"setObject:forKey:",_29,_2b);
objj_msgSend(recordsByRefreshConnection,"setObject:forKey:",_28,_2b);
objj_msgSend(_2b,"start");
if(delegateRespondsTo_dataSource_didRequestRecord_contextInfo){
objj_msgSend(delegate,"dataSource:didRequestRecord:contextInfo:",_26,_28,_29);
}
objj_msgSend(notificationCenter,"postNotificationName:object:userInfo:",MMDataSourceDidRequestRecord,_26,objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_29,_28],["contextInfo","record"]));
}
}),new objj_method(sel_getUid("refreshRecords"),function(_2c,_2d){
with(_2c){
objj_msgSend(_2c,"refreshRecordsWithContextInfo:",nil);
}
}),new objj_method(sel_getUid("refreshRecordsWithContextInfo:"),function(_2e,_2f,_30){
with(_2e){
var _31=objj_msgSend(CPURLRequest,"requestWithURL:",objj_msgSend(_2e,"URLForRecordsWithContextInfo:",_30)),_32=objj_msgSend(objj_msgSend(MMURLConnection,"alloc"),"initWithRequest:delegate:startImmediately:",_31,_2e,NO);
objj_msgSend(contextInfoByConnection,"setObject:forKey:",_30,_32);
objj_msgSend(recordsByRefreshConnection,"setObject:forKey:",objj_msgSend(CPNull,"null"),_32);
objj_msgSend(_32,"start");
if(delegateRespondsTo_dataSource_didRequestRecordsWithContextInfo){
objj_msgSend(delegate,"dataSource:didRequestRecordsWithContextInfo:",_2e,_30);
}
objj_msgSend(notificationCenter,"postNotificationName:object:userInfo:",MMDataSourceDidRequestRecords,_2e,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_30,"contextInfo"));
}
}),new objj_method(sel_getUid("deleteRecord:"),function(_33,_34,_35){
with(_33){
objj_msgSend(_33,"deleteRecord:contextInfo:",_35,nil);
}
}),new objj_method(sel_getUid("deleteRecord:contextInfo:"),function(_36,_37,_38,_39){
with(_36){
var _3a=objj_msgSend(CPURLRequest,"requestWithURL:",objj_msgSend(_36,"URLForRecord:contextInfo:",_38,_39)),_3b=objj_msgSend(objj_msgSend(MMURLConnection,"alloc"),"initWithRequest:delegate:startImmediately:",_3a,_36,NO);
objj_msgSend(_3a,"setHTTPMethod:","DELETE");
objj_msgSend(contextInfoByConnection,"setObject:forKey:",_39,_3b);
objj_msgSend(recordsByDeleteConnection,"setObject:forKey:",_38,_3b);
objj_msgSend(_3b,"start");
}
}),new objj_method(sel_getUid("createRecord:"),function(_3c,_3d,_3e){
with(_3c){
objj_msgSend(_3c,"createRecord:contextInfo:",_3e,nil);
}
}),new objj_method(sel_getUid("createRecord:contextInfo:"),function(_3f,_40,_41,_42){
with(_3f){
var _43=objj_msgSend(CPURLRequest,"requestWithURL:",objj_msgSend(_3f,"URLForNewRecord:contextInfo:",_41,_42)),_44=objj_msgSend(objj_msgSend(MMURLConnection,"alloc"),"initWithRequest:delegate:startImmediately:",_43,_3f,NO);
objj_msgSend(_43,"setHTTPMethod:","POST");
objj_msgSend(_43,"setHTTPBody:",objj_msgSend(_3f,"HTTPBodyForNewRecord:contextInfo:",_41,_42));
objj_msgSend(recordsByCreateConnection,"setObject:forKey:",_41,_44);
objj_msgSend(contextInfoByConnection,"setObject:forKey:",_42,_44);
objj_msgSend(_44,"start");
}
}),new objj_method(sel_getUid("updateRecord:"),function(_45,_46,_47){
with(_45){
objj_msgSend(_45,"updateRecord:contextInfo:",_47,nil);
}
}),new objj_method(sel_getUid("updateRecord:contextInfo:"),function(_48,_49,_4a,_4b){
with(_48){
objj_msgSend(_48,"updateRecord:contextInfo:URL:HTTPBody:",_4a,_4b,objj_msgSend(_48,"URLForUpdatedRecord:contextInfo:",_4a,_4b),objj_msgSend(_48,"HTTPBodyForUpdatedRecord:contextInfo:",_4a,_4b));
}
}),new objj_method(sel_getUid("updateRecord:contextInfo:URL:HTTPBody:"),function(_4c,_4d,_4e,_4f,_50,_51){
with(_4c){
var _52=objj_msgSend(CPURLRequest,"requestWithURL:",_50),_53=objj_msgSend(objj_msgSend(MMURLConnection,"alloc"),"initWithRequest:delegate:startImmediately:",_52,_4c,NO);
objj_msgSend(_52,"setHTTPMethod:","PUT");
objj_msgSend(_52,"setHTTPBody:",_51);
objj_msgSend(recordsByUpdateConnection,"setObject:forKey:",_4e,_53);
objj_msgSend(contextInfoByConnection,"setObject:forKey:",_4f,_53);
objj_msgSend(_53,"start");
}
}),new objj_method(sel_getUid("URLForRecordsWithContextInfo:"),function(_54,_55,_56){
with(_54){
objj_msgSend(CPException,"raise:reason:",MMDataSourceImplementationIncomplete,objj_msgSend(CPString,"stringWithFormat:","%@ does not implement URLForRecordsWithContextInfo:",objj_msgSend(_54,"class")));
}
}),new objj_method(sel_getUid("URLForRecord:contextInfo:"),function(_57,_58,_59,_5a){
with(_57){
objj_msgSend(CPException,"raise:reason:",MMDataSourceImplementationIncomplete,objj_msgSend(CPString,"stringWithFormat:","%@ does not implement URLForRecord:contextInfo:",objj_msgSend(_57,"class")));
}
}),new objj_method(sel_getUid("URLForNewRecord:contextInfo:"),function(_5b,_5c,_5d,_5e){
with(_5b){
objj_msgSend(CPException,"raise:reason:",MMDataSourceImplementationIncomplete,objj_msgSend(CPString,"stringWithFormat:","%@ does not implement URLForNewRecord:contextInfo:",objj_msgSend(_5b,"class")));
}
}),new objj_method(sel_getUid("URLForUpdatedRecord:contextInfo:"),function(_5f,_60,_61,_62){
with(_5f){
objj_msgSend(CPException,"raise:reason:",MMDataSourceImplementationIncomplete,objj_msgSend(CPString,"stringWithFormat:","%@ does not implement URLForUpdatedRecord:contextInfo:",objj_msgSend(_5f,"class")));
}
}),new objj_method(sel_getUid("HTTPBodyForNewRecord:contextInfo:"),function(_63,_64,_65,_66){
with(_63){
objj_msgSend(CPException,"raise:reason:",MMDataSourceImplementationIncomplete,objj_msgSend(CPString,"stringWithFormat:","%@ does not implement HTTPBodyForNewRecord:contextInfo:",objj_msgSend(_63,"class")));
}
}),new objj_method(sel_getUid("HTTPBodyForUpdatedRecord:contextInfo:"),function(_67,_68,_69,_6a){
with(_67){
objj_msgSend(CPException,"raise:reason:",MMDataSourceImplementationIncomplete,objj_msgSend(CPString,"stringWithFormat:","%@ does not implement HTTPBodyForUpdatedRecord:contextInfo:",objj_msgSend(_67,"class")));
}
}),new objj_method(sel_getUid("didReceiveRecords:connection:contextInfo:"),function(_6b,_6c,_6d,_6e,_6f){
with(_6b){
if(delegateRespondsTo_dataSource_didReceiveRecords_contextInfo){
objj_msgSend(delegate,"dataSource:didReceiveRecords:contextInfo:",_6b,_6d,_6f);
}
objj_msgSend(arrayControllers,"setValue:forKey:",_6d,"content");
objj_msgSend(notificationCenter,"postNotificationName:object:userInfo:",MMDataSourceDidReceiveRecords,_6b,objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_6f,_6d],["contextInfo","records"]));
}
}),new objj_method(sel_getUid("didReceiveRecordsAsData:connection:contextInfo:"),function(_70,_71,_72,_73,_74){
with(_70){
CPLog.trace("[%@ -didReceiveRecordsAsData:connection:contextInfo:] START",objj_msgSend(_70,"class"));
var _75=objj_msgSend(_70,"respondsToSelector:",sel_getUid("shouldProcessNode:contextInfo:")),_76=objj_msgSend(_70,"respondsToSelector:",sel_getUid("shouldSelectRecord:element:contextInfo:"));
var _77=objj_msgSend(CPArray,"array"),_78=objj_msgSend(_73,"responseXML").documentElement.childNodes,_79=objj_msgSend(CPIndexSet,"indexSet");
for(var i=0,_7a=_78.length;i<_7a;i++){
var _7b=_78[i];
if(!_75||objj_msgSend(_70,"shouldProcessNode:contextInfo:",_7b,_74)){
var _7c=objj_msgSend(_70,"recordFromElement:contextInfo:",_7b,_74);
objj_msgSend(_77,"addObject:",_7c);
if(_76&&objj_msgSend(_70,"shouldSelectRecord:element:contextInfo:",_7c,_7b,_74)){
objj_msgSend(_79,"addIndex:",objj_msgSend(_77,"count")-1);
}
}
}
objj_msgSend(_70,"didReceiveRecords:connection:contextInfo:",_77,_73,_74);
if(_76){
objj_msgSend(_70,"setSelectionIndexes:",_79);
}
CPLog.trace("[%@ -didReceiveRecordsAsData:connection:contextInfo:] END",objj_msgSend(_70,"class"));
}
}),new objj_method(sel_getUid("didFailToReceiveRecordsWithError:contextInfo:"),function(_7d,_7e,_7f,_80){
with(_7d){
CPLog.trace("[%@ -didFailToReceiveRecordsWithError:contextInfo:] START",objj_msgSend(_7d,"class"));
if(delegateRespondsTo_dataSource_didFailToReceiveRecords_withError_contextInfo){
objj_msgSend(delegate,"dataSource:didFailToReceiveRecordsWithError:contextInfo:",_7d,_7f,_80);
}
objj_msgSend(notificationCenter,"postNotificationName:object:userInfo:",MMDataSourceDidFailToReceiveRecords,_7d,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_80,"contextInfo"));
CPLog.trace("[%@ -didFailToReceiveRecordsWithError:contextInfo:] END",objj_msgSend(_7d,"class"));
}
}),new objj_method(sel_getUid("didDeleteRecord:contextInfo:"),function(_81,_82,_83,_84){
with(_81){
if(delegateRespondsTo_dataSource_didDeleteRecord_contextInfo){
objj_msgSend(delegate,"dataSource:didDeleteRecord:contextInfo:",_81,_83,_84);
}
objj_msgSend(notificationCenter,"postNotificationName:object:userInfo:",MMDataSourceDidDeleteRecord,_81,objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_84,_83],["contextInfo","record"]));
}
}),new objj_method(sel_getUid("didFailToDeleteRecord:withError:contextInfo:"),function(_85,_86,_87,_88,_89){
with(_85){
CPLog.trace("[%@ -didFailToDeleteRecord:withError:contextInfo:] START",objj_msgSend(_85,"class"));
if(delegateRespondsTo_dataSource_didFailToDeleteRecord_withError_contextInfo){
objj_msgSend(delegate,"dataSource:didFailToDeleteRecord:withError:contextInfo:",_85,_87,_88,_89);
}
objj_msgSend(notificationCenter,"postNotificationName:object:userInfo:",MMDataSourceDidFailToDeleteRecord,_85,objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_89,_87,_88],["contextInfo","record","error"]));
CPLog.trace("[%@ -didFailToDeleteRecord:withError:contextInfo:] END",objj_msgSend(_85,"class"));
}
}),new objj_method(sel_getUid("didUpdateRecord:contextInfo:"),function(_8a,_8b,_8c,_8d){
with(_8a){
objj_msgSend(_8c,"acceptChangedAttributes");
if(delegateRespondsTo_dataSource_didUpdateRecord_contextInfo){
objj_msgSend(delegate,"dataSource:didUpdateRecord:contextInfo:",_8a,_8c,_8d);
}
objj_msgSend(notificationCenter,"postNotificationName:object:userInfo:",MMDataSourceDidUpdateRecord,_8a,objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_8d,_8c],["contextInfo","record"]));
}
}),new objj_method(sel_getUid("didFailToUpdateRecord:withError:contextInfo:"),function(_8e,_8f,_90,_91,_92){
with(_8e){
CPLog.trace("[%@ -didFailToUpdateRecord:withError:contextInfo:] START",objj_msgSend(_8e,"class"));
if(delegateRespondsTo_dataSource_didFailToUpdateRecord_withError_contextInfo){
objj_msgSend(delegate,"dataSource:didFailToUpdateRecord:withError:contextInfo:",_8e,_90,_91,_92);
}
objj_msgSend(notificationCenter,"postNotificationName:object:userInfo:",MMDataSourceDidFailToUpdateRecord,_8e,objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_92,_90,_91],["contextInfo","record","error"]));
CPLog.trace("[%@ -didFailToUpdateRecord:withError:contextInfo:] END",objj_msgSend(_8e,"class"));
}
}),new objj_method(sel_getUid("didCreateRecord:contextInfo:"),function(_93,_94,_95,_96){
with(_93){
objj_msgSend(dataStore,"storeRecord:",_95);
objj_msgSend(_95,"acceptChangedAttributes");
if(delegateRespondsTo_dataSource_didCreateRecord_contextInfo){
objj_msgSend(delegate,"dataSource:didCreateRecord:contextInfo:",_93,_95,_96);
}
objj_msgSend(notificationCenter,"postNotificationName:object:userInfo:",MMDataSourceDidCreateRecord,_93,objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_96,_95],["contextInfo","record"]));
}
}),new objj_method(sel_getUid("didFailToCreateRecord:withError:contextInfo:"),function(_97,_98,_99,_9a,_9b){
with(_97){
CPLog.trace("[%@ -didFailToCreateRecord:withError:contextInfo:] START",objj_msgSend(_97,"class"));
if(delegateRespondsTo_dataSource_didFailToCreateRecord_withError_contextInfo){
objj_msgSend(delegate,"dataSource:didFailToCreateRecord:withError:contextInfo:",_97,_99,_9a,_9b);
}
objj_msgSend(notificationCenter,"postNotificationName:object:userInfo:",MMDataSourceDidFailToCreateRecord,_97,objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_9b,_99,_9a],["contextInfo","record","error"]));
CPLog.trace("[%@ -didFailToCreateRecord:withError:contextInfo:] END",objj_msgSend(_97,"class"));
}
}),new objj_method(sel_getUid("connection:didReceiveResponse:"),function(_9c,_9d,_9e,_9f){
with(_9c){
var _a0=objj_msgSend(_9f,"respondsToSelector:",sel_getUid("statusCode"))&&objj_msgSend(_9f,"statusCode");
CPLog.trace("[%@ -connection:didReceiveResponse:] START (statusCode=%@)",objj_msgSend(_9c,"class"),_a0);
objj_msgSend(statusCodeByConnection,"setObject:forKey:",_a0,_9e);
CPLog.trace("[%@ -connection:didReceiveResponse:] END",objj_msgSend(_9c,"class"));
}
}),new objj_method(sel_getUid("connection:didReceiveData:"),function(_a1,_a2,_a3,_a4){
with(_a1){
CPLog.trace("[%@ -connection:didReceiveData:] START",objj_msgSend(_a1,"class"));
var _a5=objj_msgSend(statusCodeByConnection,"objectForKey:",_a3),_a6=objj_msgSend(contextInfoByConnection,"objectForKey:",_a3);
if(!_a5||_a5>=400){
objj_msgSend(_a1,"connection:didFailWithError:",_a3,_a4);
}else{
if(objj_msgSend(recordsByRefreshConnection,"containsKey:",_a3)){
objj_msgSend(_a1,"didReceiveRecordsAsData:connection:contextInfo:",_a4,_a3,_a6);
}else{
if(objj_msgSend(recordsByDeleteConnection,"containsKey:",_a3)){
var _a7=objj_msgSend(recordsByDeleteConnection,"objectForKey:",_a3);
objj_msgSend(_a1,"didDeleteRecord:contextInfo:",_a7,_a6);
}else{
if(objj_msgSend(recordsByCreateConnection,"containsKey:",_a3)){
var _a7=objj_msgSend(recordsByCreateConnection,"objectForKey:",_a3);
objj_msgSend(_a1,"didCreateRecord:contextInfo:",_a7,_a6);
}else{
if(objj_msgSend(recordsByUpdateConnection,"containsKey:",_a3)){
var _a7=objj_msgSend(recordsByUpdateConnection,"objectForKey:",_a3);
objj_msgSend(_a1,"didUpdateRecord:contextInfo:",_a7,_a6);
}else{
CPLog.warn("[%@ -connection:didReceiveData:] got message for unknown connection: %@ data: %@",objj_msgSend(_a1,"class"),_a3,_a4);
}
}
}
}
}
objj_msgSend(recordsByRefreshConnection,"removeObjectForKey:",_a3);
objj_msgSend(recordsByDeleteConnection,"removeObjectForKey:",_a3);
objj_msgSend(recordsByCreateConnection,"removeObjectForKey:",_a3);
objj_msgSend(recordsByUpdateConnection,"removeObjectForKey:",_a3);
objj_msgSend(contextInfoByConnection,"removeObjectForKey:",_a3);
CPLog.trace("[%@ -connection:didReceiveData:] END",objj_msgSend(_a1,"class"));
}
}),new objj_method(sel_getUid("connection:didFailWithError:"),function(_a8,_a9,_aa,_ab){
with(_a8){
CPLog.trace("[%@ -connection:didFailWithError:] START (error=%@)",objj_msgSend(_a8,"class"),_ab);
if(objj_msgSend(recordsByRefreshConnection,"containsKey:",_aa)){
objj_msgSend(recordsByRefreshConnection,"removeObjectForKey:",_aa);
objj_msgSend(_a8,"didFailToReceiveRecordsWithError:contextInfo:",_ab,objj_msgSend(contextInfoByConnection,"objectForKey:",_aa));
}else{
if(objj_msgSend(recordsByDeleteConnection,"containsKey:",_aa)){
var _ac=objj_msgSend(recordsByDeleteConnection,"objectForKey:",_aa);
objj_msgSend(recordsByDeleteConnection,"removeObjectForKey:",_aa);
objj_msgSend(_a8,"didFailToDeleteRecord:withError:contextInfo:",_ac,_ab,objj_msgSend(contextInfoByConnection,"objectForKey:",_aa));
}else{
if(objj_msgSend(recordsByCreateConnection,"containsKey:",_aa)){
var _ac=objj_msgSend(recordsByCreateConnection,"objectForKey:",_aa);
objj_msgSend(recordsByCreateConnection,"removeObjectForKey:",_aa);
objj_msgSend(_a8,"didFailToCreateRecord:withError:contextInfo:",_ac,_ab,objj_msgSend(contextInfoByConnection,"objectForKey:",_aa));
}else{
if(objj_msgSend(recordsByUpdateConnection,"containsKey:",_aa)){
var _ac=objj_msgSend(recordsByUpdateConnection,"objectForKey:",_aa);
objj_msgSend(recordsByUpdateConnection,"removeObjectForKey:",_aa);
objj_msgSend(_a8,"didFailToUpdateRecord:withError:contextInfo:",_ac,_ab,objj_msgSend(contextInfoByConnection,"objectForKey:",_aa));
}
}
}
}
CPLog.trace("[%@ -connection:didFailWithError:] END",objj_msgSend(_a8,"class"));
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("sharedDataSource"),function(_ad,_ae){
with(_ad){
var _af=objj_msgSend(_1,"objectForKey:",CPStringFromClass(_ad));
if(!_af){
_af=objj_msgSend(objj_msgSend(_ad,"alloc"),"init");
objj_msgSend(_1,"setObject:forKey:",_af,CPStringFromClass(_ad));
}
return _af;
}
})]);
p;25;DataSources/MMDataStore.jt;1607;@STATIC;1.0;I;21;Foundation/CPObject.jt;1562;
objj_executeFile("Foundation/CPObject.j",NO);
var _1=nil;
var _2=objj_allocateClassPair(CPObject,"MMDataStore"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_records")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("init"),function(_4,_5){
with(_4){
if(_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("MMDataStore").super_class},"init")){
_records=objj_msgSend(CPDictionary,"dictionary");
}
return _4;
}
}),new objj_method(sel_getUid("recordWithClass:id:"),function(_6,_7,_8,_9){
with(_6){
var _a=objj_msgSend(_6,"recordKeyWithClass:id:",_8,_9),_b=objj_msgSend(_records,"objectForKey:",_a);
if(!_b){
_b=objj_msgSend(objj_msgSend(_8,"alloc"),"init");
objj_msgSend(_b,"setId:",_9);
objj_msgSend(_b,"setDataStore:",_6);
objj_msgSend(_records,"setObject:forKey:",_b,_a);
}
return _b;
}
}),new objj_method(sel_getUid("hasRecordWithClass:id:"),function(_c,_d,_e,_f){
with(_c){
return objj_msgSend(_records,"containsKey:",objj_msgSend(_c,"recordKeyWithClass:id:",_e,_f));
}
}),new objj_method(sel_getUid("storeRecord:"),function(_10,_11,_12){
with(_10){
objj_msgSend(_records,"setObject:forKey:",_12,objj_msgSend(_10,"recordKeyWithClass:id:",objj_msgSend(_12,"class"),objj_msgSend(_12,"id")));
}
}),new objj_method(sel_getUid("recordKeyWithClass:id:"),function(_13,_14,_15,_16){
with(_13){
return [CPStringFromClass(_15),_16].join(":");
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("defaultDataStore"),function(_17,_18){
with(_17){
if(!_1){
_1=objj_msgSend(objj_msgSend(_17,"alloc"),"init");
}
return _1;
}
})]);
p;35;DataSources/MMDirectoryDataSource.jt;851;@STATIC;1.0;i;14;MMDataSource.ji;23;../Models/MMDirectory.jt;786;
objj_executeFile("MMDataSource.j",YES);
objj_executeFile("../Models/MMDirectory.j",YES);
var _1=objj_allocateClassPair(MMDataSource,"MMDirectoryDataSource"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("URLForRecordsWithContextInfo:"),function(_3,_4,_5){
with(_3){
return objj_msgSend(PMSURL,"URLWithPath:",objj_msgSend(_5,"key")||"/services/browse");
}
}),new objj_method(sel_getUid("shouldProcessNode:contextInfo:"),function(_6,_7,_8,_9){
with(_6){
return String(_8.nodeName)=="Path";
}
}),new objj_method(sel_getUid("recordFromElement:contextInfo:"),function(_a,_b,_c,_d){
with(_a){
var _e=objj_msgSend(objj_msgSend(MMDirectory,"alloc"),"init");
objj_msgSend(_e,"setValuesForNodeAttributes:ignoreUndefinedKeys:",_c,YES);
return _e;
}
})]);
p;39;DataSources/MMImageMetadataDataSource.jt;1356;@STATIC;1.0;i;14;MMDataSource.ji;18;../Models/PMSURL.jt;1295;
objj_executeFile("MMDataSource.j",YES);
objj_executeFile("../Models/PMSURL.j",YES);
var _1=objj_allocateClassPair(MMDataSource,"MMImageMetadataDataSource"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("URLForMediaItem:withSuffix:"),function(_3,_4,_5,_6){
with(_3){
return objj_msgSend(PMSURL,"URLWithPath:",objj_msgSend(CPString,"stringWithFormat:","/library/metadata/%@%@",objj_msgSend(_5,"id"),_6));
}
}),new objj_method(sel_getUid("selectMetadataImage:forMediaItem:"),function(_7,_8,_9,_a){
with(_7){
objj_msgSend(_7,"updateRecord:contextInfo:",_9,_a);
}
}),new objj_method(sel_getUid("HTTPBodyForUpdatedRecord:contextInfo:"),function(_b,_c,_d,_e){
with(_b){
return null;
}
}),new objj_method(sel_getUid("shouldProcessNode:contextInfo:"),function(_f,_10,_11,_12){
with(_f){
return String(_11.nodeName)=="Photo";
}
}),new objj_method(sel_getUid("shouldSelectRecord:element:contextInfo:"),function(_13,_14,_15,_16,_17){
with(_13){
return String(_16.getAttribute("selected"))==="1";
}
}),new objj_method(sel_getUid("recordFromElement:contextInfo:"),function(_18,_19,_1a,_1b){
with(_18){
var _1c=objj_msgSend(objj_msgSend(MMMetadataImage,"alloc"),"init");
objj_msgSend(_1c,"setValuesForNodeAttributes:ignoreUndefinedKeys:",_1a,YES);
return _1c;
}
})]);
p;38;DataSources/MMLibraryMediaDataSource.jt;2173;@STATIC;1.0;I;21;Foundation/CPObject.ji;30;../Models/MMLibraryMediaItem.ji;14;MMDataSource.ji;27;../CPObject+XMLAttributes.jt;2042;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("../Models/MMLibraryMediaItem.j",YES);
objj_executeFile("MMDataSource.j",YES);
objj_executeFile("../CPObject+XMLAttributes.j",YES);
var _1=objj_allocateClassPair(MMDataSource,"MMLibraryMediaDataSource"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("URLForRecordsWithContextInfo:"),function(_3,_4,_5){
with(_3){
if(objj_msgSend(_5,"respondsToSelector:",sel_getUid("allMediaItemsURL"))){
return objj_msgSend(_5,"allMediaItemsURL");
}else{
return objj_msgSend(PMSURL,"URLWithPath:",objj_msgSend(_5,"key"));
}
}
}),new objj_method(sel_getUid("URLForRecord:contextInfo:"),function(_6,_7,_8,_9){
with(_6){
return objj_msgSend(_8,"URL");
}
}),new objj_method(sel_getUid("URLForUpdatedRecord:contextInfo:"),function(_a,_b,_c,_d){
with(_a){
return objj_msgSend(PMSURL,"URLWithPath:params:",objj_msgSend(CPString,"stringWithFormat:","/library/metadata/%@",objj_msgSend(_c,"id")),objj_msgSend(_c,"changedAttributeDictionary"));
}
}),new objj_method(sel_getUid("HTTPBodyForUpdatedRecord:contextInfo:"),function(_e,_f,_10,_11){
with(_e){
return nil;
}
}),new objj_method(sel_getUid("shouldProcessNode:contextInfo:"),function(_12,_13,_14,_15){
with(_12){
return /^(Video|Directory|Media)$/.test(String(_14.nodeName))&&_14.getAttribute("type");
}
}),new objj_method(sel_getUid("recordFromElement:contextInfo:"),function(_16,_17,_18,_19){
with(_16){
var id=objj_msgSend(MMLibraryMediaItem,"idFromKey:",String(_18.getAttribute("key"))),_1a=objj_msgSend(objj_msgSend(_16,"dataStore"),"recordWithClass:id:",MMLibraryMediaItem,id);
objj_msgSend(_1a,"setValuesForNodeAttributes:ignoreUndefinedKeys:",_18,YES);
if(objj_msgSend(_19,"isKindOfClass:",MMLibrarySection)){
objj_msgSend(_1a,"setLibrarySection:",_19);
}else{
if(objj_msgSend(_19,"isKindOfClass:",MMLibraryMediaItem)){
objj_msgSend(_1a,"setParent:",_19);
objj_msgSend(_1a,"setLibrarySection:",objj_msgSend(_19,"librarySection"));
}
}
objj_msgSend(_1a,"acceptChangedAttributes");
return _1a;
}
})]);
p;41;DataSources/MMLibrarySectionsDataSource.jt;3317;@STATIC;1.0;i;28;../Models/MMLibrarySection.ji;18;../Models/PMSURL.ji;14;MMDataSource.jt;3223;
objj_executeFile("../Models/MMLibrarySection.j",YES);
objj_executeFile("../Models/PMSURL.j",YES);
objj_executeFile("MMDataSource.j",YES);
var _1=objj_allocateClassPair(MMDataSource,"MMLibrarySectionsDataSource"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("refreshSection:force:"),function(_3,_4,_5,_6){
with(_3){
objj_msgSend(_3,"updateRecord:contextInfo:URL:HTTPBody:",_5,nil,objj_msgSend(PMSURL,"URLWithPath:params:",objj_msgSend(CPString,"stringWithFormat:","%@/refresh",objj_msgSend(_5,"URL")),_6?objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",1,"force"):nil),nil);
}
}),new objj_method(sel_getUid("URLForRecordsWithContextInfo:"),function(_7,_8,_9){
with(_7){
return objj_msgSend(PMSURL,"URLWithPath:","/library/sections");
}
}),new objj_method(sel_getUid("URLForRecord:contextInfo:"),function(_a,_b,_c,_d){
with(_a){
return objj_msgSend(_c,"URL");
}
}),new objj_method(sel_getUid("URLForNewRecord:contextInfo:"),function(_e,_f,_10,_11){
with(_e){
return objj_msgSend(PMSURL,"URLWithPath:params:","/library/sections",objj_msgSend(_e,"_paramsForRecord:",_10));
}
}),new objj_method(sel_getUid("URLForUpdatedRecord:contextInfo:"),function(_12,_13,_14,_15){
with(_12){
return objj_msgSend(PMSURL,"URLWithPath:params:",objj_msgSend(_14,"URL"),objj_msgSend(_12,"_paramsForRecord:",_14));
}
}),new objj_method(sel_getUid("_paramsForRecord:"),function(_16,_17,_18){
with(_16){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(_18,"title"),"name",objj_msgSend(_18,"type"),"type",objj_msgSend(_18,"agent"),"agent",objj_msgSend(_18,"scanner"),"scanner",objj_msgSend(objj_msgSend(_18,"language"),"languageCode"),"language",objj_msgSend(_18,"locations"),"location");
}
}),new objj_method(sel_getUid("connection:didReceiveResponse:"),function(_19,_1a,_1b,_1c){
with(_19){
objj_msgSendSuper({receiver:_19,super_class:objj_getClass("MMLibrarySectionsDataSource").super_class},"connection:didReceiveResponse:",_1b,_1c);
var _1d=objj_msgSend(recordsByCreateConnection,"objectForKey:",_1b),_1e=objj_msgSend(_1b,"locationHeader");
if(_1d&&_1e){
objj_msgSend(_1d,"setKey:",objj_msgSend(objj_msgSend(_1d,"class"),"keyFromURL:",objj_msgSend(CPURL,"URLWithString:",_1e)));
}
}
}),new objj_method(sel_getUid("HTTPBodyForNewRecord:contextInfo:"),function(_1f,_20,_21,_22){
with(_1f){
return nil;
}
}),new objj_method(sel_getUid("HTTPBodyForUpdatedRecord:contextInfo:"),function(_23,_24,_25,_26){
with(_23){
return nil;
}
}),new objj_method(sel_getUid("shouldProcessNode:contextInfo:"),function(_27,_28,_29,_2a){
with(_27){
return String(_29.nodeName)=="Directory";
}
}),new objj_method(sel_getUid("recordFromElement:contextInfo:"),function(_2b,_2c,_2d,_2e){
with(_2b){
var id=String(_2d.getAttribute("key"));
var _2f=objj_msgSend(objj_msgSend(_2b,"dataStore"),"recordWithClass:id:",MMLibrarySection,id);
objj_msgSend(_2f,"setValuesForNodeAttributes:ignoreUndefinedKeys:",_2d,YES);
var _30=objj_msgSend(CPArray,"array"),_31=_2d.childNodes;
for(var j=_31.length;j--;){
var _32=_31[j];
if(String(_32.nodeName)!="Location"){
continue;
}
objj_msgSend(_30,"addObject:",String(_32.getAttribute("path")));
}
objj_msgSend(_2f,"setLocations:",_30);
return _2f;
}
})]);
p;41;DataSources/MMLibraryTimelineDataSource.jt;4639;@STATIC;1.0;I;19;Foundation/CPDate.jI;20;Foundation/CPTimer.ji;26;MMLibraryMediaDataSource.ji;28;../Models/MMLibrarySection.jt;4507;
objj_executeFile("Foundation/CPDate.j",NO);
objj_executeFile("Foundation/CPTimer.j",NO);
objj_executeFile("MMLibraryMediaDataSource.j",YES);
objj_executeFile("../Models/MMLibrarySection.j",YES);
MMLibrarySectionContextInfoKey="MMLibrarySectionContextInfoKey";
MMSinceContextInfoKey="MMSinceContextInfoKey";
var _1=4;
var _2=objj_allocateClassPair(MMLibraryMediaDataSource,"MMLibraryTimelineDataSource"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_librarySection"),new objj_ivar("_latestEntryTime"),new objj_ivar("_refreshTimer")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("watchTimelineForLibrarySection:"),function(_4,_5,_6){
with(_4){
objj_msgSend(_refreshTimer,"invalidate");
_librarySection=_6;
_latestEntryTime=-1800;
objj_msgSend(_4,"_scheduleTimer");
}
}),new objj_method(sel_getUid("_scheduleTimer"),function(_7,_8){
with(_7){
_refreshTimer=objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",_1,_7,sel_getUid("loadTimelineSinceLastLoad"),nil,NO);
}
}),new objj_method(sel_getUid("stopWatchingTimeline"),function(_9,_a){
with(_9){
objj_msgSend(_refreshTimer,"invalidate");
}
}),new objj_method(sel_getUid("isWatchingTimeline"),function(_b,_c){
with(_b){
return !!_refreshTimer;
}
}),new objj_method(sel_getUid("loadTimelineSinceLastLoad"),function(_d,_e){
with(_d){
objj_msgSend(_d,"loadTimelineForLibrarySection:since:",_librarySection,_latestEntryTime);
}
}),new objj_method(sel_getUid("loadTimelineForLibrarySection:since:"),function(_f,_10,_11,_12){
with(_f){
objj_msgSend(_f,"refreshRecordsWithContextInfo:",objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_11,_12],[MMLibrarySectionContextInfoKey,MMSinceContextInfoKey]));
}
}),new objj_method(sel_getUid("URLForRecordsWithContextInfo:"),function(_13,_14,_15){
with(_13){
var _16=objj_msgSend(_15,"objectForKey:",MMLibrarySectionContextInfoKey),_17=objj_msgSend(_15,"objectForKey:",MMSinceContextInfoKey);
return objj_msgSend(PMSURL,"URLWithPath:params:",objj_msgSend(CPString,"stringWithFormat:","%@/timeline",objj_msgSend(_16,"URL")),objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(_17,"isKindOfClass:",CPDate)?FLOOR(objj_msgSend(_17,"timeIntervalSince1970")):_17,"start"));
}
}),new objj_method(sel_getUid("didReceiveRecordsAsData:connection:contextInfo:"),function(_18,_19,_1a,_1b,_1c){
with(_18){
var _1d=objj_msgSend(_1b,"responseXML"),_1e=_1d.documentElement,_1f=objj_msgSend(_1c,"isKindOfClass:",MMLibrarySection)?_1c:objj_msgSend(_1c,"objectForKey:",MMLibrarySectionContextInfoKey);
_latestEntryTime=objj_msgSend(CPDate,"dateWithTimeIntervalSince1970:",Number(_1e.getAttribute("latestEntryTime")));
objj_msgSendSuper({receiver:_18,super_class:objj_getClass("MMLibraryTimelineDataSource").super_class},"didReceiveRecordsAsData:connection:contextInfo:",_1a,_1b,_1f);
}
}),new objj_method(sel_getUid("shouldProcessNode:contextInfo:"),function(_20,_21,_22,_23){
with(_20){
if(!objj_msgSendSuper({receiver:_20,super_class:objj_getClass("MMLibraryTimelineDataSource").super_class},"shouldProcessNode:contextInfo:",_22,_23)){
return NO;
}
if(Number(_22.getAttribute("state"))==MMLibraryMediaItemStateCreated){
var id=objj_msgSend(MMLibraryMediaItem,"idFromKey:",String(_22.getAttribute("key")));
return !objj_msgSend(objj_msgSend(_20,"dataStore"),"hasRecordWithClass:id:",MMLibraryMediaItem,id);
}
return YES;
}
}),new objj_method(sel_getUid("didReceiveRecords:connection:contextInfo:"),function(_24,_25,_26,_27,_28){
with(_24){
var _29=objj_msgSend(_28,"isKindOfClass:",MMLibrarySection)?_28:objj_msgSend(_28,"objectForKey:",MMLibrarySectionContextInfoKey);
objj_msgSendSuper({receiver:_24,super_class:objj_getClass("MMLibraryTimelineDataSource").super_class},"didReceiveRecords:connection:contextInfo:",_26,_27,_29);
for(var i=0;i<objj_msgSend(_26,"count");i++){
var _2a=objj_msgSend(_26,"objectAtIndex:",i),_2b=objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_28,_2a],["contextInfo","record"]),_2c=MMDataSourceDidUpdateRecord;
CPLog.debug("%@ changed to %d (%@)",objj_msgSend(_2a,"title")||"(no title)",objj_msgSend(_2a,"state"),objj_msgSend(_2a,"stateString"));
switch(objj_msgSend(_2a,"state")){
case MMLibraryMediaItemStateDeleted:
_2c=MMDataSourceDidDeleteRecord;
break;
case MMLibraryMediaItemStateCreated:
_2c=MMDataSourceDidCreateRecord;
break;
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",_2c,_24,_2b);
}
objj_msgSend(_24,"_scheduleTimer");
}
})]);
p;38;DataSources/MMMediaMatchesDataSource.jt;2890;@STATIC;1.0;i;14;MMDataSource.ji;26;../Models/MMSearchResult.ji;30;../Models/MMLibraryMediaItem.ji;19;../Models/MMAgent.ji;18;../Models/PMSURL.ji;27;../CPDictionary+URLParams.jt;2707;
objj_executeFile("MMDataSource.j",YES);
objj_executeFile("../Models/MMSearchResult.j",YES);
objj_executeFile("../Models/MMLibraryMediaItem.j",YES);
objj_executeFile("../Models/MMAgent.j",YES);
objj_executeFile("../Models/PMSURL.j",YES);
objj_executeFile("../CPDictionary+URLParams.j",YES);
var _1=objj_allocateClassPair(MMDataSource,"MMMediaMatchesDataSource"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("refreshRecordsForMediaItem:title:agent:language:year:"),function(_3,_4,_5,_6,_7,_8,_9){
with(_3){
objj_msgSend(_3,"refreshRecordsWithContextInfo:",objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_5,"mediaItem",_6,"title",_9,"year",_7,"agent",_8,"language"));
}
}),new objj_method(sel_getUid("selectMatch:forMediaItem:"),function(_a,_b,_c,_d){
with(_a){
objj_msgSend(_a,"updateRecord:contextInfo:",_c,_d);
}
}),new objj_method(sel_getUid("refreshMatchForMediaItem:"),function(_e,_f,_10){
with(_e){
objj_msgSend(_e,"updateRecord:contextInfo:",nil,_10);
}
}),new objj_method(sel_getUid("URLForRecordsWithContextInfo:"),function(_11,_12,_13){
with(_11){
var _14,_15;
if(objj_msgSend(_13,"isKindOfClass:",MMLibraryMediaItem)){
_14=_13,_15=nil;
}else{
if(objj_msgSend(_13,"isKindOfClass:",CPDictionary)){
_13=objj_msgSend(_13,"copy");
_14=objj_msgSend(_13,"objectForKey:","mediaItem");
objj_msgSend(_13,"removeObjectForKey:","mediaItem");
_15=objj_msgSend(_13,"URLParamsOmittingNullValues:",YES);
}
}
return objj_msgSend(PMSURL,"URLWithPath:query:",objj_msgSend(CPString,"stringWithFormat:","/library/metadata/%@/matches",objj_msgSend(_14,"id")),_15);
}
}),new objj_method(sel_getUid("URLForUpdatedRecord:contextInfo:"),function(_16,_17,_18,_19){
with(_16){
var _1a=_18,_1b=_19;
if(_1a){
return objj_msgSend(PMSURL,"URLWithPath:params:",objj_msgSend(CPString,"stringWithFormat:","/library/metadata/%@/match",objj_msgSend(_1b,"id")),objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[objj_msgSend(_1a,"name"),objj_msgSend(_1a,"guid")],["name","guid"]));
}else{
return objj_msgSend(PMSURL,"URLWithPath:",objj_msgSend(CPString,"stringWithFormat:","/library/metadata/%@/refresh",objj_msgSend(_1b,"id")));
}
}
}),new objj_method(sel_getUid("HTTPBodyForUpdatedRecord:contextInfo:"),function(_1c,_1d,_1e,_1f){
with(_1c){
return null;
}
}),new objj_method(sel_getUid("shouldProcessNode:contextInfo:"),function(_20,_21,_22,_23){
with(_20){
return String(_22.nodeName)=="SearchResult";
}
}),new objj_method(sel_getUid("recordFromElement:contextInfo:"),function(_24,_25,_26,_27){
with(_24){
var _28=objj_msgSend(objj_msgSend(MMSearchResult,"alloc"),"init");
objj_msgSend(_28,"setValuesForNodeAttributes:ignoreUndefinedKeys:",_26,YES);
return _28;
}
})]);
p;38;DataSources/MMMetadataItemDataSource.jt;1581;@STATIC;1.0;I;21;Foundation/CPObject.ji;30;../Models/MMLibraryMediaItem.ji;14;MMDataSource.ji;27;../CPObject+XMLAttributes.jt;1450;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("../Models/MMLibraryMediaItem.j",YES);
objj_executeFile("MMDataSource.j",YES);
objj_executeFile("../CPObject+XMLAttributes.j",YES);
var _1=objj_allocateClassPair(MMLibraryMediaDataSource,"MMMetadataItemDataSource"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("URLForRecord:contextInfo:"),function(_3,_4,_5,_6){
with(_3){
return objj_msgSend(PMSURL,"URLWithPath:",objj_msgSend(CPString,"stringWithFormat:","/library/metadata/%@",objj_msgSend(_5,"id")));
}
}),new objj_method(sel_getUid("recordFromElement:contextInfo:"),function(_7,_8,_9,_a){
with(_7){
var id=String(_9.getAttribute("key")),_b=objj_msgSend(objj_msgSend(_7,"dataStore"),"recordWithClass:id:",MMMetadataItem,id);
objj_msgSend(_b,"setValuesForNodeAttributes:ignoreUndefinedKeys:",_9,YES);
objj_msgSend(_b,"setLibrarySection:",_a);
var _c=_9.childNodes;
for(var i=_c.length;i--;){
var _d=_c[i];
switch(String(_d.nodeName)){
case "Field":
var _e=_d.getAttribute("name"),_f=(_d.getAttribute("locked")=="1");
objj_msgSend(_b,"setValue:forKey:",_f,_e+"Locked");
break;
case "Writer":
case "Director":
case "Genre":
var key=String(_d.nodeName).toLowerCase()+"s";
var _10=objj_msgSend(_b,"valueForKey:",key)||[];
objj_msgSend(_10,"addObject:",_d.getAttribute("tag"));
objj_msgSend(_b,"setValue:forKey:",_10,key);
break;
}
}
objj_msgSend(_b,"acceptChangedAttributes");
return _b;
}
})]);
p;40;DataSources/MMPosterMetadataDataSource.jt;1108;@STATIC;1.0;i;27;MMImageMetadataDataSource.ji;18;../Models/PMSURL.jt;1034;
objj_executeFile("MMImageMetadataDataSource.j",YES);
objj_executeFile("../Models/PMSURL.j",YES);
var _1=objj_allocateClassPair(MMImageMetadataDataSource,"MMPosterMetadataDataSource"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("selectMetadataImage:forMediaItem:"),function(_3,_4,_5,_6){
with(_3){
objj_msgSend(_6,"setThumb:",objj_msgSend(_5,"thumb"));
objj_msgSendSuper({receiver:_3,super_class:objj_getClass("MMPosterMetadataDataSource").super_class},"selectMetadataImage:forMediaItem:",_5,_6);
}
}),new objj_method(sel_getUid("URLForRecordsWithContextInfo:"),function(_7,_8,_9){
with(_7){
return objj_msgSend(_7,"URLForMediaItem:withSuffix:",_9,"/posters");
}
}),new objj_method(sel_getUid("URLForUpdatedRecord:contextInfo:"),function(_a,_b,_c,_d){
with(_a){
var _e=_c,_f=_d;
return objj_msgSend(PMSURL,"URLWithPath:params:",objj_msgSend(_a,"URLForMediaItem:withSuffix:",_f,"/poster"),objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(_e,"ratingKey"),"url"));
}
})]);
p;31;DataSources/MMPrefsDataSource.jt;1500;@STATIC;1.0;i;14;MMDataSource.ji;18;../Models/MMPref.jt;1439;
objj_executeFile("MMDataSource.j",YES);
objj_executeFile("../Models/MMPref.j",YES);
var _1="/:/prefs";
var _2=objj_allocateClassPair(MMDataSource,"MMPrefsDataSource"),_3=_2.isa;
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("URLForRecordsWithContextInfo:"),function(_4,_5,_6){
with(_4){
return objj_msgSend(PMSURL,"URLWithPath:",_1);
}
}),new objj_method(sel_getUid("URLForUpdatedRecord:contextInfo:"),function(_7,_8,_9,_a){
with(_7){
var _b=objj_msgSend(CPDictionary,"dictionary");
if(objj_msgSend(_9,"respondsToSelector:",sel_getUid("objectEnumerator"))){
var _c=objj_msgSend(_9,"objectEnumerator"),_d;
while(_d=objj_msgSend(_c,"nextObject")){
objj_msgSend(_b,"setObject:forKey:",objj_msgSend(_d,"value"),objj_msgSend(_d,"id"));
}
}else{
objj_msgSend(_b,"setObject:forKey:",objj_msgSend(_9,"value"),objj_msgSend(_9,"id"));
}
return objj_msgSend(PMSURL,"URLWithPath:params:",_1,_b);
}
}),new objj_method(sel_getUid("shouldProcessNode:contextInfo:"),function(_e,_f,_10,_11){
with(_e){
return String(_10.nodeName)=="Setting";
}
}),new objj_method(sel_getUid("recordFromElement:contextInfo:"),function(_12,_13,_14,_15){
with(_12){
var _16=objj_msgSend(objj_msgSend(MMPref,"alloc"),"init");
objj_msgSend(_16,"setValuesForNodeAttributes:ignoreUndefinedKeys:",_14,YES);
return _16;
}
}),new objj_method(sel_getUid("HTTPBodyForUpdatedRecord:contextInfo:"),function(_17,_18,_19,_1a){
with(_17){
return nil;
}
})]);
p;33;Frameworks/LPKit/LPAnchorButton.jt;5729;@STATIC;1.0;t;5710;
LPAnchorButtonNoUnderline=0;
LPAnchorButtonNormalUnderline=1;
LPAnchorButtonHoverUnderline=2;
var _1=objj_allocateClassPair(CPControl,"LPAnchorButton"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_underlineMask"),new objj_ivar("_title"),new objj_ivar("_URL"),new objj_ivar("_DOMAnchorElement")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("underlineMask"),function(_3,_4){
with(_3){
return _underlineMask;
}
}),new objj_method(sel_getUid("setUnderlineMask:"),function(_5,_6,_7){
with(_5){
_underlineMask=_7;
}
}),new objj_method(sel_getUid("title"),function(_8,_9){
with(_8){
return _title;
}
}),new objj_method(sel_getUid("setTitle:"),function(_a,_b,_c){
with(_a){
_title=_c;
}
}),new objj_method(sel_getUid("init"),function(_d,_e){
with(_d){
if(_d=objj_msgSendSuper({receiver:_d,super_class:objj_getClass("LPAnchorButton").super_class},"init")){
_underlineMask=LPAnchorButtonNormalUnderline|LPAnchorButtonHoverUnderline;
}
return _d;
}
}),new objj_method(sel_getUid("setTitle:"),function(_f,_10,_11){
with(_f){
_title=_11;
objj_msgSend(_f,"setNeedsLayout");
}
}),new objj_method(sel_getUid("openURLOnClick:"),function(_12,_13,_14){
with(_12){
_URL=_14;
objj_msgSend(_12,"setNeedsLayout");
}
}),new objj_method(sel_getUid("setTextColor:"),function(_15,_16,_17){
with(_15){
objj_msgSend(_15,"setValue:forThemeAttribute:",_17,"text-color");
}
}),new objj_method(sel_getUid("setTextHoverColor:"),function(_18,_19,_1a){
with(_18){
objj_msgSend(_18,"setValue:forThemeAttribute:inState:",_1a,"text-color",CPThemeStateHighlighted);
}
}),new objj_method(sel_getUid("mouseEntered:"),function(_1b,_1c,_1d){
with(_1b){
objj_msgSend(_1b,"setThemeState:",CPThemeStateHighlighted);
}
}),new objj_method(sel_getUid("mouseExited:"),function(_1e,_1f,_20){
with(_1e){
objj_msgSend(_1e,"unsetThemeState:",CPThemeStateHighlighted);
}
}),new objj_method(sel_getUid("mouseDown:"),function(_21,_22,_23){
with(_21){
if(_URL){
objj_msgSend(objj_msgSend(objj_msgSend(_21,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
}else{
objj_msgSendSuper({receiver:_21,super_class:objj_getClass("LPAnchorButton").super_class},"mouseDown:",_23);
}
}
}),new objj_method(sel_getUid("sizeToFit"),function(_24,_25){
with(_24){
objj_msgSend(_24,"setFrameSize:",objj_msgSend((_title||" "),"sizeWithFont:",objj_msgSend(_24,"currentValueForThemeAttribute:","font")));
}
}),new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"),function(_26,_27,_28){
with(_26){
return objj_msgSend(_26,"bounds");
}
}),new objj_method(sel_getUid("createEphemeralSubviewNamed:"),function(_29,_2a,_2b){
with(_29){
return objj_msgSend(objj_msgSend(_CPImageAndTextView,"alloc"),"initWithFrame:",CGRectMakeZero());
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_2c,_2d){
with(_2c){
_DOMElement.style.cursor="pointer";
if(_URL){
if(!_DOMAnchorElement){
_DOMAnchorElement=document.createElement("a");
_DOMAnchorElement.target="_blank";
_DOMAnchorElement.style.position="absolute";
_DOMAnchorElement.style.zIndex="100";
_2c._DOMElement.appendChild(_DOMAnchorElement);
}
_DOMAnchorElement.href=typeof _URL=="string"?_URL:objj_msgSend(_URL,"absoluteString");
var _2e=objj_msgSend(_2c,"bounds");
_DOMAnchorElement.style.width=CGRectGetWidth(_2e)+"px";
_DOMAnchorElement.style.height=CGRectGetHeight(_2e)+"px";
}
var _2f="none";
if(((_themeState===CPThemeStateNormal||_themeState===CPThemeStateSelected)&&(_underlineMask&LPAnchorButtonNormalUnderline))||((_themeState&CPThemeStateHighlighted)&&(_underlineMask&LPAnchorButtonHoverUnderline))){
_2f="underline";
}
var _30=objj_msgSend(_2c,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","content-view",CPWindowAbove,nil);
if(_30){
objj_msgSend(_30,"setText:",_title);
objj_msgSend(_30,"setTextColor:",objj_msgSend(_2c,"currentValueForThemeAttribute:","text-color"));
objj_msgSend(_30,"setFont:",objj_msgSend(_2c,"currentValueForThemeAttribute:","font"));
objj_msgSend(_30,"setAlignment:",objj_msgSend(_2c,"currentValueForThemeAttribute:","alignment"));
objj_msgSend(_30,"setVerticalAlignment:",objj_msgSend(_2c,"currentValueForThemeAttribute:","vertical-alignment"));
objj_msgSend(_30,"setLineBreakMode:",objj_msgSend(_2c,"currentValueForThemeAttribute:","line-break-mode"));
objj_msgSend(_30,"setTextShadowColor:",objj_msgSend(_2c,"currentValueForThemeAttribute:","text-shadow-color"));
objj_msgSend(_30,"setTextShadowOffset:",objj_msgSend(_2c,"currentValueForThemeAttribute:","text-shadow-offset"));
if(_30._DOMTextElement){
_30._DOMTextElement.style.textDecoration=_2f;
}
if(_30._DOMTextShadowElement){
_30._DOMTextShadowElement.style.textDecoration=_2f;
}
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("buttonWithTitle:"),function(_31,_32,_33){
with(_31){
var _34=objj_msgSend(objj_msgSend(_31,"alloc"),"init");
objj_msgSend(_34,"setTitle:",_33);
objj_msgSend(_34,"sizeToFit");
return _34;
}
})]);
var _35="LPAnchorButtonUnderlineMaskKey";
var _1=objj_getClass("LPAnchorButton");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"LPAnchorButton\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_36,_37,_38){
with(_36){
if(_36=objj_msgSendSuper({receiver:_36,super_class:objj_getClass("LPAnchorButton").super_class},"initWithCoder:",_38)){
_underlineMask=objj_msgSend(_38,"decodeIntForKey:",_35)||LPAnchorButtonNoUnderline;
}
return _36;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_39,_3a,_3b){
with(_39){
objj_msgSendSuper({receiver:_39,super_class:objj_getClass("LPAnchorButton").super_class},"encodeWithCoder:",_3b);
if(_underlineMask!==LPAnchorButtonNoUnderline){
objj_msgSend(_3b,"encodeInt:forKey:",_underlineMask,_35);
}
}
})]);
p;39;Frameworks/LPKit/LPCalendarHeaderView.jt;7947;@STATIC;1.0;I;17;AppKit/CPButton.jI;18;AppKit/CPControl.jt;7883;
objj_executeFile("AppKit/CPButton.j",NO);
objj_executeFile("AppKit/CPControl.j",NO);
var _1=["January","February","March","April","May","June","July","August","September","October","November","December"],_2=["mon","tue","wed","thu","fri","sat","sun"],_3=["sun","mon","tue","wed","thu","fri","sat"];
var _4=objj_allocateClassPair(CPControl,"LPCalendarHeaderView"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("representedDate"),new objj_ivar("monthLabel"),new objj_ivar("prevButton"),new objj_ivar("nextButton"),new objj_ivar("dayLabels"),new objj_ivar("weekStartsOnMonday")]);
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("prevButton"),function(_6,_7){
with(_6){
return prevButton;
}
}),new objj_method(sel_getUid("nextButton"),function(_8,_9){
with(_8){
return nextButton;
}
}),new objj_method(sel_getUid("weekStartsOnMonday"),function(_a,_b){
with(_a){
return weekStartsOnMonday;
}
}),new objj_method(sel_getUid("setWeekStartsOnMonday:"),function(_c,_d,_e){
with(_c){
weekStartsOnMonday=_e;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_f,_10,_11){
with(_f){
if(_f=objj_msgSendSuper({receiver:_f,super_class:objj_getClass("LPCalendarHeaderView").super_class},"initWithFrame:",_11)){
monthLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(monthLabel,"setAutoresizingMask:",CPViewMinXMargin|CPViewMaxXMargin);
objj_msgSend(_f,"addSubview:",monthLabel);
prevButton=objj_msgSend(objj_msgSend(LPCalendarHeaderArrowButton,"alloc"),"initWithFrame:",CGRectMake(6,9,0,0));
objj_msgSend(prevButton,"sizeToFit");
objj_msgSend(_f,"addSubview:",prevButton);
nextButton=objj_msgSend(objj_msgSend(LPCalendarHeaderArrowButton,"alloc"),"initWithFrame:",CGRectMake(CGRectGetMaxX(objj_msgSend(_f,"bounds"))-21,9,0,0));
objj_msgSend(nextButton,"sizeToFit");
objj_msgSend(nextButton,"setAutoresizingMask:",CPViewMinXMargin);
objj_msgSend(_f,"addSubview:",nextButton);
dayLabels=objj_msgSend(CPArray,"array");
for(var i=0;i<objj_msgSend(_2,"count");i++){
var _12=objj_msgSend(LPCalendarLabel,"labelWithTitle:",objj_msgSend(_2,"objectAtIndex:",i));
objj_msgSend(dayLabels,"addObject:",_12);
objj_msgSend(_f,"addSubview:",_12);
}
objj_msgSend(_f,"setBackgroundColor:",objj_msgSend(CPColor,"lightGrayColor"));
}
return _f;
}
}),new objj_method(sel_getUid("setDate:"),function(_13,_14,_15){
with(_13){
if(objj_msgSend(representedDate,"isEqualToDate:",_15)){
return;
}
representedDate=objj_msgSend(_15,"copy");
objj_msgSend(monthLabel,"setStringValue:",objj_msgSend(CPString,"stringWithFormat:","%s %i",_1[representedDate.getUTCMonth()],representedDate.getUTCFullYear()));
objj_msgSend(monthLabel,"sizeToFit");
objj_msgSend(monthLabel,"setCenter:",CGPointMake(CGRectGetMidX(objj_msgSend(_13,"bounds")),16));
}
}),new objj_method(sel_getUid("setWeekStartsOnMonday:"),function(_16,_17,_18){
with(_16){
weekStartsOnMonday=_18;
var _19=(_18)?_2:_3;
for(var i=0;i<objj_msgSend(dayLabels,"count");i++){
objj_msgSend(objj_msgSend(dayLabels,"objectAtIndex:",i),"setTitle:",objj_msgSend(_19,"objectAtIndex:",i));
}
objj_msgSend(_16,"setNeedsLayout");
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_1a,_1b){
with(_1a){
var _1c=objj_msgSend(_1a,"bounds"),_1d=CGRectGetWidth(_1c),_1e=objj_msgSend(_1a,"superview"),_1f=objj_msgSend(_1a,"themeState");
objj_msgSend(_1a,"setBackgroundColor:",objj_msgSend(_1e,"valueForThemeAttribute:inState:","header-background-color",_1f));
objj_msgSend(monthLabel,"setFont:",objj_msgSend(_1e,"valueForThemeAttribute:inState:","header-font",_1f));
objj_msgSend(monthLabel,"setTextColor:",objj_msgSend(_1e,"valueForThemeAttribute:inState:","header-text-color",_1f));
objj_msgSend(monthLabel,"setTextShadowColor:",objj_msgSend(_1e,"valueForThemeAttribute:inState:","header-text-shadow-color",_1f));
objj_msgSend(monthLabel,"setTextShadowOffset:",objj_msgSend(_1e,"valueForThemeAttribute:inState:","header-text-shadow-offset",_1f));
var _20=objj_msgSend(_1e,"valueForThemeAttribute:inState:","header-button-offset",_1f);
objj_msgSend(prevButton,"setFrameOrigin:",CGPointMake(_20.width,_20.height));
objj_msgSend(prevButton,"setValue:forThemeAttribute:inState:",objj_msgSend(_1e,"valueForThemeAttribute:inState:","header-prev-button-image",_1f),"bezel-color",CPThemeStateBordered);
objj_msgSend(nextButton,"setFrameOrigin:",CGPointMake(_1d-16-_20.width,_20.height));
objj_msgSend(nextButton,"setValue:forThemeAttribute:inState:",objj_msgSend(_1e,"valueForThemeAttribute:inState:","header-next-button-image",_1f),"bezel-color",CPThemeStateBordered);
var _21=objj_msgSend(dayLabels,"count"),_22=_1d/_21,_23=CGRectGetHeight(objj_msgSend(objj_msgSend(objj_msgSend(_1a,"subviews"),"objectAtIndex:",3),"bounds")),_24=objj_msgSend(_1e,"valueForThemeAttribute:inState:","header-weekday-offset",_1f),_25=CGRectGetHeight(_1c);
for(var i=0;i<_21;i++){
objj_msgSend(dayLabels[i],"setFrame:",CGRectMake(i*_22,_24,_22,_23));
}
}
})]);
class_addMethods(_5,[new objj_method(sel_getUid("themeClass"),function(_26,_27){
with(_26){
return "lp-calendar-header-view";
}
})]);
var _4=objj_allocateClassPair(CPTextField,"LPCalendarLabel"),_5=_4.isa;
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("initWithFrame:"),function(_28,_29,_2a){
with(_28){
if(_28=objj_msgSendSuper({receiver:_28,super_class:objj_getClass("LPCalendarLabel").super_class},"initWithFrame:",_2a)){
objj_msgSend(_28,"setValue:forThemeAttribute:",CPCenterTextAlignment,"alignment");
}
return _28;
}
}),new objj_method(sel_getUid("setTitle:"),function(_2b,_2c,_2d){
with(_2b){
objj_msgSend(_2b,"setStringValue:",_2d);
objj_msgSend(_2b,"sizeToFit");
}
}),new objj_method(sel_getUid("didMoveToSuperview"),function(_2e,_2f){
with(_2e){
objj_msgSend(_2e,"setNeedsLayout");
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_30,_31){
with(_30){
var _32=objj_msgSend(objj_msgSend(_30,"superview"),"superview"),_33=objj_msgSend(_30,"themeState");
objj_msgSend(_30,"setFont:",objj_msgSend(_32,"valueForThemeAttribute:inState:","header-weekday-label-font",_33));
objj_msgSend(_30,"setTextColor:",objj_msgSend(_32,"valueForThemeAttribute:inState:","header-weekday-label-color",_33));
objj_msgSend(_30,"setTextShadowColor:",objj_msgSend(_32,"valueForThemeAttribute:inState:","header-weekday-label-shadow-color",_33));
objj_msgSend(_30,"setTextShadowOffset:",objj_msgSend(_32,"valueForThemeAttribute:inState:","header-weekday-label-shadow-offset",_33));
objj_msgSendSuper({receiver:_30,super_class:objj_getClass("LPCalendarLabel").super_class},"layoutSubviews");
}
})]);
class_addMethods(_5,[new objj_method(sel_getUid("labelWithTitle:"),function(_34,_35,_36){
with(_34){
var _37=objj_msgSend(objj_msgSend(LPCalendarLabel,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_37,"setTitle:",_36);
return _37;
}
})]);
var _4=objj_allocateClassPair(CPButton,"LPCalendarHeaderArrowButton"),_5=_4.isa;
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("initWithFrame:"),function(_38,_39,_3a){
with(_38){
if(_38=objj_msgSendSuper({receiver:_38,super_class:objj_getClass("LPCalendarHeaderArrowButton").super_class},"initWithFrame:",_3a)){
objj_msgSend(_38,"setValue:forThemeAttribute:",CGSizeMake(16,16),"min-size");
objj_msgSend(_38,"setValue:forThemeAttribute:",CGSizeMake(16,16),"max-size");
}
return _38;
}
}),new objj_method(sel_getUid("incrementOriginBy:"),function(_3b,_3c,_3d){
with(_3b){
var _3e=objj_msgSend(_3b,"frame").origin;
_3e.y+=_3d;
objj_msgSend(_3b,"setFrameOrigin:",_3e);
}
}),new objj_method(sel_getUid("trackMouse:"),function(_3f,_40,_41){
with(_3f){
var _42=objj_msgSend(_41,"type");
if(_42===CPLeftMouseDown){
objj_msgSend(_3f,"incrementOriginBy:",1);
}else{
if(_42===CPLeftMouseUp){
objj_msgSend(_3f,"incrementOriginBy:",-1);
}
}
objj_msgSendSuper({receiver:_3f,super_class:objj_getClass("LPCalendarHeaderArrowButton").super_class},"trackMouse:",_41);
}
})]);
p;38;Frameworks/LPKit/LPCalendarMonthView.jt;16417;@STATIC;1.0;I;18;AppKit/CPControl.jI;15;AppKit/CPView.jI;19;Foundation/CPDate.jt;16330;
objj_executeFile("AppKit/CPControl.j",NO);
objj_executeFile("AppKit/CPView.j",NO);
objj_executeFile("Foundation/CPDate.j",NO);
var _1=objj_msgSend(CPDate,"distantFuture");
var _2=objj_getClass("CPDate");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"CPDate\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("daysInMonth"),function(_4,_5){
with(_4){
return 32-new Date(_4.getFullYear(),_4.getMonth(),32).getDate();
}
}),new objj_method(sel_getUid("resetToMidnight"),function(_6,_7){
with(_6){
_6.setHours(0);
_6.setMinutes(0);
_6.setSeconds(0);
_6.setMilliseconds(0);
}
})]);
LPCalendarDayLength=1;
LPCalendarWeekLength=2;
var _8={};
var _2=objj_allocateClassPair(CPView,"LPCalendarMonthView"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("dayTiles"),new objj_ivar("date"),new objj_ivar("previousMonth"),new objj_ivar("nextMonth"),new objj_ivar("_dataIsDirty"),new objj_ivar("allowsMultipleSelection"),new objj_ivar("startSelectionIndex"),new objj_ivar("currentSelectionIndex"),new objj_ivar("selectionLengthType"),new objj_ivar("selection"),new objj_ivar("highlightCurrentPeriod"),new objj_ivar("weekStartsOnMonday"),new objj_ivar("_delegate"),new objj_ivar("calendarView"),new objj_ivar("hiddenRows")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("date"),function(_9,_a){
with(_9){
return date;
}
}),new objj_method(sel_getUid("setDate:"),function(_b,_c,_d){
with(_b){
date=_d;
}
}),new objj_method(sel_getUid("previousMonth"),function(_e,_f){
with(_e){
return previousMonth;
}
}),new objj_method(sel_getUid("nextMonth"),function(_10,_11){
with(_10){
return nextMonth;
}
}),new objj_method(sel_getUid("allowsMultipleSelection"),function(_12,_13){
with(_12){
return allowsMultipleSelection;
}
}),new objj_method(sel_getUid("setAllowsMultipleSelection:"),function(_14,_15,_16){
with(_14){
allowsMultipleSelection=_16;
}
}),new objj_method(sel_getUid("selectionLengthType"),function(_17,_18){
with(_17){
return selectionLengthType;
}
}),new objj_method(sel_getUid("setSelectionLengthType:"),function(_19,_1a,_1b){
with(_19){
selectionLengthType=_1b;
}
}),new objj_method(sel_getUid("highlightCurrentPeriod"),function(_1c,_1d){
with(_1c){
return highlightCurrentPeriod;
}
}),new objj_method(sel_getUid("setHighlightCurrentPeriod:"),function(_1e,_1f,_20){
with(_1e){
highlightCurrentPeriod=_20;
}
}),new objj_method(sel_getUid("weekStartsOnMonday"),function(_21,_22){
with(_21){
return weekStartsOnMonday;
}
}),new objj_method(sel_getUid("setWeekStartsOnMonday:"),function(_23,_24,_25){
with(_23){
weekStartsOnMonday=_25;
}
}),new objj_method(sel_getUid("delegate"),function(_26,_27){
with(_26){
return _delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_28,_29,_2a){
with(_28){
_delegate=_2a;
}
}),new objj_method(sel_getUid("calendarView"),function(_2b,_2c){
with(_2b){
return calendarView;
}
}),new objj_method(sel_getUid("setCalendarView:"),function(_2d,_2e,_2f){
with(_2d){
calendarView=_2f;
}
}),new objj_method(sel_getUid("hiddenRows"),function(_30,_31){
with(_30){
return hiddenRows;
}
}),new objj_method(sel_getUid("setHiddenRows:"),function(_32,_33,_34){
with(_32){
hiddenRows=_34;
}
}),new objj_method(sel_getUid("initWithFrame:calendarView:"),function(_35,_36,_37,_38){
with(_35){
if(_35=objj_msgSendSuper({receiver:_35,super_class:objj_getClass("LPCalendarMonthView").super_class},"initWithFrame:",_37)){
calendarView=_38;
selectionLengthType=LPCalendarDayLength;
selection=objj_msgSend(CPArray,"array");
weekStartsOnMonday=YES;
hiddenRows=[];
for(var i=0;i<42;i++){
objj_msgSend(_35,"addSubview:",objj_msgSend(LPCalendarDayView,"dayViewWithCalendarView:",_38));
}
}
return _35;
}
}),new objj_method(sel_getUid("setAllTilesAsFiller"),function(_39,_3a){
with(_39){
objj_msgSend(_39,"setDate:",objj_msgSend(CPDate,"distantFuture"));
}
}),new objj_method(sel_getUid("setDate:"),function(_3b,_3c,_3d){
with(_3b){
if(date&&date.getFullYear()===_3d.getFullYear()&&date.getMonth()===_3d.getMonth()){
return;
}
date=objj_msgSend(_3d,"copy");
if(!objj_msgSend(_3d,"isEqualToDate:",_1)){
date.setDate(1);
objj_msgSend(date,"resetToMidnight");
_firstDay=objj_msgSend(date,"copy");
_firstDay.setDate(1);
previousMonth=new Date(_firstDay.getTime()-86400000);
nextMonth=new Date(_firstDay.getTime()+((objj_msgSend(date,"daysInMonth")+1)*86400000));
}
objj_msgSend(_3b,"reloadData");
}
}),new objj_method(sel_getUid("setSelectionLengthType:"),function(_3e,_3f,_40){
with(_3e){
if(selectionLengthType===_40){
return;
}
selectionLengthType=_40;
objj_msgSend(_3e,"reloadData");
}
}),new objj_method(sel_getUid("tileSize"),function(_41,_42){
with(_41){
var _43=objj_msgSend(calendarView,"currentValueForThemeAttribute:","tile-size");
if(_43){
return _43;
}else{
var _44=objj_msgSend(_41,"bounds");
return CGSizeMake(CGRectGetWidth(_44)/7,CGRectGetHeight(_44)/6);
}
}
}),new objj_method(sel_getUid("startOfWeekForDate:"),function(_45,_46,_47){
with(_45){
var day=_47.getDay();
if(weekStartsOnMonday){
if(day==0){
day=6;
}else{
if(day>0){
day-=1;
}
}
}
return day;
}
}),new objj_method(sel_getUid("startAndEndOfWeekForDate:"),function(_48,_49,_4a){
with(_48){
_cached=_8[_4a.toString()];
if(_cached){
return _cached;
}
var _4b=new Date(_4a.getTime()-(objj_msgSend(_48,"startOfWeekForDate:",_4a)*86400000)),_4c=new Date(_4b.getTime()+(6*86400000));
_8[_4a.toString()]=[_4b,_4c];
return [_4b,_4c];
}
}),new objj_method(sel_getUid("dateIsWithinCurrentPeriod:"),function(_4d,_4e,_4f){
with(_4d){
var _50=objj_msgSend(CPDate,"date");
objj_msgSend(_50,"resetToMidnight");
if(selectionLengthType===LPCalendarDayLength){
return (_50.getDate()===_4f.getDate()&&_50.getMonth()===_4f.getMonth()&&_50.getFullYear()===_4f.getFullYear());
}
if(selectionLengthType===LPCalendarWeekLength){
var _51=objj_msgSend(_4d,"startAndEndOfWeekForDate:",_50);
return ((objj_msgSend(_51,"objectAtIndex:",0)<=_4f)&&(objj_msgSend(_51,"objectAtIndex:",1)>=_4f));
}
return NO;
}
}),new objj_method(sel_getUid("setHiddenRows:"),function(_52,_53,_54){
with(_52){
if(objj_msgSend(hiddenRows,"isEqualToArray:",_54)){
return;
}
hiddenRows=_54;
var _55=objj_msgSend(_52,"subviews"),_56=0,_57=!_54;
for(var _58=0;_58<6;_58++){
var _59=_57||objj_msgSend(hiddenRows,"indexOfObject:",_58)>-1;
for(var _5a=0;_5a<7;_5a++){
objj_msgSend(_55[_56],"setHidden:",_59);
_56+=1;
}
}
}
}),new objj_method(sel_getUid("reloadData"),function(_5b,_5c){
with(_5b){
if(!date){
return;
}
var _5d=date.getTime()==_1.getTime(),_5e=date,_5f=objj_msgSend(_5b,"startOfWeekForDate:",_5e),_60=objj_msgSend(_5e,"daysInMonth");
var _61=objj_msgSend(previousMonth,"daysInMonth"),_62=_61-_5f;
var _63=objj_msgSend(_5b,"subviews"),_64=0;
var _65=new Date(previousMonth.getFullYear(),previousMonth.getMonth(),_62);
for(var _66=0;_66<6;_66++){
for(var _67=0;_67<7;_67++){
var _68=_63[_64];
_65.setTime(_65.getTime()+90000000);
objj_msgSend(_65,"resetToMidnight");
if(!_68._isHidden){
objj_msgSend(_68,"setIsFillerTile:",(_5d)?YES:_65.getMonth()!=_5e.getMonth());
objj_msgSend(_68,"setDate:",_65);
if(!_5d){
objj_msgSend(_68,"setHighlighted:",objj_msgSend(_5b,"dateIsWithinCurrentPeriod:",_65));
}
}
_64+=1;
}
}
}
}),new objj_method(sel_getUid("tile"),function(_69,_6a){
with(_69){
var _6b=objj_msgSend(_69,"subviews"),_6c=objj_msgSend(_69,"tileSize"),_6d=0;
if(objj_msgSend(_6b,"count")>0){
for(var _6e=0;_6e<6;_6e++){
for(var _6f=0;_6f<7;_6f++){
var _70=CGRectMake((_6f*_6c.width)+_6f,_6e*_6c.height,_6c.width,_6c.height-1);
objj_msgSend(_6b[_6d],"setFrame:",_70);
_6d+=1;
}
}
}
}
}),new objj_method(sel_getUid("setNeedsLayout"),function(_71,_72){
with(_71){
objj_msgSend(_71,"tile");
}
}),new objj_method(sel_getUid("locationInViewForEvent:"),function(_73,_74,_75){
with(_73){
return objj_msgSend(_73,"convertPoint:fromView:",objj_msgSend(_75,"locationInWindow"),nil);
}
}),new objj_method(sel_getUid("indexOfTileAtPoint:"),function(_76,_77,_78){
with(_76){
var _79=objj_msgSend(_76,"tileSize");
var _7a=FLOOR(_78.y/_79.height),_7b=FLOOR(_78.x/_79.width);
if(_7b>6){
_7b=6;
}else{
if(_7b<0){
_7b=0;
}
}
if(_7a>5){
_7a=5;
}else{
if(_7a<0){
_7a=0;
}
}
var _7c=(_7a*7)+_7b;
if(_7c>41){
return 41;
}
return _7c;
}
}),new objj_method(sel_getUid("mouseDown:"),function(_7d,_7e,_7f){
with(_7d){
var _80=objj_msgSend(_7d,"locationInViewForEvent:",_7f),_81=objj_msgSend(_7d,"indexOfTileAtPoint:",_80),_82=objj_msgSend(objj_msgSend(_7d,"subviews"),"objectAtIndex:",_81);
startSelectionIndex=_81;
objj_msgSend(_7d,"makeSelectionWithIndex:end:",startSelectionIndex,nil);
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_83,_84,_85){
with(_83){
var _86=objj_msgSend(_83,"locationInViewForEvent:",_85),_87=objj_msgSend(_83,"indexOfTileAtPoint:",_86);
if(currentSelectionIndex==_87){
return;
}
currentSelectionIndex=_87;
if(!allowsMultipleSelection){
startSelectionIndex=currentSelectionIndex;
}
objj_msgSend(_83,"makeSelectionWithIndex:end:",startSelectionIndex,currentSelectionIndex);
}
}),new objj_method(sel_getUid("mouseUp:"),function(_88,_89,_8a){
with(_88){
if(!currentSelectionIndex||startSelectionIndex==currentSelectionIndex){
var _8b=objj_msgSend(objj_msgSend(_88,"superview"),"superview"),_8c=objj_msgSend(objj_msgSend(_88,"subviews"),"objectAtIndex:",startSelectionIndex),_8d=objj_msgSend(_8c,"date"),_8e=_8d.getMonth();
if(_8e==date.getMonth()&&objj_msgSend(objj_msgSend(CPApp,"currentEvent"),"clickCount")===2&&objj_msgSend(_8b,"doubleAction")){
objj_msgSend(CPApp,"sendAction:to:from:",objj_msgSend(_8b,"doubleAction"),objj_msgSend(_8b,"target"),_8b);
}
if(_8e==previousMonth.getMonth()){
objj_msgSend(_8b,"changeToMonth:",previousMonth);
}
if(_8e==nextMonth.getMonth()){
objj_msgSend(_8b,"changeToMonth:",nextMonth);
}
}else{
currentSelectionIndex=nil;
}
}
}),new objj_method(sel_getUid("makeSelectionWithDate:end:"),function(_8f,_90,_91,_92){
with(_8f){
_91=objj_msgSend(_91,"copy");
_92=objj_msgSend(_92,"copy");
if(!allowsMultipleSelection||_92===nil){
_92=_91;
}
if(selectionLengthType===LPCalendarWeekLength){
var _93=objj_msgSend(_8f,"startAndEndOfWeekForDate:",_91);
_91=_93[0];
_92=_93[1];
}
var _94=[_91,_92];
for(var i=0;i<2;i++){
if(_94[i]){
objj_msgSend(_94[i],"resetToMidnight");
}
}
if(_91>_92){
var _95=_91;
_91=_92;
_92=_95;
}
objj_msgSend(selection,"removeAllObjects");
var _96=objj_msgSend(_8f,"subviews"),_97=objj_msgSend(_96,"count");
for(var i=0;i<_97;i++){
var _98=_96[i],_99=objj_msgSend(_98,"date");
objj_msgSend(_99,"resetToMidnight");
if(_91&&_99>=_91&&_99<=_92){
objj_msgSend(selection,"addObject:",objj_msgSend(objj_msgSend(_98,"date"),"copy"));
objj_msgSend(_98,"setSelected:",YES);
}else{
objj_msgSend(_98,"setSelected:",NO);
}
}
if(objj_msgSend(selection,"count")>0&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("didMakeSelection:"))){
objj_msgSend(_delegate,"didMakeSelection:",selection);
}
}
}),new objj_method(sel_getUid("makeSelectionWithIndex:end:"),function(_9a,_9b,_9c,_9d){
with(_9a){
var _9e=objj_msgSend(_9a,"subviews");
objj_msgSend(_9a,"makeSelectionWithDate:end:",(_9c>-1)?objj_msgSend(objj_msgSend(_9e,"objectAtIndex:",_9c),"date"):nil,(_9d>-1)?objj_msgSend(objj_msgSend(_9e,"objectAtIndex:",_9d),"date"):nil);
}
}),new objj_method(sel_getUid("drawRect:"),function(_9f,_a0,_a1){
with(_9f){
var _a2=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort"),_a3=objj_msgSend(_9f,"bounds"),_a4=CGRectGetWidth(_a3),_a5=CGRectGetHeight(_a3),_a6=objj_msgSend(_9f,"tileSize");
CGContextSetFillColor(_a2,objj_msgSend(calendarView,"currentValueForThemeAttribute:","grid-color"));
for(var i=1;i<6;i++){
CGContextFillRect(_a2,CGRectMake(0,i*_a6.height-1,_a4,1));
}
for(var i=0;i<7;i++){
CGContextFillRect(_a2,CGRectMake((i-1)+(i*_a6.width),0,1,_a5));
}
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("themeClass"),function(_a7,_a8){
with(_a7){
return "lp-calendar-month-view";
}
}),new objj_method(sel_getUid("themeAttributes"),function(_a9,_aa){
with(_a9){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[nil],["grid-color"]);
}
})]);
var _2=objj_allocateClassPair(CPControl,"LPCalendarDayView"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("date"),new objj_ivar("textField"),new objj_ivar("isFillerTile"),new objj_ivar("isSelected"),new objj_ivar("isHighlighted"),new objj_ivar("calendarView")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("date"),function(_ab,_ac){
with(_ab){
return date;
}
}),new objj_method(sel_getUid("setDate:"),function(_ad,_ae,_af){
with(_ad){
date=_af;
}
}),new objj_method(sel_getUid("isFillerTile"),function(_b0,_b1){
with(_b0){
return isFillerTile;
}
}),new objj_method(sel_getUid("setIsFillerTile:"),function(_b2,_b3,_b4){
with(_b2){
isFillerTile=_b4;
}
}),new objj_method(sel_getUid("isSelected"),function(_b5,_b6){
with(_b5){
return isSelected;
}
}),new objj_method(sel_getUid("setSelected:"),function(_b7,_b8,_b9){
with(_b7){
isSelected=_b9;
}
}),new objj_method(sel_getUid("isHighlighted"),function(_ba,_bb){
with(_ba){
return isHighlighted;
}
}),new objj_method(sel_getUid("setHighlighted:"),function(_bc,_bd,_be){
with(_bc){
isHighlighted=_be;
}
}),new objj_method(sel_getUid("calendarView"),function(_bf,_c0){
with(_bf){
return calendarView;
}
}),new objj_method(sel_getUid("setCalendarView:"),function(_c1,_c2,_c3){
with(_c1){
calendarView=_c3;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_c4,_c5,_c6){
with(_c4){
if(_c4=objj_msgSendSuper({receiver:_c4,super_class:objj_getClass("LPCalendarDayView").super_class},"initWithFrame:",_c6)){
objj_msgSend(_c4,"setHitTests:",NO);
date=objj_msgSend(CPDate,"date");
textField=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(textField,"setAutoresizingMask:",CPViewMinXMargin|CPViewMaxXMargin|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_c4,"addSubview:",textField);
}
return _c4;
}
}),new objj_method(sel_getUid("setSelected:"),function(_c7,_c8,_c9){
with(_c7){
if(isSelected===_c9){
return;
}
isSelected=_c9;
if(_c9){
objj_msgSend(_c7,"setThemeState:",CPThemeStateSelected);
}else{
objj_msgSend(_c7,"unsetThemeState:",CPThemeStateSelected);
}
}
}),new objj_method(sel_getUid("setIsFillerTile:"),function(_ca,_cb,_cc){
with(_ca){
if(isFillerTile===_cc){
return;
}
isFillerTile=_cc;
if(isFillerTile){
objj_msgSend(_ca,"setThemeState:",CPThemeStateDisabled);
}else{
objj_msgSend(_ca,"unsetThemeState:",CPThemeStateDisabled);
}
}
}),new objj_method(sel_getUid("setHighlighted:"),function(_cd,_ce,_cf){
with(_cd){
if(isHighlighted===_cf){
return;
}
isHighlighted=_cf;
if(_cf){
objj_msgSend(_cd,"setThemeState:",CPThemeStateHighlighted);
}else{
objj_msgSend(_cd,"unsetThemeState:",CPThemeStateHighlighted);
}
}
}),new objj_method(sel_getUid("setDate:"),function(_d0,_d1,_d2){
with(_d0){
if(date.getTime()===_d2.getTime()){
return;
}
date.setTime(_d2.getTime());
objj_msgSend(textField,"setStringValue:",objj_msgSend(date.getDate(),"stringValue"));
objj_msgSend(textField,"sizeToFit");
var _d3=objj_msgSend(_d0,"bounds");
objj_msgSend(textField,"setCenter:",CGPointMake(CGRectGetMidX(_d3),CGRectGetMidY(_d3)));
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_d4,_d5){
with(_d4){
var _d6=objj_msgSend(_d4,"themeState");
objj_msgSend(_d4,"setBackgroundColor:",objj_msgSend(calendarView,"valueForThemeAttribute:inState:","tile-bezel-color",_d6));
objj_msgSend(textField,"setFont:",objj_msgSend(calendarView,"valueForThemeAttribute:inState:","tile-font",_d6));
objj_msgSend(textField,"setTextColor:",objj_msgSend(calendarView,"valueForThemeAttribute:inState:","tile-text-color",_d6));
objj_msgSend(textField,"setTextShadowColor:",objj_msgSend(calendarView,"valueForThemeAttribute:inState:","tile-text-shadow-color",_d6));
objj_msgSend(textField,"setTextShadowOffset:",objj_msgSend(calendarView,"valueForThemeAttribute:inState:","tile-text-shadow-offset",_d6));
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("themeClass"),function(_d7,_d8){
with(_d7){
return "lp-calendar-day-view";
}
}),new objj_method(sel_getUid("themeAttributes"),function(_d9,_da){
with(_d9){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[nil,nil],["background-color","bezel-color"]);
}
}),new objj_method(sel_getUid("dayViewWithCalendarView:"),function(_db,_dc,_dd){
with(_db){
var _de=objj_msgSend(objj_msgSend(_db,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_de,"setCalendarView:",_dd);
return _de;
}
})]);
p;33;Frameworks/LPKit/LPCalendarView.jt;8704;@STATIC;1.0;I;18;AppKit/CPControl.jI;28;LPKit/LPCalendarHeaderView.jI;27;LPKit/LPCalendarMonthView.jI;19;LPKit/LPSlideView.jt;8573;
objj_executeFile("AppKit/CPControl.j",NO);
objj_executeFile("LPKit/LPCalendarHeaderView.j",NO);
objj_executeFile("LPKit/LPCalendarMonthView.j",NO);
objj_executeFile("LPKit/LPSlideView.j",NO);
var _1=objj_allocateClassPair(CPView,"LPCalendarView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("headerView"),new objj_ivar("slideView"),new objj_ivar("currentMonthView"),new objj_ivar("firstMonthView"),new objj_ivar("secondMonthView"),new objj_ivar("fullSelection"),new objj_ivar("_delegate"),new objj_ivar("_target"),new objj_ivar("_doubleAction")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("headerView"),function(_3,_4){
with(_3){
return headerView;
}
}),new objj_method(sel_getUid("fullSelection"),function(_5,_6){
with(_5){
return fullSelection;
}
}),new objj_method(sel_getUid("delegate"),function(_7,_8){
with(_7){
return _delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_9,_a,_b){
with(_9){
_delegate=_b;
}
}),new objj_method(sel_getUid("target"),function(_c,_d){
with(_c){
return _target;
}
}),new objj_method(sel_getUid("setTarget:"),function(_e,_f,_10){
with(_e){
_target=_10;
}
}),new objj_method(sel_getUid("doubleAction"),function(_11,_12){
with(_11){
return _doubleAction;
}
}),new objj_method(sel_getUid("setDoubleAction:"),function(_13,_14,_15){
with(_13){
_doubleAction=_15;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_16,_17,_18){
with(_16){
if(_16=objj_msgSendSuper({receiver:_16,super_class:objj_getClass("LPCalendarView").super_class},"initWithFrame:",_18)){
fullSelection=[nil,nil];
var _19=objj_msgSend(_16,"bounds");
headerView=objj_msgSend(objj_msgSend(LPCalendarHeaderView,"alloc"),"initWithFrame:",CGRectMake(0,0,CGRectGetWidth(_19),40));
objj_msgSend(objj_msgSend(headerView,"prevButton"),"setTarget:",_16);
objj_msgSend(objj_msgSend(headerView,"prevButton"),"setAction:",sel_getUid("didClickPrevButton:"));
objj_msgSend(objj_msgSend(headerView,"nextButton"),"setTarget:",_16);
objj_msgSend(objj_msgSend(headerView,"nextButton"),"setAction:",sel_getUid("didClickNextButton:"));
objj_msgSend(_16,"addSubview:",headerView);
slideView=objj_msgSend(objj_msgSend(LPSlideView,"alloc"),"initWithFrame:",CGRectMake(0,40,CGRectGetWidth(_19),CGRectGetHeight(_19)-40));
objj_msgSend(slideView,"setSlideDirection:",LPSlideViewVerticalDirection);
objj_msgSend(slideView,"setDelegate:",_16);
objj_msgSend(slideView,"setAnimationCurve:",CPAnimationEaseOut);
objj_msgSend(slideView,"setAnimationDuration:",0.2);
objj_msgSend(_16,"addSubview:",slideView);
firstMonthView=objj_msgSend(objj_msgSend(LPCalendarMonthView,"alloc"),"initWithFrame:calendarView:",objj_msgSend(slideView,"bounds"),_16);
objj_msgSend(firstMonthView,"setDelegate:",_16);
objj_msgSend(slideView,"addSubview:",firstMonthView);
secondMonthView=objj_msgSend(objj_msgSend(LPCalendarMonthView,"alloc"),"initWithFrame:calendarView:",objj_msgSend(slideView,"bounds"),_16);
objj_msgSend(secondMonthView,"setDelegate:",_16);
objj_msgSend(slideView,"addSubview:",secondMonthView);
currentMonthView=firstMonthView;
objj_msgSend(_16,"setMonth:",objj_msgSend(CPDate,"date"));
objj_msgSend(_16,"setNeedsLayout");
}
return _16;
}
}),new objj_method(sel_getUid("selectDate:"),function(_1a,_1b,_1c){
with(_1a){
objj_msgSend(_1a,"setMonth:",_1c);
objj_msgSend(_1a,"makeSelectionWithDate:end:",_1c,_1c);
}
}),new objj_method(sel_getUid("setMonth:"),function(_1d,_1e,_1f){
with(_1d){
objj_msgSend(currentMonthView,"setDate:",_1f);
objj_msgSend(headerView,"setDate:",_1f);
}
}),new objj_method(sel_getUid("monthViewForMonth:"),function(_20,_21,_22){
with(_20){
var _23=objj_msgSend(firstMonthView,"isHidden")?firstMonthView:secondMonthView;
objj_msgSend(_23,"setHiddenRows:",[]);
objj_msgSend(_23,"setDate:",_22);
objj_msgSend(_23,"makeSelectionWithDate:end:",fullSelection[0],objj_msgSend(fullSelection,"lastObject"));
return _23;
}
}),new objj_method(sel_getUid("changeToMonth:"),function(_24,_25,_26){
with(_24){
var _27=objj_msgSend(_24,"monthViewForMonth:",_26),_28=currentMonthView;
if(objj_msgSend(currentMonthView,"date").getTime()>_26.getTime()){
var _29=LPSlideViewPositiveDirection,_2a=0.335,_2b=[0,1];
}else{
var _29=LPSlideViewNegativeDirection,_2a=0.34,_2b=[4,5];
}
currentMonthView=_27;
objj_msgSend(currentMonthView,"setFrameOrigin:",CGPointMake(-500,-500));
objj_msgSend(currentMonthView,"setHidden:",NO);
objj_msgSend(currentMonthView,"setNeedsDisplay:",YES);
objj_msgSend(headerView,"setDate:",_26);
setTimeout(function(){
objj_msgSend(_28,"setHiddenRows:",_2b);
objj_msgSend(slideView,"slideToView:direction:animationProgress:",_27,_29,_2a);
},10);
}
}),new objj_method(sel_getUid("setAllowsMultipleSelection:"),function(_2c,_2d,_2e){
with(_2c){
objj_msgSend(firstMonthView,"setAllowsMultipleSelection:",_2e);
objj_msgSend(secondMonthView,"setAllowsMultipleSelection:",_2e);
}
}),new objj_method(sel_getUid("setHighlightCurrentPeriod:"),function(_2f,_30,_31){
with(_2f){
objj_msgSend(firstMonthView,"setHighlightCurrentPeriod:",_31);
objj_msgSend(secondMonthView,"setHighlightCurrentPeriod:",_31);
}
}),new objj_method(sel_getUid("setSelectionLengthType:"),function(_32,_33,_34){
with(_32){
objj_msgSend(firstMonthView,"setSelectionLengthType:",_34);
objj_msgSend(secondMonthView,"setSelectionLengthType:",_34);
}
}),new objj_method(sel_getUid("setWeekStartsOnMonday:"),function(_35,_36,_37){
with(_35){
objj_msgSend(headerView,"setWeekStartsOnMonday:",_37);
objj_msgSend(firstMonthView,"setWeekStartsOnMonday:",_37);
objj_msgSend(secondMonthView,"setWeekStartsOnMonday:",_37);
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_38,_39){
with(_38){
var _3a=CGRectGetWidth(objj_msgSend(_38,"bounds")),_3b=objj_msgSend(_38,"currentValueForThemeAttribute:","header-height");
objj_msgSend(headerView,"setFrameSize:",CGSizeMake(_3a,_3b));
objj_msgSend(slideView,"setFrame:",CGRectMake(0,_3b,_3a,CGRectGetHeight(objj_msgSend(_38,"bounds"))-_3b));
objj_msgSend(slideView,"setBackgroundColor:",objj_msgSend(_38,"currentValueForThemeAttribute:","background-color"));
}
}),new objj_method(sel_getUid("didClickPrevButton:"),function(_3c,_3d,_3e){
with(_3c){
if(objj_msgSend(slideView,"isSliding")){
return;
}
objj_msgSend(_3c,"changeToMonth:",objj_msgSend(currentMonthView,"previousMonth"));
}
}),new objj_method(sel_getUid("didClickNextButton:"),function(_3f,_40,_41){
with(_3f){
if(objj_msgSend(slideView,"isSliding")){
return;
}
objj_msgSend(_3f,"changeToMonth:",objj_msgSend(currentMonthView,"nextMonth"));
}
}),new objj_method(sel_getUid("makeSelectionWithDate:end:"),function(_42,_43,_44,_45){
with(_42){
objj_msgSend(currentMonthView,"makeSelectionWithDate:end:",_44,_45);
}
}),new objj_method(sel_getUid("didMakeSelection:"),function(_46,_47,_48){
with(_46){
if(objj_msgSend(_48,"count")<=1){
objj_msgSend(_48,"addObject:",nil);
}
if(objj_msgSend(fullSelection,"isEqualToArray:",_48)){
return;
}
fullSelection=objj_msgSend(CPArray,"arrayWithArray:",_48);
if(_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("calendarView:didMakeSelection:end:"))){
objj_msgSend(_delegate,"calendarView:didMakeSelection:end:",_46,objj_msgSend(fullSelection,"objectAtIndex:",0),objj_msgSend(fullSelection,"lastObject"));
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("themeClass"),function(_49,_4a){
with(_49){
return "lp-calendar-view";
}
}),new objj_method(sel_getUid("themeAttributes"),function(_4b,_4c){
with(_4b){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),CGSizeMake(0,0),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),40,objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),30,objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null")],["background-color","grid-color","tile-size","tile-font","tile-text-color","tile-text-shadow-color","tile-text-shadow-offset","tile-bezel-color","header-button-offset","header-prev-button-image","header-next-button-image","header-height","header-background-color","header-font","header-text-color","header-text-shadow-color","header-text-shadow-offset","header-alignment","header-weekday-offset","header-weekday-label-font","header-weekday-label-color","header-weekday-label-shadow-color","header-weekday-label-shadow-offset"]);
}
})]);
p;30;Frameworks/LPKit/LPChartView.jt;17894;@STATIC;1.0;I;15;AppKit/CPView.jt;17854;
objj_executeFile("AppKit/CPView.j",NO);
var _1=20,_2=5;
var _3=objj_allocateClassPair(CPView,"LPChartView"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("dataSource"),new objj_ivar("delegate"),new objj_ivar("drawView"),new objj_ivar("gridView"),new objj_ivar("labelView"),new objj_ivar("displayLabels"),new objj_ivar("_data"),new objj_ivar("_maxValue"),new objj_ivar("_framesSet"),new objj_ivar("_currentSize"),new objj_ivar("_maxValuePosition"),new objj_ivar("_minValuePosition")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("dataSource"),function(_5,_6){
with(_5){
return dataSource;
}
}),new objj_method(sel_getUid("setDataSource:"),function(_7,_8,_9){
with(_7){
dataSource=_9;
}
}),new objj_method(sel_getUid("delegate"),function(_a,_b){
with(_a){
return delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_c,_d,_e){
with(_c){
delegate=_e;
}
}),new objj_method(sel_getUid("drawView"),function(_f,_10){
with(_f){
return drawView;
}
}),new objj_method(sel_getUid("setDrawView:"),function(_11,_12,_13){
with(_11){
drawView=_13;
}
}),new objj_method(sel_getUid("gridView"),function(_14,_15){
with(_14){
return gridView;
}
}),new objj_method(sel_getUid("setGridView:"),function(_16,_17,_18){
with(_16){
gridView=_18;
}
}),new objj_method(sel_getUid("labelView"),function(_19,_1a){
with(_19){
return labelView;
}
}),new objj_method(sel_getUid("displayLabels"),function(_1b,_1c){
with(_1b){
return displayLabels;
}
}),new objj_method(sel_getUid("setDisplayLabels:"),function(_1d,_1e,_1f){
with(_1d){
displayLabels=_1f;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_20,_21,_22){
with(_20){
if(_20=objj_msgSendSuper({receiver:_20,super_class:objj_getClass("LPChartView").super_class},"initWithFrame:",_22)){
objj_msgSend(_20,"_setup");
}
return _20;
}
}),new objj_method(sel_getUid("_setup"),function(_23,_24){
with(_23){
_maxValuePosition=1;
_minValuePosition=0;
gridView=objj_msgSend(objj_msgSend(LPChartGridView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(gridView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_23,"addSubview:",gridView);
var _25=objj_msgSend(_23,"bounds");
labelView=objj_msgSend(objj_msgSend(LPChartLabelView,"alloc"),"initWithFrame:",CGRectMake(_2,CGRectGetHeight(_25)-_1,CGRectGetWidth(_25)-(2*_2),_1));
objj_msgSend(_23,"addSubview:",labelView);
_currentSize=CGSizeMake(0,0);
}
}),new objj_method(sel_getUid("setDataSource:"),function(_26,_27,_28){
with(_26){
dataSource=_28;
}
}),new objj_method(sel_getUid("setDrawView:"),function(_29,_2a,_2b){
with(_29){
if(_2b===drawView){
return;
}
if(drawView){
objj_msgSend(drawView,"removeFromSuperview");
}
objj_msgSend(_29,"addSubview:positioned:relativeTo:",_2b,CPWindowAbove,gridView);
drawView=_2b;
var _2c=CGRectInset(objj_msgSend(_29,"bounds"),_2,_2);
if(labelView){
_2c.size.height-=CGRectGetHeight(objj_msgSend(labelView,"bounds"));
}
objj_msgSend(drawView,"setFrame:",_2c);
objj_msgSend(drawView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
_2c.size.height+=1;
objj_msgSend(gridView,"setFrame:",_2c);
if(objj_msgSend(_29,"window")){
objj_msgSend(_29,"reloadData");
}
}
}),new objj_method(sel_getUid("setGridView:"),function(_2d,_2e,_2f){
with(_2d){
if(gridView===_2f){
return;
}
objj_msgSend(_2f,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_2d,"replaceSubview:with:",gridView,_2f);
gridView=_2f;
}
}),new objj_method(sel_getUid("setDisplayLabels:"),function(_30,_31,_32){
with(_30){
if(!displayLabels&&labelView){
var _33=objj_msgSend(drawView,"frame");
_33.size.height+=CGRectGetHeight(objj_msgSend(labelView,"bounds"));
objj_msgSend(drawView,"setFrame:",_33);
objj_msgSend(labelView,"removeFromSuperview");
}else{
labelView=objj_msgSend(objj_msgSend(LPChartLabelView,"alloc"),"initWithFrame:",CGRectMake(0,CGRectGetHeight(aFrame)-_1,CGRectGetWidth(aFrame),_1));
objj_msgSend(_30,"addSubview:",labelView);
}
displayLabels=_32;
}
}),new objj_method(sel_getUid("setDisplayGrid:"),function(_34,_35,_36){
with(_34){
objj_msgSend(gridView,"setHidden:",!_36);
}
}),new objj_method(sel_getUid("setMaxValuePosition:minValuePosition:"),function(_37,_38,_39,_3a){
with(_37){
_maxValuePosition=_39;
_minValuePosition=_3a;
objj_msgSend(objj_msgSend(_37,"drawView"),"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("itemFrames"),function(_3b,_3c){
with(_3b){
return (dataSource&&drawView&&_data)?objj_msgSend(_3b,"calculateItemFramesWithSets:maxValue:",_data,_maxValue):objj_msgSend(CPArray,"array");
}
}),new objj_method(sel_getUid("reloadData"),function(_3d,_3e){
with(_3d){
if(!dataSource||!drawView){
return;
}
_data=objj_msgSend(CPArray,"array");
_maxValue=0;
var _3f=objj_msgSend(dataSource,"numberOfSetsInChart:",_3d);
for(var _40=0;_40<_3f;_40++){
var row=[],_41=objj_msgSend(dataSource,"chart:numberOfValuesInSet:",_3d,_40);
for(var _42=0;_42<_41;_42++){
var _43=objj_msgSend(dataSource,"chart:valueForIndex:set:",_3d,_42,_40);
if(_43>_maxValue){
_maxValue=_43;
}
row.push(_43);
}
_data.push(row);
}
_currentSize=nil;
objj_msgSend(gridView,"setNeedsDisplay:",YES);
objj_msgSend(labelView,"reloadData");
objj_msgSend(drawView,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("calculateItemFramesWithSets:maxValue:"),function(_44,_45,_46,_47){
with(_44){
var _48=objj_msgSend(drawView,"bounds").size,_49=(1-_maxValuePosition)*_48.height;
if(_minValuePosition!==0){
_48.height-=_minValuePosition*_48.height;
}
if(_maxValuePosition!==1){
_48.height-=_49;
}
if(_currentSize&&CGSizeEqualToSize(_currentSize,_48)){
return _framesSet;
}
_currentSize=_48;
_framesSet=objj_msgSend(CPArray,"array");
if(!_46.length){
return _framesSet;
}
if(_47===0){
_47=1;
}
var _4a=_48.width,_4b=_48.height-(2*_2),_4c=_46[0].length,_4d=_4a/_4c,_4e=_4a-(_4c*_4d);
for(var _4f=0;_4f<_46.length;_4f++){
var _50=_46[_4f],_51=0,row=[];
for(var _52=0;_52<_50.length;_52++){
var _53=_50[_52],_54=CGRectMake(_51,0,_4d,0);
if(_4e>0){
_54.size.width++;
_4e--;
}
_54.size.height=ROUND((_53/_47)*_4b);
_54.origin.y=_4b-CGRectGetHeight(_54)+_2;
if(_maxValuePosition!==1){
_54.origin.y+=_49;
}
row.push(_54);
_51+=CGRectGetWidth(_54);
}
_framesSet.push(row);
}
return _framesSet;
}
}),new objj_method(sel_getUid("horizontalLabelForIndex:"),function(_55,_56,_57){
with(_55){
return objj_msgSend(dataSource,"chart:labelValueForIndex:",_55,_57);
}
}),new objj_method(sel_getUid("mouseMoved:"),function(_58,_59,_5a){
with(_58){
if(delegate&&objj_msgSend(delegate,"respondsToSelector:",sel_getUid("chart:didMouseOverItemAtIndex:"))){
var _5b=objj_msgSend(_58,"itemFrames");
if(!_5b.length){
return;
}
var _5c=_5b[0],_5d=objj_msgSend(drawView,"convertPoint:fromView:",objj_msgSend(_5a,"locationInWindow"),nil);
for(var i=0;i<_5c.length;i++){
var _5e=_5c[i];
if(_5e.origin.x<=_5d.x&&(_5e.origin.x+_5e.size.width)>_5d.x){
objj_msgSend(delegate,"chart:didMouseOverItemAtIndex:",_58,i);
return;
}
}
}
}
}),new objj_method(sel_getUid("mouseExited:"),function(_5f,_60,_61){
with(_5f){
if(delegate&&objj_msgSend(delegate,"respondsToSelector:",sel_getUid("chart:didMouseOverItemAtIndex:"))){
objj_msgSend(delegate,"chart:didMouseOverItemAtIndex:",_5f,-1);
}
}
}),new objj_method(sel_getUid("viewDidMoveToWindow"),function(_62,_63){
with(_62){
objj_msgSend(_62,"reloadData");
}
})]);
var _64="LPChartViewDataSourceKey",_65="LPChartViewDrawViewKey",_66="LPChartViewGridViewKey",_67="LPChartViewDisplayLabelsKey",_68="LPChartViewLabelViewKey",_69="LPChartViewDataKey",_6a="LPChartViewMaxValueKey",_6b="LPChartViewFramesSetKey",_6c="LPChartViewCurrentSizeKey",_6d="LPChartViewMaxValuePositionKey",_6e="LPChartViewMinValuePositionKey";
var _3=objj_getClass("LPChartView");
if(!_3){
throw new SyntaxError("*** Could not find definition for class \"LPChartView\"");
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("initWithCoder:"),function(_6f,_70,_71){
with(_6f){
if(_6f=objj_msgSendSuper({receiver:_6f,super_class:objj_getClass("LPChartView").super_class},"initWithCoder:",_71)){
dataSource=objj_msgSend(_71,"decodeObjectForKey:",_64);
gridView=objj_msgSend(_71,"decodeObjectForKey:",_66);
drawView=objj_msgSend(_71,"decodeObjectForKey:",_65);
displayLabels=!objj_msgSend(_71,"containsValueForKey:",_67)||objj_msgSend(_71,"decodeObjectForKey:",_67);
labelView=objj_msgSend(_71,"decodeObjectForKey:",_68);
_data=objj_msgSend(_71,"decodeObjectForKey:",_69);
_maxValue=objj_msgSend(_71,"decodeIntForKey:",_6a);
_framesSet=objj_msgSend(_71,"decodeObjectForKey:",_6b);
_currentSize=objj_msgSend(_71,"decodeSizeForKey:",_6c);
_maxValuePosition=objj_msgSend(_71,"decodeIntForKey:",_6d);
_minValuePosition=objj_msgSend(_71,"decodeFloatForKey:",_6e);
objj_msgSend(_6f,"_setup");
}
return _6f;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_72,_73,_74){
with(_72){
objj_msgSendSuper({receiver:_72,super_class:objj_getClass("LPChartView").super_class},"encodeWithCoder:",_74);
objj_msgSend(_74,"encodeObject:forKey:",dataSource,_64);
objj_msgSend(_74,"encodeObject:forKey:",drawView,_65);
objj_msgSend(_74,"encodeObject:forKey:",gridView,_66);
objj_msgSend(_74,"encodeBool:forKey:",displayLabels,_67);
objj_msgSend(_74,"encodeObject:forKey:",labelView,_68);
objj_msgSend(_74,"encodeObject:forKey:",_data,_69);
objj_msgSend(_74,"encodeInt:forKey:",_maxValue,_6a);
objj_msgSend(_74,"encodeObject:forKey:",_framesSet,_6b);
if(_currentSize){
objj_msgSend(_74,"encodeSize:forKey:",_currentSize,_6c);
}
objj_msgSend(_74,"encodeFloat:forKey:",_maxValuePosition,_6d);
objj_msgSend(_74,"encodeFloat:forKey:",_minValuePosition,_6e);
}
})]);
var _3=objj_allocateClassPair(CPView,"LPChartGridView"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("gridColor")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("gridColor"),function(_75,_76){
with(_75){
return gridColor;
}
}),new objj_method(sel_getUid("setGridColor:"),function(_77,_78,_79){
with(_77){
gridColor=_79;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_7a,_7b,_7c){
with(_7a){
if(_7a=objj_msgSendSuper({receiver:_7a,super_class:objj_getClass("LPChartGridView").super_class},"initWithFrame:",_7c)){
gridColor=objj_msgSend(CPColor,"colorWithWhite:alpha:",0,0.05);
objj_msgSend(_7a,"setHitTests:",NO);
}
return _7a;
}
}),new objj_method(sel_getUid("setGridColor:"),function(_7d,_7e,_7f){
with(_7d){
gridColor=_7f;
objj_msgSend(_7d,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("drawRect:"),function(_80,_81,_82){
with(_80){
if(itemFrames=objj_msgSend(objj_msgSend(_80,"superview"),"itemFrames")){
var _83=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort"),_84=objj_msgSend(_80,"bounds"),_85=CGRectGetWidth(_84),_86=CGRectGetHeight(_84),_87=1;
CGContextSetFillColor(_83,gridColor);
if(itemFrames.length){
for(var i=0;i<itemFrames[0].length;i++){
CGContextFillRect(_83,CGRectMake(FLOOR(itemFrames[0][i].origin.x),0,_87,_86));
}
}else{
CGContextFillRect(_83,CGRectMake(0,0,_87,_86));
}
CGContextFillRect(_83,CGRectMake(_85-_87,0,_87,_86));
CGContextFillRect(_83,CGRectMake(0,_86-_87,_85,_87));
CGContextFillRect(_83,CGRectMake(0,FLOOR(_86/2),_85,_87));
}
}
})]);
var _3=objj_allocateClassPair(CPView,"LPChartDrawView"),_4=_3.isa;
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("initWithFrame:"),function(_88,_89,_8a){
with(_88){
if(_88=objj_msgSendSuper({receiver:_88,super_class:objj_getClass("LPChartDrawView").super_class},"initWithFrame:",_8a)){
objj_msgSend(_88,"setHitTests:",NO);
}
return _88;
}
}),new objj_method(sel_getUid("drawRect:"),function(_8b,_8c,_8d){
with(_8b){
if(itemFrames=objj_msgSend(objj_msgSend(_8b,"superview"),"itemFrames")){
var _8e=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
objj_msgSend(_8b,"drawSetWithFrames:inContext:",itemFrames,_8e);
}
}
}),new objj_method(sel_getUid("drawSetWithFrames:inContext:"),function(_8f,_90,_91,_92){
with(_8f){
CGContextSetStrokeColor(_92,objj_msgSend(CPColor,"colorWithHexString:","4379ca"));
CGContextSetLineWidth(_92,2);
for(var _93=0;_93<_91.length;_93++){
var _94=_91[_93];
CGContextBeginPath(_92);
for(var _95=0;_95<_94.length;_95++){
var _96=_94[_95],_97=CGPointMake(CGRectGetMidX(_96),CGRectGetMinY(_96));
if(_95==0){
CGContextMoveToPoint(_92,_97.x,_97.y);
}else{
CGContextAddLineToPoint(_92,_97.x,_97.y);
}
}
CGContextStrokePath(_92);
CGContextClosePath(_92);
}
}
})]);
var _3=objj_allocateClassPair(CPView,"LPChartLabelView"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("chart"),new objj_ivar("_labelPrototype"),new objj_ivar("_labelData"),new objj_ivar("_cachedLabels")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("initWithFrame:"),function(_98,_99,_9a){
with(_98){
if(_98=objj_msgSendSuper({receiver:_98,super_class:objj_getClass("LPChartLabelView").super_class},"initWithFrame:",_9a)){
objj_msgSend(_98,"setAutoresizingMask:",CPViewWidthSizable|CPViewMinYMargin);
objj_msgSend(_98,"setHitTests:",NO);
objj_msgSend(_98,"setLabelPrototype:",objj_msgSend(LPChartLabel,"labelWithItemIndex:",-1));
}
return _98;
}
}),new objj_method(sel_getUid("setLabelPrototype:"),function(_9b,_9c,_9d){
with(_9b){
_labelPrototype=_9d;
_labelData=nil;
_cachedLabels=objj_msgSend(CPArray,"array");
objj_msgSend(_9b,"reloadData");
}
}),new objj_method(sel_getUid("newLabelWithItemIndex:"),function(_9e,_9f,_a0){
with(_9e){
if(_cachedLabels.length){
var _a1=_cachedLabels.pop();
}else{
if(!_labelData){
if(_labelPrototype){
_labelData=objj_msgSend(CPKeyedArchiver,"archivedDataWithRootObject:",_labelPrototype);
}
}
var _a1=objj_msgSend(CPKeyedUnarchiver,"unarchiveObjectWithData:",_labelData);
}
objj_msgSend(_a1,"setItemIndex:",_a0);
return _a1;
}
}),new objj_method(sel_getUid("reloadData"),function(_a2,_a3){
with(_a2){
if(chart){
var _a4=objj_msgSend(_a2,"subviews");
if(numberOfSubviews=_a4.length){
while(numberOfSubviews--){
objj_msgSend(_a4[numberOfSubviews],"removeFromSuperview");
if(_labelData){
_cachedLabels.push(_a4[numberOfSubviews]);
}
}
}
var _a5=objj_msgSend(chart,"itemFrames");
if(_a5&&_a5.length){
_a5=_a5[0];
for(var i=0,_a6=_a5.length;i<_a6;i++){
var _a7=objj_msgSend(_a2,"newLabelWithItemIndex:",i);
objj_msgSend(_a7,"setLabel:",objj_msgSend(chart,"horizontalLabelForIndex:",i));
objj_msgSend(_a2,"addSubview:",_a7);
}
}
objj_msgSend(_a2,"setNeedsLayout");
}
}
}),new objj_method(sel_getUid("viewDidMoveToSuperview"),function(_a8,_a9){
with(_a8){
chart=objj_msgSend(_a8,"superview");
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_aa,_ab){
with(_aa){
var _ac=objj_msgSend(chart,"itemFrames");
if(!_ac){
return;
}
var _ad=objj_msgSend(_aa,"subviews"),_ae=_ad.length,_af=objj_msgSend(_aa,"bounds"),_ac=_ac[0],_2=CGRectGetMinX(objj_msgSend(objj_msgSend(chart,"drawView"),"frame")),_b0=CGRectGetMidY(_af);
while(_ae--){
var _b1=_ad[_ae];
objj_msgSend(_b1,"setCenter:",CGPointMake(CGRectGetMidX(_ac[_ae])+_2,_b0));
var _b2=objj_msgSend(_b1,"frame");
if(_b2.origin.x<0){
frameIsDirty=YES;
_b2.origin.x=0;
objj_msgSend(_b1,"setFrame:",_b2);
}else{
if(CGRectGetMaxX(_b2)>_af.size.width){
frameIsDirty=YES;
_b2.origin.x-=CGRectGetMaxX(_b2)-_af.size.width;
objj_msgSend(_b1,"setFrame:",_b2);
}
}
}
}
})]);
var _b3="LPChartLabelViewChartKey",_b4="LPChartLabelViewLabelPrototypeKey";
var _3=objj_getClass("LPChartLabelView");
if(!_3){
throw new SyntaxError("*** Could not find definition for class \"LPChartLabelView\"");
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("initWithCoder:"),function(_b5,_b6,_b7){
with(_b5){
if(_b5=objj_msgSendSuper({receiver:_b5,super_class:objj_getClass("LPChartLabelView").super_class},"initWithCoder:",_b7)){
chart=objj_msgSend(_b7,"decodeObjectForKey:",_b3);
_labelPrototype=objj_msgSend(_b7,"decodeObjectForKey:",_b4);
_cachedLabels=objj_msgSend(CPArray,"array");
}
return _b5;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_b8,_b9,_ba){
with(_b8){
objj_msgSendSuper({receiver:_b8,super_class:objj_getClass("LPChartLabelView").super_class},"encodeWithCoder:",_ba);
objj_msgSend(_ba,"encodeObject:forKey:",chart,_b3);
objj_msgSend(_ba,"encodeObject:forKey:",_labelPrototype,_b4);
}
})]);
var _3=objj_allocateClassPair(CPTextField,"LPChartLabel"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_itemIndex")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("itemIndex"),function(_bb,_bc){
with(_bb){
return _itemIndex;
}
}),new objj_method(sel_getUid("setItemIndex:"),function(_bd,_be,_bf){
with(_bd){
_itemIndex=_bf;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_c0,_c1,_c2){
with(_c0){
if(_c0=objj_msgSendSuper({receiver:_c0,super_class:objj_getClass("LPChartLabel").super_class},"initWithFrame:",_c2)){
objj_msgSend(_c0,"setHitTests:",NO);
}
return _c0;
}
}),new objj_method(sel_getUid("setLabel:"),function(_c3,_c4,_c5){
with(_c3){
if(_c5!==objj_msgSend(_c3,"stringValue")){
objj_msgSend(_c3,"setStringValue:",_c5);
objj_msgSend(_c3,"sizeToFit");
}
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("labelWithItemIndex:"),function(_c6,_c7,_c8){
with(_c6){
var _c9=objj_msgSend(objj_msgSend(_c6,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_c9,"setItemIndex:",_c8);
return _c9;
}
})]);
var _ca="LPChartLabelItemIndexKey";
var _3=objj_getClass("LPChartLabel");
if(!_3){
throw new SyntaxError("*** Could not find definition for class \"LPChartLabel\"");
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("initWithCoder:"),function(_cb,_cc,_cd){
with(_cb){
if(_cb=objj_msgSendSuper({receiver:_cb,super_class:objj_getClass("LPChartLabel").super_class},"initWithCoder:",_cd)){
_itemIndex=objj_msgSend(_cd,"decodeIntForKey:",_ca);
}
return _cb;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_ce,_cf,_d0){
with(_ce){
objj_msgSendSuper({receiver:_ce,super_class:objj_getClass("LPChartLabel").super_class},"encodeWithCoder:",_d0);
objj_msgSend(_d0,"encodeInt:forKey:",_itemIndex,_ca);
}
})]);
p;37;Frameworks/LPKit/LPCookieController.jt;2475;@STATIC;1.0;I;21;Foundation/CPObject.jI;20;Foundation/CPRange.jt;2405;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("Foundation/CPRange.j",NO);
var _1=nil;
var _2=objj_allocateClassPair(CPObject,"LPCookieController"),_3=_2.isa;
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("setValue:forKey:"),function(_4,_5,_6,_7){
with(_4){
return objj_msgSend(_4,"setValue:forKey:expirationDate:",_6,_7,nil);
}
}),new objj_method(sel_getUid("setValue:forKey:expirationDate:"),function(_8,_9,_a,_b,_c){
with(_8){
return objj_msgSend(_8,"setValue:forKey:expirationDate:path:",_a,_b,_c,nil);
}
}),new objj_method(sel_getUid("setValue:forKey:expirationDate:path:"),function(_d,_e,_f,_10,_11,_12){
with(_d){
return objj_msgSend(_d,"setValue:forKey:expirationDate:path:domain:",_f,_10,_11,_12,nil);
}
}),new objj_method(sel_getUid("setValue:forKey:expirationDate:path:domain:"),function(_13,_14,_15,_16,_17,_18,_19){
with(_13){
return objj_msgSend(_13,"setValue:forKey:expirationDate:path:domain:escape:",_15,_16,_17,_18,nil,YES);
}
}),new objj_method(sel_getUid("setValue:forKey:expirationDate:path:domain:escape:"),function(_1a,_1b,_1c,_1d,_1e,_1f,_20,_21){
with(_1a){
var _22="";
_22+=objj_msgSend(CPString,"stringWithFormat:","%s=%s; ",_1d,_21?escape(_1c):_1c);
if(_1e){
_22+=objj_msgSend(CPString,"stringWithFormat:","expires=%s; ",_1e.toUTCString());
}
_22+=objj_msgSend(CPString,"stringWithFormat:","path=%s; ",_1f||"/");
if(_20){
_22+=objj_msgSend(CPString,"stringWithFormat:","domain=%s; ",_20);
}
_22=objj_msgSend(_22,"substringToIndex:",objj_msgSend(_22,"length")-2);
document.cookie=_22;
}
}),new objj_method(sel_getUid("valueForKey:"),function(_23,_24,_25){
with(_23){
var _26=objj_msgSend(document.cookie,"componentsSeparatedByString:",";");
for(var i=0;i<objj_msgSend(_26,"count");i++){
var _27=objj_msgSend(_26,"objectAtIndex:",i),_28=objj_msgSend(_27,"rangeOfString:options:",objj_msgSend(CPString,"stringWithFormat:","%s=",_25),CPCaseInsensitiveSearch);
if(_28.length>0){
return objj_msgSend(_27,"substringFromIndex:",CPMaxRange(_28));
}
}
return nil;
}
}),new objj_method(sel_getUid("removeValueForKey:"),function(_29,_2a,_2b){
with(_29){
objj_msgSend(_29,"setValue:forKey:expirationDate:","",_2b,objj_msgSend(CPDate,"distantPast"));
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("sharedCookieController"),function(_2c,_2d){
with(_2c){
if(!_1){
_1=objj_msgSend(objj_msgSend(_2c,"alloc"),"init");
}
return _1;
}
})]);
p;34;Frameworks/LPKit/LPCrashReporter.jt;9120;@STATIC;1.0;I;21;Foundation/CPObject.jI;16;AppKit/CPAlert.jI;24;LPKit/LPURLPostRequest.jI;28;LPKit/LPMultiLineTextField.jt;8992;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("AppKit/CPAlert.j",NO);
objj_executeFile("LPKit/LPURLPostRequest.j",NO);
objj_executeFile("LPKit/LPMultiLineTextField.j",NO);
var _1=nil;
var _2=objj_allocateClassPair(CPObject,"LPCrashReporter"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_exception")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("exception"),function(_4,_5){
with(_4){
return _exception;
}
}),new objj_method(sel_getUid("setException:"),function(_6,_7,_8){
with(_6){
_exception=_8;
}
}),new objj_method(sel_getUid("didCatchException:"),function(_9,_a,_b){
with(_9){
if(objj_msgSend(_9,"shouldInterceptException")){
if(_exception){
return;
}
_exception=_b;
var _c=objj_msgSend(objj_msgSend(LPCrashReporterOverlayWindow,"alloc"),"initWithContentRect:styleMask:",CGRectMakeZero(),CPBorderlessBridgeWindowMask);
objj_msgSend(_c,"setLevel:",CPNormalWindowLevel);
objj_msgSend(_c,"makeKeyAndOrderFront:",nil);
var _d=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(_d,"setDelegate:",_9);
objj_msgSend(_d,"setAlertStyle:",CPCriticalAlertStyle);
objj_msgSend(_d,"addButtonWithTitle:","Reload");
objj_msgSend(_d,"addButtonWithTitle:","Report...");
objj_msgSend(_d,"setMessageText:",objj_msgSend(CPString,"stringWithFormat:","The application %@ crashed unexpectedly. Click Reload to load the application again or click Report to send a report to the developer.",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"objectForInfoDictionaryKey:","CPBundleName")));
objj_msgSend(_d,"runModal");
}else{
_e=NO;
objj_msgSend(_b,"raise");
}
}
}),new objj_method(sel_getUid("shouldInterceptException"),function(_f,_10){
with(_f){
return YES;
}
}),new objj_method(sel_getUid("alertDidEnd:returnCode:"),function(_11,_12,_13,_14){
with(_11){
switch(_14){
case 0:
location.reload();
break;
case 1:
var _15=objj_msgSend(objj_msgSend(LPCrashReporterReportWindow,"alloc"),"initWithContentRect:styleMask:",CGRectMake(0,0,460,309),CPTitledWindowMask|CPResizableWindowMask);
objj_msgSend(CPApp,"runModalForWindow:",_15);
break;
}
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("sharedErrorLogger"),function(_16,_17){
with(_16){
if(!_1){
_1=objj_msgSend(objj_msgSend(LPCrashReporter,"alloc"),"init");
}
return _1;
}
})]);
var _2=objj_allocateClassPair(CPWindow,"LPCrashReporterOverlayWindow"),_3=_2.isa;
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithContentRect:styleMask:"),function(_18,_19,_1a,_1b){
with(_18){
if(_18=objj_msgSendSuper({receiver:_18,super_class:objj_getClass("LPCrashReporterOverlayWindow").super_class},"initWithContentRect:styleMask:",_1a,_1b)){
objj_msgSend(objj_msgSend(_18,"contentView"),"setBackgroundColor:",objj_msgSend(CPColor,"colorWithWhite:alpha:",0,0.4));
}
return _18;
}
})]);
var _2=objj_allocateClassPair(CPWindow,"LPCrashReporterReportWindow"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("informationLabel"),new objj_ivar("informationTextField"),new objj_ivar("descriptionLabel"),new objj_ivar("descriptionTextField"),new objj_ivar("sendButton"),new objj_ivar("cancelButton"),new objj_ivar("sendingLabel")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithContentRect:styleMask:"),function(_1c,_1d,_1e,_1f){
with(_1c){
if(_1c=objj_msgSendSuper({receiver:_1c,super_class:objj_getClass("LPCrashReporterReportWindow").super_class},"initWithContentRect:styleMask:",_1e,_1f)){
var _20=objj_msgSend(_1c,"contentView"),_21=objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"objectForInfoDictionaryKey:","CPBundleName");
objj_msgSend(_1c,"setMinSize:",_1e.size);
objj_msgSend(_1c,"setTitle:",objj_msgSend(CPString,"stringWithFormat:","Problem Report for %@",_21));
informationLabel=objj_msgSend(CPTextField,"labelWithTitle:","Problem and system information:");
objj_msgSend(informationLabel,"setFrameOrigin:",CGPointMake(12,12));
objj_msgSend(_20,"addSubview:",informationLabel);
var _22=objj_msgSend(CPString,"stringWithFormat:","User-Agent: %@\n\nException: %@",navigator.userAgent,objj_msgSend(objj_msgSend(LPCrashReporter,"sharedErrorLogger"),"exception"));
informationTextField=objj_msgSend(LPMultiLineTextField,"textFieldWithStringValue:placeholder:width:",_22,"",0);
objj_msgSend(informationTextField,"setEditable:",NO);
objj_msgSend(informationTextField,"setFrame:",CGRectMake(12,31,CGRectGetWidth(_1e)-24,100));
objj_msgSend(informationTextField,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_20,"addSubview:",informationTextField);
descriptionLabel=objj_msgSend(CPTextField,"labelWithTitle:","Please describe what you were doing when the problem happened:");
objj_msgSend(descriptionLabel,"setFrameOrigin:",CGPointMake(12,141));
objj_msgSend(_20,"addSubview:",descriptionLabel);
descriptionTextField=objj_msgSend(LPMultiLineTextField,"textFieldWithStringValue:placeholder:width:","","",0);
objj_msgSend(descriptionTextField,"setFrame:",CGRectMake(CGRectGetMinX(objj_msgSend(informationTextField,"frame")),CGRectGetMaxY(objj_msgSend(descriptionLabel,"frame"))+1,CGRectGetWidth(objj_msgSend(informationTextField,"frame")),100));
objj_msgSend(descriptionTextField,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_20,"addSubview:",descriptionTextField);
sendButton=objj_msgSend(CPButton,"buttonWithTitle:",objj_msgSend(CPString,"stringWithFormat:","Send to %@",_21));
objj_msgSend(sendButton,"setFrameOrigin:",CGPointMake(CGRectGetWidth(_1e)-CGRectGetWidth(objj_msgSend(sendButton,"frame"))-15,270));
objj_msgSend(sendButton,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin);
objj_msgSend(sendButton,"setTarget:",_1c);
objj_msgSend(sendButton,"setAction:",sel_getUid("didClickSendButton:"));
objj_msgSend(_20,"addSubview:",sendButton);
objj_msgSend(_1c,"setDefaultButton:",sendButton);
cancelButton=objj_msgSend(CPButton,"buttonWithTitle:","Cancel");
objj_msgSend(cancelButton,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(sendButton,"frame"))-CGRectGetWidth(objj_msgSend(cancelButton,"frame"))-12,CGRectGetMinY(objj_msgSend(sendButton,"frame"))));
objj_msgSend(cancelButton,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin);
objj_msgSend(cancelButton,"setTarget:",_1c);
objj_msgSend(cancelButton,"setAction:",sel_getUid("didClickCancelButton:"));
objj_msgSend(_20,"addSubview:",cancelButton);
sendingLabel=objj_msgSend(CPTextField,"labelWithTitle:","Sending Report...");
objj_msgSend(sendingLabel,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",11));
objj_msgSend(sendingLabel,"sizeToFit");
objj_msgSend(sendingLabel,"setFrameOrigin:",CGPointMake(12,CGRectGetMaxY(_1e)-35));
objj_msgSend(sendingLabel,"setHidden:",YES);
objj_msgSend(_20,"addSubview:",sendingLabel);
}
return _1c;
}
}),new objj_method(sel_getUid("orderFront:"),function(_23,_24,_25){
with(_23){
objj_msgSendSuper({receiver:_23,super_class:objj_getClass("LPCrashReporterReportWindow").super_class},"orderFront:",_25);
objj_msgSend(_23,"makeFirstResponder:",descriptionTextField);
}
}),new objj_method(sel_getUid("didClickSendButton:"),function(_26,_27,_28){
with(_26){
objj_msgSend(informationTextField,"setEnabled:",NO);
objj_msgSend(descriptionTextField,"setEnabled:",NO);
objj_msgSend(sendButton,"setEnabled:",NO);
objj_msgSend(cancelButton,"setEnabled:",NO);
objj_msgSend(informationLabel,"setAlphaValue:",0.5);
objj_msgSend(descriptionLabel,"setAlphaValue:",0.5);
objj_msgSend(sendingLabel,"setHidden:",NO);
var _29=objj_msgSend(CPURL,"URLWithString:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"objectForInfoDictionaryKey:","LPCrashReporterLoggingURL")||"/"),_2a=objj_msgSend(LPURLPostRequest,"requestWithURL:",_29),_2b=objj_msgSend(objj_msgSend(LPCrashReporter,"sharedErrorLogger"),"exception"),_2c={"name":objj_msgSend(_2b,"name"),"reason":objj_msgSend(_2b,"reason"),"userAgent":navigator.userAgent,"description":objj_msgSend(descriptionTextField,"stringValue")};
objj_msgSend(_2a,"setContent:",_2c);
objj_msgSend(CPURLConnection,"connectionWithRequest:delegate:",_2a,_26);
}
}),new objj_method(sel_getUid("didClickCancelButton:"),function(_2d,_2e,_2f){
with(_2d){
objj_msgSend(objj_msgSend(LPCrashReporter,"sharedErrorLogger"),"alertDidEnd:returnCode:",nil,0);
}
}),new objj_method(sel_getUid("connection:didReceiveData:"),function(_30,_31,_32,_33){
with(_30){
objj_msgSend(CPApp,"stopModal");
objj_msgSend(_30,"orderOut:",nil);
var _34=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(_34,"setDelegate:",objj_msgSend(LPCrashReporter,"sharedErrorLogger"));
objj_msgSend(_34,"setAlertStyle:",CPInformationalAlertStyle);
objj_msgSend(_34,"addButtonWithTitle:","Thanks!");
objj_msgSend(_34,"setMessageText:","Your report has been sent.");
objj_msgSend(_34,"runModal");
}
})]);
var _35=objj_msgSend,_e=YES;
objj_msgSend=function(){
if(!_e){
return _35.apply(this,arguments);
}
try{
return _35.apply(this,arguments);
}
catch(anException){
objj_msgSend(objj_msgSend(LPCrashReporter,"sharedErrorLogger"),"didCatchException:",anException);
return nil;
}
};
p;26;Frameworks/LPKit/LPEmail.jt;1698;@STATIC;1.0;I;21;Foundation/CPObject.jt;1653;
objj_executeFile("Foundation/CPObject.j",NO);
var _1=new RegExp("^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,4}$");
var _2=objj_allocateClassPair(CPObject,"LPEmail"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("email")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithString:"),function(_4,_5,_6){
with(_4){
if(_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("LPEmail").super_class},"init")){
email=_6;
}
return _4;
}
}),new objj_method(sel_getUid("stringValue"),function(_7,_8){
with(_7){
return email;
}
}),new objj_method(sel_getUid("isValidEmail"),function(_9,_a){
with(_9){
return objj_msgSend(LPEmail,"emailWithStringIsValid:",email);
}
}),new objj_method(sel_getUid("isEqualToEmail:"),function(_b,_c,_d){
with(_b){
return objj_msgSend(objj_msgSend(_b,"stringValue"),"isEqualToString:",objj_msgSend(_d,"stringValue"));
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("emailWithString:"),function(_e,_f,_10){
with(_e){
return objj_msgSend(objj_msgSend(_e,"alloc"),"initWithString:",_10);
}
}),new objj_method(sel_getUid("emailWithStringIsValid:"),function(_11,_12,_13){
with(_11){
return _1.test(_13);
}
})]);
var _14="LPEmailKey";
var _2=objj_getClass("LPEmail");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"LPEmail\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_15,_16,_17){
with(_15){
if(_15){
email=objj_msgSend(_17,"decodeObjectForKey:",_14);
}
return _15;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_18,_19,_1a){
with(_18){
objj_msgSend(_1a,"encodeObject:forKey:",email,_14);
}
})]);
p;24;Frameworks/LPKit/LPKit.jt;889;@STATIC;1.0;I;22;LPKit/LPAnchorButton.jI;22;LPKit/LPCalendarView.jI;19;LPKit/LPChartView.jI;26;LPKit/LPCookieController.jI;15;LPKit/LPEmail.jI;28;LPKit/LPLocationController.jI;22;LPKit/LPPieChartView.jI;19;LPKit/LPSlideView.jI;19;LPKit/LPSparkLine.jI;16;LPKit/LPSwitch.jI;24;LPKit/LPURLPostRequest.jI;23;LPKit/LPViewAnimation.jt;556;
objj_executeFile("LPKit/LPAnchorButton.j",NO);
objj_executeFile("LPKit/LPCalendarView.j",NO);
objj_executeFile("LPKit/LPChartView.j",NO);
objj_executeFile("LPKit/LPCookieController.j",NO);
objj_executeFile("LPKit/LPEmail.j",NO);
objj_executeFile("LPKit/LPLocationController.j",NO);
objj_executeFile("LPKit/LPPieChartView.j",NO);
objj_executeFile("LPKit/LPSlideView.j",NO);
objj_executeFile("LPKit/LPSparkLine.j",NO);
objj_executeFile("LPKit/LPSwitch.j",NO);
objj_executeFile("LPKit/LPURLPostRequest.j",NO);
objj_executeFile("LPKit/LPViewAnimation.j",NO);
p;39;Frameworks/LPKit/LPLocationController.jt;1864;@STATIC;1.0;I;21;Foundation/CPObject.jt;1819;
objj_executeFile("Foundation/CPObject.j",NO);
var _1=nil;
var _2=objj_allocateClassPair(CPObject,"LPLocationController"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("currentHash"),new objj_ivar("observers")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("init"),function(_4,_5){
with(_4){
if(_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("LPLocationController").super_class},"init")){
observers=objj_msgSend(CPArray,"array");
currentHash=window.location.hash;
if(typeof window.onhashchange!=="undefined"){
window.onhashchange=function(){
objj_msgSend(_4,"updateLocation:",nil);
};
}else{
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",0.1,_4,sel_getUid("updateLocation:"),nil,YES);
}
}
return _4;
}
}),new objj_method(sel_getUid("formattedHash"),function(_6,_7){
with(_6){
return objj_msgSend(window.location.hash,"substringFromIndex:",1);
}
}),new objj_method(sel_getUid("setLocation:"),function(_8,_9,_a){
with(_8){
window.location.hash=_a;
objj_msgSend(_8,"updateLocation:",nil);
}
}),new objj_method(sel_getUid("updateLocation:"),function(_b,_c,_d){
with(_b){
if(currentHash!==window.location.hash){
currentHash=window.location.hash;
var _e=objj_msgSend(_b,"formattedHash");
for(var i=0,_f=observers.length;i<_f;i++){
objj_msgSend(observers[i][0],"performSelector:withObject:",observers[i][1],_e);
}
}
}
}),new objj_method(sel_getUid("addObserver:selector:"),function(_10,_11,_12,_13){
with(_10){
objj_msgSend(observers,"addObject:",[_12,_13]);
objj_msgSend(_12,"performSelector:withObject:",_13,objj_msgSend(_10,"formattedHash"));
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("sharedLocationController"),function(_14,_15){
with(_14){
if(!_1){
_1=objj_msgSend(objj_msgSend(_14,"alloc"),"init");
}
return _1;
}
})]);
p;39;Frameworks/LPKit/LPMultiLineTextField.jt;8329;@STATIC;1.0;I;20;AppKit/CPTextField.jt;8285;
objj_executeFile("AppKit/CPTextField.j",NO);
var _1=nil;
var _2=objj_allocateClassPair(CPTextField,"LPMultiLineTextField"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_DOMTextareaElement"),new objj_ivar("_stringValue"),new objj_ivar("_hideOverflow")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("_DOMTextareaElement"),function(_4,_5){
with(_4){
if(!_DOMTextareaElement){
_DOMTextareaElement=document.createElement("textarea");
_DOMTextareaElement.style.position="absolute";
_DOMTextareaElement.style.background="none";
_DOMTextareaElement.style.border="0";
_DOMTextareaElement.style.outline="0";
_DOMTextareaElement.style.zIndex="100";
_DOMTextareaElement.style.resize="none";
_DOMTextareaElement.style.padding="0";
_DOMTextareaElement.style.margin="0";
_DOMTextareaElement.onblur=function(){
objj_msgSend(objj_msgSend(_1,"window"),"makeFirstResponder:",nil);
_1=nil;
};
_4._DOMElement.appendChild(_DOMTextareaElement);
}
return _DOMTextareaElement;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_6,_7,_8){
with(_6){
if(_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("LPMultiLineTextField").super_class},"initWithFrame:",_8)){
}
return _6;
}
}),new objj_method(sel_getUid("isScrollable"),function(_9,_a){
with(_9){
return !_hideOverflow;
}
}),new objj_method(sel_getUid("setScrollable:"),function(_b,_c,_d){
with(_b){
_hideOverflow=!_d;
}
}),new objj_method(sel_getUid("setEditable:"),function(_e,_f,_10){
with(_e){
objj_msgSend(_e,"_DOMTextareaElement").style.cursor=_10?"cursor":"default";
objj_msgSendSuper({receiver:_e,super_class:objj_getClass("LPMultiLineTextField").super_class},"setEditable:",_10);
}
}),new objj_method(sel_getUid("selectText:"),function(_11,_12,_13){
with(_11){
objj_msgSend(_11,"_DOMTextareaElement").select();
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_14,_15){
with(_14){
objj_msgSendSuper({receiver:_14,super_class:objj_getClass("LPMultiLineTextField").super_class},"layoutSubviews");
var _16=objj_msgSend(_14,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","content-view",CPWindowAbove,"bezel-view");
objj_msgSend(_16,"setHidden:",YES);
var _17=objj_msgSend(_14,"_DOMTextareaElement"),_18=objj_msgSend(_14,"currentValueForThemeAttribute:","content-inset"),_19=objj_msgSend(_14,"bounds");
_17.style.top=_18.top+"px";
_17.style.bottom=_18.bottom+"px";
_17.style.left=_18.left+"px";
_17.style.right=_18.right+"px";
_17.style.width=(CGRectGetWidth(_19)-_18.left-_18.right)+"px";
_17.style.height=(CGRectGetHeight(_19)-_18.top-_18.bottom)+"px";
_17.style.color=objj_msgSend(objj_msgSend(_14,"currentValueForThemeAttribute:","text-color"),"cssString");
_17.style.font=objj_msgSend(objj_msgSend(_14,"currentValueForThemeAttribute:","font"),"cssString");
switch(objj_msgSend(_14,"currentValueForThemeAttribute:","alignment")){
case CPLeftTextAlignment:
_17.style.textAlign="left";
break;
case CPJustifiedTextAlignment:
_17.style.textAlign="justify";
break;
case CPCenterTextAlignment:
_17.style.textAlign="center";
break;
case CPRightTextAlignment:
_17.style.textAlign="right";
break;
default:
_17.style.textAlign="left";
}
_17.value=_stringValue||"";
if(_hideOverflow){
_17.style.overflow="hidden";
}
}
}),new objj_method(sel_getUid("scrollWheel:"),function(_1a,_1b,_1c){
with(_1a){
var _1d=objj_msgSend(_1a,"_DOMTextareaElement");
_1d.scrollLeft+=_1c._deltaX;
_1d.scrollTop+=_1c._deltaY;
}
}),new objj_method(sel_getUid("mouseDown:"),function(_1e,_1f,_20){
with(_1e){
if(objj_msgSend(_1e,"isEditable")&&objj_msgSend(_1e,"isEnabled")){
objj_msgSend(objj_msgSend(objj_msgSend(_1e,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
}else{
objj_msgSendSuper({receiver:_1e,super_class:objj_getClass("LPMultiLineTextField").super_class},"mouseDown:",_20);
}
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_21,_22,_23){
with(_21){
return objj_msgSend(objj_msgSend(objj_msgSend(_23,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
}
}),new objj_method(sel_getUid("keyDown:"),function(_24,_25,_26){
with(_24){
if(objj_msgSend(_26,"keyCode")===CPTabKeyCode){
if(objj_msgSend(_26,"modifierFlags")&CPShiftKeyMask){
objj_msgSend(objj_msgSend(_24,"window"),"selectPreviousKeyView:",_24);
}else{
objj_msgSend(objj_msgSend(_24,"window"),"selectNextKeyView:",_24);
}
if(objj_msgSend(objj_msgSend(objj_msgSend(_24,"window"),"firstResponder"),"respondsToSelector:",sel_getUid("selectText:"))){
objj_msgSend(objj_msgSend(objj_msgSend(_24,"window"),"firstResponder"),"selectText:",_24);
}
objj_msgSend(objj_msgSend(objj_msgSend(_24,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",NO);
}else{
objj_msgSend(objj_msgSend(objj_msgSend(_24,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
}),new objj_method(sel_getUid("keyUp:"),function(_27,_28,_29){
with(_27){
if(_stringValue!==objj_msgSend(_27,"stringValue")){
_stringValue=objj_msgSend(_27,"stringValue");
if(!_isEditing){
_isEditing=YES;
objj_msgSend(_27,"textDidBeginEditing:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidBeginEditingNotification,_27,nil));
}
objj_msgSend(_27,"textDidChange:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidChangeNotification,_27,nil));
}
objj_msgSend(objj_msgSend(objj_msgSend(_27,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
}
}),new objj_method(sel_getUid("becomeFirstResponder"),function(_2a,_2b){
with(_2a){
_stringValue=objj_msgSend(_2a,"stringValue");
objj_msgSend(_2a,"setThemeState:",CPThemeStateEditing);
setTimeout(function(){
objj_msgSend(_2a,"_DOMTextareaElement").focus();
_1=_2a;
},0);
objj_msgSend(_2a,"textDidFocus:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPTextFieldDidFocusNotification,_2a,nil));
return YES;
}
}),new objj_method(sel_getUid("resignFirstResponder"),function(_2c,_2d){
with(_2c){
objj_msgSend(_2c,"unsetThemeState:",CPThemeStateEditing);
objj_msgSend(_2c,"setStringValue:",objj_msgSend(_2c,"stringValue"));
objj_msgSend(_2c,"_DOMTextareaElement").blur();
if(_isEditing){
_isEditing=NO;
objj_msgSend(_2c,"textDidEndEditing:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidEndEditingNotification,_2c,nil));
if(objj_msgSend(_2c,"sendsActionOnEndEditing")){
objj_msgSend(_2c,"sendAction:to:",objj_msgSend(_2c,"action"),objj_msgSend(_2c,"target"));
}
}
objj_msgSend(_2c,"textDidBlur:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPTextFieldDidBlurNotification,_2c,nil));
return YES;
}
}),new objj_method(sel_getUid("stringValue"),function(_2e,_2f){
with(_2e){
return (!!_DOMTextareaElement)?_DOMTextareaElement.value:"";
}
}),new objj_method(sel_getUid("setStringValue:"),function(_30,_31,_32){
with(_30){
objj_msgSend(_30,"willChangeValueForKey:",CPValueBinding);
_stringValue=_32;
objj_msgSend(_30,"didChangeValueForKey:",CPValueBinding);
objj_msgSend(_30,"setNeedsLayout");
}
}),new objj_method(sel_getUid("objectValue"),function(_33,_34){
with(_33){
return objj_msgSend(_33,"stringValue");
}
}),new objj_method(sel_getUid("setObjectValue:"),function(_35,_36,_37){
with(_35){
objj_msgSend(_35,"setStringValue:",_37);
}
})]);
var _38="LPMultiLineTextFieldStringValueKey",_39="LPMultiLineTextFieldScrollableKey";
var _2=objj_getClass("LPMultiLineTextField");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"LPMultiLineTextField\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_3a,_3b,_3c){
with(_3a){
if(_3a=objj_msgSendSuper({receiver:_3a,super_class:objj_getClass("LPMultiLineTextField").super_class},"initWithCoder:",_3c)){
objj_msgSend(_3a,"setStringValue:",objj_msgSend(_3c,"decodeObjectForKey:",_38));
objj_msgSend(_3a,"setScrollable:",objj_msgSend(_3c,"decodeBoolForKey:",_39));
}
return _3a;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_3d,_3e,_3f){
with(_3d){
objj_msgSendSuper({receiver:_3d,super_class:objj_getClass("LPMultiLineTextField").super_class},"encodeWithCoder:",_3f);
objj_msgSend(_3f,"encodeObject:forKey:",_stringValue,_38);
objj_msgSend(_3f,"encodeBool:forKey:",(_hideOverflow?NO:YES),_39);
}
})]);
p;33;Frameworks/LPKit/LPPieChartView.jt;6418;@STATIC;1.0;I;15;AppKit/CPView.jt;6379;
objj_executeFile("AppKit/CPView.j",NO);
var _1=objj_allocateClassPair(CPView,"LPPieChartView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("dataSource"),new objj_ivar("delegate"),new objj_ivar("drawView"),new objj_ivar("values"),new objj_ivar("sum"),new objj_ivar("paths")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("dataSource"),function(_3,_4){
with(_3){
return dataSource;
}
}),new objj_method(sel_getUid("setDataSource:"),function(_5,_6,_7){
with(_5){
dataSource=_7;
}
}),new objj_method(sel_getUid("delegate"),function(_8,_9){
with(_8){
return delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_a,_b,_c){
with(_a){
delegate=_c;
}
}),new objj_method(sel_getUid("drawView"),function(_d,_e){
with(_d){
return drawView;
}
}),new objj_method(sel_getUid("setDrawView:"),function(_f,_10,_11){
with(_f){
drawView=_11;
}
}),new objj_method(sel_getUid("paths"),function(_12,_13){
with(_12){
return paths;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_14,_15,_16){
with(_14){
if(_14=objj_msgSendSuper({receiver:_14,super_class:objj_getClass("LPPieChartView").super_class},"initWithFrame:",_16)){
objj_msgSend(_14,"setDrawView:",objj_msgSend(objj_msgSend(LPPieChartDrawView,"alloc"),"initWithFrame:",CGRectMakeZero()));
paths=objj_msgSend(CPArray,"array");
}
return _14;
}
}),new objj_method(sel_getUid("setDataSource:"),function(_17,_18,_19){
with(_17){
dataSource=_19;
objj_msgSend(_17,"reloadData");
}
}),new objj_method(sel_getUid("setDelegate:"),function(_1a,_1b,_1c){
with(_1a){
delegate=_1c;
objj_msgSend(_1a,"reloadData");
}
}),new objj_method(sel_getUid("setDrawView:"),function(_1d,_1e,_1f){
with(_1d){
var _20=objj_msgSend(CPKeyedUnarchiver,"unarchiveObjectWithData:",objj_msgSend(CPKeyedArchiver,"archivedDataWithRootObject:",_1f));
if(!drawView){
objj_msgSend(_1d,"addSubview:",_20);
}else{
objj_msgSend(_1d,"replaceSubview:with:",drawView,_20);
}
drawView=_20;
objj_msgSend(drawView,"setFrame:",objj_msgSend(_1d,"bounds"));
objj_msgSend(drawView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_1d,"reloadData");
}
}),new objj_method(sel_getUid("reloadData"),function(_21,_22){
with(_21){
if(delegate&&dataSource&&drawView){
var _23=objj_msgSend(dataSource,"numberOfItemsInPieChartView:",_21),_24=objj_msgSend(CPArray,"array");
values=objj_msgSend(CPArray,"array");
sum=0;
for(var i=0;i<_23;i++){
var _25=objj_msgSend(dataSource,"pieChartView:floatValueForIndex:",_21,i);
objj_msgSend(values,"addObject:",_25);
sum+=_25;
}
objj_msgSend(_21,"setNeedsLayout");
objj_msgSend(drawView,"setNeedsDisplay:",YES);
}
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_26,_27){
with(_26){
var _28=objj_msgSend(drawView,"bounds"),_29=MIN(CGRectGetWidth(_28),CGRectGetHeight(_28))/2,_2a=CGRectGetMidX(_28),_2b=CGRectGetMidY(_28),_2c=0;
paths=objj_msgSend(CPArray,"array");
for(var i=0;i<values.length;i++){
var _2d=values[i],_2e=(_2d/sum)*360;
var _2f=CGPathCreateMutable();
CGPathMoveToPoint(_2f,nil,_2a,_2b);
CGPathAddArc(_2f,nil,_2a,_2b,_29,_2c/(180/PI),(_2c+_2e)/(180/PI),YES);
CGPathAddLineToPoint(_2f,nil,_2a,_2b);
paths.push(_2f);
_2c+=_2e;
}
}
}),new objj_method(sel_getUid("indexOfValueAtPoint:"),function(_30,_31,_32){
with(_30){
var _33=CGBitmapGraphicsContextCreate();
if(_33.isPointInPath){
for(var i=0;i<paths.length;i++){
CGContextBeginPath(_33);
CGContextAddPath(_33,paths[i]);
CGContextClosePath(_33);
if(_33.isPointInPath(_32.x,_32.y)){
return i;
}
}
}
return -1;
}
}),new objj_method(sel_getUid("mouseMoved:"),function(_34,_35,_36){
with(_34){
if(objj_msgSend(delegate,"respondsToSelector:",sel_getUid("pieChartView:mouseMovedOverIndex:"))){
var _37=objj_msgSend(_34,"convertPoint:fromView:",objj_msgSend(_36,"locationInWindow"),nil);
objj_msgSend(delegate,"pieChartView:mouseMovedOverIndex:",_34,objj_msgSend(_34,"indexOfValueAtPoint:",_37));
}
}
}),new objj_method(sel_getUid("mouseExited:"),function(_38,_39,_3a){
with(_38){
if(objj_msgSend(delegate,"respondsToSelector:",sel_getUid("pieChartView:mouseMovedOverIndex:"))){
objj_msgSend(delegate,"pieChartView:mouseMovedOverIndex:",_38,-1);
}
}
})]);
var _3b="LPPieChartViewDrawView",_3c="LPPieChartViewValues",_3d="LPPieChartViewSum",_3e="LPPieChartViewPaths";
var _1=objj_getClass("LPPieChartView");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"LPPieChartView\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_3f,_40,_41){
with(_3f){
if(_3f){
drawView=objj_msgSend(_41,"decodeObjectForKey:",_3b);
values=objj_msgSend(_41,"decodeObjectForKey:",_3c);
sum=objj_msgSend(_41,"decodeFloatForKey:",_3d);
paths=objj_msgSend(_41,"decodeObjectForKey:",_3e);
}
return _3f;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_42,_43,_44){
with(_42){
objj_msgSend(_44,"encodeObject:forKey:",drawView,_3b);
objj_msgSend(_44,"encodeObject:forKey:",values,_3c);
objj_msgSend(_44,"encodeFloat:forKey:",sum,_3d);
objj_msgSend(_44,"encodeObject:forKey:",paths,_3e);
}
})]);
var _1=objj_allocateClassPair(CPView,"LPPieChartDrawView"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("drawRect:"),function(_45,_46,_47){
with(_45){
if(objj_msgSend(_45,"superview")){
objj_msgSend(_45,"drawInContext:paths:",objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort"),objj_msgSend(objj_msgSend(_45,"superview"),"paths"));
}
}
}),new objj_method(sel_getUid("drawInContext:paths:"),function(_48,_49,_4a,_4b){
with(_48){
CGContextSetLineWidth(_4a,objj_msgSend(_48,"currentValueForThemeAttribute:","line-width"));
CGContextSetStrokeColor(_4a,objj_msgSend(_48,"currentValueForThemeAttribute:","stroke-color"));
var _4c=objj_msgSend(_48,"currentValueForThemeAttribute:","fill-colors");
for(var i=0;i<_4b.length;i++){
CGContextBeginPath(_4a);
CGContextAddPath(_4a,_4b[i]);
CGContextClosePath(_4a);
CGContextSetFillColor(_4a,_4c[i]);
CGContextFillPath(_4a);
CGContextStrokePath(_4a);
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("themeClass"),function(_4d,_4e){
with(_4d){
return "lp-piechart-drawview";
}
}),new objj_method(sel_getUid("themeAttributes"),function(_4f,_50){
with(_4f){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[[objj_msgSend(CPColor,"grayColor")],1,objj_msgSend(CPColor,"whiteColor")],["fill-colors","line-width","stroke-color"]);
}
})]);
p;30;Frameworks/LPKit/LPSlideView.jt;5266;@STATIC;1.0;I;15;AppKit/CPView.jI;23;LPKit/LPViewAnimation.jt;5199;
objj_executeFile("AppKit/CPView.j",NO);
objj_executeFile("LPKit/LPViewAnimation.j",NO);
LPSlideViewHorizontalDirection=0;
LPSlideViewVerticalDirection=1;
LPSlideViewPositiveDirection=2;
LPSlideViewNegativeDirection=4;
var _1=objj_allocateClassPair(CPView,"LPSlideView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("slideDirection"),new objj_ivar("currentView"),new objj_ivar("previousView"),new objj_ivar("animationDuration"),new objj_ivar("animationCurve"),new objj_ivar("isSliding"),new objj_ivar("_delegate")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("slideDirection"),function(_3,_4){
with(_3){
return slideDirection;
}
}),new objj_method(sel_getUid("setSlideDirection:"),function(_5,_6,_7){
with(_5){
slideDirection=_7;
}
}),new objj_method(sel_getUid("currentView"),function(_8,_9){
with(_8){
return currentView;
}
}),new objj_method(sel_getUid("setCurrentView:"),function(_a,_b,_c){
with(_a){
currentView=_c;
}
}),new objj_method(sel_getUid("previousView"),function(_d,_e){
with(_d){
return previousView;
}
}),new objj_method(sel_getUid("setPreviousView:"),function(_f,_10,_11){
with(_f){
previousView=_11;
}
}),new objj_method(sel_getUid("animationDuration"),function(_12,_13){
with(_12){
return animationDuration;
}
}),new objj_method(sel_getUid("setAnimationDuration:"),function(_14,_15,_16){
with(_14){
animationDuration=_16;
}
}),new objj_method(sel_getUid("animationCurve"),function(_17,_18){
with(_17){
return animationCurve;
}
}),new objj_method(sel_getUid("setAnimationCurve:"),function(_19,_1a,_1b){
with(_19){
animationCurve=_1b;
}
}),new objj_method(sel_getUid("isSliding"),function(_1c,_1d){
with(_1c){
return isSliding;
}
}),new objj_method(sel_getUid("delegate"),function(_1e,_1f){
with(_1e){
return _delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_20,_21,_22){
with(_20){
_delegate=_22;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_23,_24,_25){
with(_23){
if(_23=objj_msgSendSuper({receiver:_23,super_class:objj_getClass("LPSlideView").super_class},"initWithFrame:",_25)){
animationCurve=CPAnimationEaseOut;
slideDirection=LPSlideViewHorizontalDirection;
animationDuration=0.2;
isSliding=NO;
}
return _23;
}
}),new objj_method(sel_getUid("addSubview:"),function(_26,_27,_28){
with(_26){
if(!currentView){
currentView=_28;
}else{
objj_msgSend(_28,"setHidden:",YES);
}
objj_msgSend(_28,"setFrame:",objj_msgSend(_26,"bounds"));
objj_msgSend(_28,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSendSuper({receiver:_26,super_class:objj_getClass("LPSlideView").super_class},"addSubview:",_28);
}
}),new objj_method(sel_getUid("slideToView:"),function(_29,_2a,_2b){
with(_29){
objj_msgSend(_29,"slideToView:direction:animationProgress:",_2b,nil,nil);
}
}),new objj_method(sel_getUid("slideToView:direction:"),function(_2c,_2d,_2e,_2f){
with(_2c){
objj_msgSend(_2c,"slideToView:direction:animationProgress:",_2e,_2f,nil);
}
}),new objj_method(sel_getUid("slideToView:direction:animationProgress:"),function(_30,_31,_32,_33,_34){
with(_30){
if(_32==currentView||isSliding){
return;
}
isSliding=YES;
if(_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("slideView:willMoveToView:"))){
objj_msgSend(_delegate,"slideView:willMoveToView:",_30,_32);
}
var _35=objj_msgSend(objj_msgSend(_30,"subviews"),"indexOfObject:",_32),_36=objj_msgSend(objj_msgSend(_30,"subviews"),"indexOfObject:",currentView),_37=objj_msgSend(_30,"frame").size;
objj_msgSend(_32,"setHidden:",NO);
var _38=CGPointMake(0,0),_39=CGPointMake(0,0);
if(slideDirection==LPSlideViewHorizontalDirection){
var _3a,_3b;
if((_33&&_33==LPSlideViewNegativeDirection)||(!_33&&_35<_36)){
_3a=-_37.width;
_3b=_37.width;
}
if((_33&&_33==LPSlideViewPositiveDirection)||(!_33&&_35>_36)){
_3a=_37.width;
_3b=-_37.width;
}
_38.x=_3a;
_39.x=_3b;
}else{
if(slideDirection==LPSlideViewVerticalDirection){
var _3c,_3d;
if((_33&&_33==LPSlideViewNegativeDirection)||(!_33&&_35>_36)){
_3c=_37.height;
_3d=-_37.height;
}
if((_33&&_33==LPSlideViewPositiveDirection)||(!_33&&_35<_36)){
_3c=-_37.height;
_3d=_37.height;
}
_38.y=_3c;
_39.y=_3d;
if(_34){
_38.y-=(_34*_38.y);
_39.y-=(_34*_39.y);
}
}
}
var _3e=objj_msgSend(objj_msgSend(LPViewAnimation,"alloc"),"initWithViewAnimations:",[{"target":_32,"animations":[[LPOriginAnimationKey,_38,CGPointMake(0,0)]]},{"target":currentView,"animations":[[LPOriginAnimationKey,CGPointMakeZero(),_39]]}]);
objj_msgSend(_3e,"setAnimationCurve:",animationCurve);
objj_msgSend(_3e,"setDuration:",animationDuration);
objj_msgSend(_3e,"setDelegate:",_30);
objj_msgSend(_3e,"startAnimation");
previousView=currentView;
currentView=_32;
}
}),new objj_method(sel_getUid("animationDidEnd"),function(_3f,_40){
with(_3f){
if(_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("slideView:didMoveToView:"))){
objj_msgSend(_delegate,"slideView:didMoveToView:",_3f,currentView);
}
objj_msgSend(previousView,"setHidden:",YES);
isSliding=NO;
}
}),new objj_method(sel_getUid("animationDidEnd:"),function(_41,_42,_43){
with(_41){
objj_msgSend(_41,"animationDidEnd");
}
}),new objj_method(sel_getUid("animationDidStop:"),function(_44,_45,_46){
with(_44){
objj_msgSend(_44,"animationDidEnd");
}
})]);
p;30;Frameworks/LPKit/LPSparkLine.jt;4018;@STATIC;1.0;I;21;Foundation/CPObject.jt;3973;
objj_executeFile("Foundation/CPObject.j",NO);
var _1=objj_allocateClassPair(CPView,"LPSparkLine"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("data"),new objj_ivar("lineColor"),new objj_ivar("lineWeight"),new objj_ivar("shadowColor"),new objj_ivar("shadowOffset"),new objj_ivar("isEmpty")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("data"),function(_3,_4){
with(_3){
return data;
}
}),new objj_method(sel_getUid("setData:"),function(_5,_6,_7){
with(_5){
data=_7;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_8,_9,_a){
with(_8){
_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("LPSparkLine").super_class},"initWithFrame:",_a);
if(_8){
lineWeight=1;
lineColor=objj_msgSend(CPColor,"blackColor");
shadowColor=nil;
shadowOffset=CGSizeMake(0,1);
}
return _8;
}
}),new objj_method(sel_getUid("drawRect:"),function(_b,_c,_d){
with(_b){
var _e=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort"),_f=objj_msgSend(_b,"bounds"),_10=CGRectGetHeight(_f)-(2*lineWeight),_11=CGRectGetWidth(_f)/(objj_msgSend(data,"count")-1),_12=Math.max.apply(Math,data);
CGContextBeginPath(_e);
if(isEmpty){
CGContextMoveToPoint(_e,0,_10/2);
CGContextAddLineToPoint(_e,CGRectGetWidth(_f),_10/2);
}else{
for(var i=0;i<objj_msgSend(data,"count");i++){
var x=i*_11,y=lineWeight+(_10-((objj_msgSend(data,"objectAtIndex:",i)/_12)*_10));
if(i===0){
CGContextMoveToPoint(_e,0,y);
}else{
CGContextAddLineToPoint(_e,x,y);
}
}
}
CGContextSetLineJoin(_e,kCGLineJoinRound);
CGContextSetLineWidth(_e,lineWeight);
CGContextSetStrokeColor(_e,lineColor);
CGContextSetShadowWithColor(_e,shadowOffset,0,shadowColor);
CGContextStrokePath(_e);
CGContextClosePath(_e);
}
}),new objj_method(sel_getUid("setData:"),function(_13,_14,_15){
with(_13){
isEmpty=YES;
for(var i=0;i<_15.length;i++){
if((_15[i]>0)&&(isEmpty)){
isEmpty=NO;
}
}
data=_15;
objj_msgSend(_13,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("setLineColor:"),function(_16,_17,_18){
with(_16){
lineColor=_18;
objj_msgSend(_16,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("setLineWeight:"),function(_19,_1a,_1b){
with(_19){
lineWeight=_1b;
objj_msgSend(_19,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("setShadowColor:"),function(_1c,_1d,_1e){
with(_1c){
shadowColor=_1e;
objj_msgSend(_1c,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("setShadowOffset:"),function(_1f,_20,_21){
with(_1f){
shadowOffset=_21;
objj_msgSend(_1f,"setNeedsDisplay:",YES);
}
})]);
var _22="LPSparkLineDataKey",_23="LPSparkLineLineColorKey",_24="LPSparkLineLineWeightKey",_25="LPSparkLineShadowColorKey",_26="LPSparkLineShadowOffsetKey",_27="LPSparkLineIsEmptyKey";
var _1=objj_getClass("LPSparkLine");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"LPSparkLine\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_28,_29,_2a){
with(_28){
if(_28=objj_msgSendSuper({receiver:_28,super_class:objj_getClass("LPSparkLine").super_class},"initWithCoder:",_2a)){
data=objj_msgSend(_2a,"decodeObjectForKey:",_22);
lineColor=objj_msgSend(_2a,"decodeObjectForKey:",_23);
lineWeight=objj_msgSend(_2a,"decodeFloatForKey:",_24);
shadowColor=objj_msgSend(_2a,"decodeObjectForKey:",_25);
shadowOffset=objj_msgSend(_2a,"decodeSizeForKey:",_26);
isEmpty=!objj_msgSend(_2a,"containsValueForKey:",_27)||objj_msgSend(_2a,"decodeObjectForKey:",_27);
}
return _28;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_2b,_2c,_2d){
with(_2b){
objj_msgSendSuper({receiver:_2b,super_class:objj_getClass("LPSparkLine").super_class},"encodeWithCoder:",_2d);
objj_msgSend(_2d,"encodeObject:forKey:",data,_22);
objj_msgSend(_2d,"encodeObject:forKey:",lineColor,_23);
objj_msgSend(_2d,"encodeFloat:forKey:",lineWeight,_24);
objj_msgSend(_2d,"encodeObject:forKey:",shadowColor,_25);
objj_msgSend(_2d,"encodeSize:forKey:",shadowOffset,_26);
objj_msgSend(_2d,"encodeBool:forKey:",isEmpty,_27);
}
})]);
p;27;Frameworks/LPKit/LPSwitch.jt;9340;@STATIC;1.0;I;18;AppKit/CPControl.jI;23;LPKit/LPViewAnimation.jt;9270;
objj_executeFile("AppKit/CPControl.j",NO);
objj_executeFile("LPKit/LPViewAnimation.j",NO);
var _1=objj_allocateClassPair(CPControl,"LPSwitch"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("on"),new objj_ivar("dragStartPoint"),new objj_ivar("knob"),new objj_ivar("knobDragStartPoint"),new objj_ivar("isDragging"),new objj_ivar("animationDuration"),new objj_ivar("animationCurve"),new objj_ivar("offBackgroundView"),new objj_ivar("onBackgroundView"),new objj_ivar("offLabel"),new objj_ivar("onLabel"),new objj_ivar("animation")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("isOn"),function(_3,_4){
with(_3){
return on;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_5,_6,_7){
with(_5){
if(_5=objj_msgSendSuper({receiver:_5,super_class:objj_getClass("LPSwitch").super_class},"initWithFrame:",_7)){
offBackgroundView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",objj_msgSend(_5,"bounds"));
objj_msgSend(offBackgroundView,"setHitTests:",NO);
objj_msgSend(_5,"addSubview:",offBackgroundView);
onBackgroundView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,0,CGRectGetHeight(objj_msgSend(_5,"bounds"))));
objj_msgSend(onBackgroundView,"setHitTests:",NO);
objj_msgSend(_5,"addSubview:",onBackgroundView);
knob=objj_msgSend(objj_msgSend(LPSwitchKnob,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_5,"addSubview:",knob);
offLabel=objj_msgSend(CPTextField,"labelWithTitle:","Off");
objj_msgSend(_5,"addSubview:",offLabel);
onLabel=objj_msgSend(CPTextField,"labelWithTitle:","On");
objj_msgSend(_5,"addSubview:",onLabel);
animationDuration=0.2;
animationCurve=CPAnimationEaseOut;
objj_msgSend(_5,"layoutSubviews");
objj_msgSend(_5,"setNeedsLayout");
}
return _5;
}
}),new objj_method(sel_getUid("setOn:animated:"),function(_8,_9,_a,_b){
with(_8){
objj_msgSend(_8,"setOn:animated:sendAction:",_a,_b,YES);
}
}),new objj_method(sel_getUid("setOn:animated:sendAction:"),function(_c,_d,_e,_f,_10){
with(_c){
if(_10&&on!==_e){
on=_e;
objj_msgSend(_c,"sendAction:to:",_action,_target);
}else{
on=_e;
}
var _11=CGRectGetMinY(objj_msgSend(knob,"frame")),_12=CGRectMake((on)?objj_msgSend(knob,"maxX"):objj_msgSend(knob,"minX"),_11,CGRectGetWidth(objj_msgSend(knob,"frame")),CGRectGetHeight(objj_msgSend(knob,"frame"))),_13=CGRectMake(0,0,CGRectGetMinX(_12)+CGRectGetMidX(objj_msgSend(knob,"bounds")),CGRectGetHeight(objj_msgSend(onBackgroundView,"bounds"))),_14=objj_msgSend(_c,"labelOffset"),_15=CGRectMake(CGRectGetMaxX(_12)+_14.width,_14.height,CGRectGetWidth(objj_msgSend(offLabel,"bounds")),CGRectGetHeight(objj_msgSend(offLabel,"bounds"))),_16=CGRectMake(CGRectGetMinX(_12)-_14.width-CGRectGetWidth(objj_msgSend(onLabel,"bounds")),_14.height,CGRectGetWidth(objj_msgSend(onLabel,"bounds")),CGRectGetHeight(objj_msgSend(onLabel,"bounds")));
if(objj_msgSend(animation,"isAnimating")){
objj_msgSend(animation,"stopAnimation");
}
if(_f){
animation=objj_msgSend(objj_msgSend(LPViewAnimation,"alloc"),"initWithViewAnimations:",[{"target":knob,"animations":[[LPOriginAnimationKey,objj_msgSend(knob,"frame").origin,_12.origin]]},{"target":onBackgroundView,"animations":[[LPFrameAnimationKey,objj_msgSend(onBackgroundView,"frame"),_13]]},{"target":offLabel,"animations":[[LPOriginAnimationKey,objj_msgSend(offLabel,"frame").origin,_15.origin]]},{"target":onLabel,"animations":[[LPOriginAnimationKey,objj_msgSend(onLabel,"frame").origin,_16.origin]]}]);
objj_msgSend(animation,"setAnimationCurve:",animationCurve);
objj_msgSend(animation,"setDuration:",animationDuration);
objj_msgSend(animation,"setDelegate:",_c);
objj_msgSend(animation,"startAnimation");
}else{
objj_msgSend(knob,"setFrame:",_12);
objj_msgSend(onBackgroundView,"setFrame:",_13);
objj_msgSend(offLabel,"setFrame:",_15);
}
}
}),new objj_method(sel_getUid("mouseDown:"),function(_17,_18,_19){
with(_17){
if(!objj_msgSend(_17,"isEnabled")){
return;
}
dragStartPoint=objj_msgSend(_17,"convertPoint:fromView:",objj_msgSend(_19,"locationInWindow"),nil);
knobDragStartPoint=objj_msgSend(knob,"frame").origin;
isDragging=NO;
var _1a=objj_msgSend(knob,"convertPoint:fromView:",dragStartPoint,_17).x;
if(_1a>0&&_1a<CGRectGetWidth(objj_msgSend(knob,"bounds"))){
objj_msgSend(knob,"setHighlighted:",YES);
objj_msgSend(_17,"setNeedsLayout");
}
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_1b,_1c,_1d){
with(_1b){
if(!objj_msgSend(_1b,"isEnabled")){
return;
}
isDragging=YES;
var _1e=objj_msgSend(_1b,"convertPoint:fromView:",objj_msgSend(_1d,"locationInWindow"),nil),_1f=knobDragStartPoint.x+(_1e.x-dragStartPoint.x),_20=objj_msgSend(knob,"minX"),_21=objj_msgSend(knob,"maxX"),_22=CGRectGetHeight(objj_msgSend(_1b,"bounds"));
if(_1f<_20){
_1f=_20;
}else{
if(_1f>_21){
_1f=_21;
}
}
objj_msgSend(onBackgroundView,"setFrameSize:",CGSizeMake(_1f+CGRectGetMidX(objj_msgSend(knob,"bounds")),_22));
objj_msgSend(knob,"setFrameOrigin:",CGPointMake(_1f,CGRectGetMinY(objj_msgSend(knob,"frame"))));
objj_msgSend(_1b,"setNeedsLayout");
}
}),new objj_method(sel_getUid("mouseUp:"),function(_23,_24,_25){
with(_23){
if(!objj_msgSend(_23,"isEnabled")){
return;
}
objj_msgSend(_23,"setOn:animated:",isDragging?CGRectGetMidX(objj_msgSend(_23,"bounds"))<CGRectGetMidX(objj_msgSend(knob,"frame")):!on,YES);
objj_msgSend(knob,"setHighlighted:",NO);
objj_msgSend(_23,"setNeedsLayout");
}
}),new objj_method(sel_getUid("labelOffset"),function(_26,_27){
with(_26){
var _28=objj_msgSend(_26,"currentValueForThemeAttribute:","label-offset");
return (_28)?_28:CGSizeMake(0,0);
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_29,_2a){
with(_29){
objj_msgSend(offBackgroundView,"setBackgroundColor:",objj_msgSend(_29,"currentValueForThemeAttribute:","off-background-color"));
objj_msgSend(onBackgroundView,"setBackgroundColor:",objj_msgSend(_29,"currentValueForThemeAttribute:","on-background-color"));
objj_msgSend(knob,"setBackgroundColor:",objj_msgSend(_29,"valueForThemeAttribute:inState:","knob-background-color",objj_msgSend(knob,"themeState")));
objj_msgSend(knob,"setFrameSize:",objj_msgSend(_29,"currentValueForThemeAttribute:","knob-size"));
var _2b=objj_msgSend(_29,"labelOffset");
objj_msgSend(offLabel,"setFont:",objj_msgSend(_29,"currentValueForThemeAttribute:","off-label-font"));
objj_msgSend(offLabel,"setTextColor:",objj_msgSend(_29,"currentValueForThemeAttribute:","off-label-text-color"));
objj_msgSend(offLabel,"setTextShadowColor:",objj_msgSend(_29,"currentValueForThemeAttribute:","off-label-text-shadow-color"));
objj_msgSend(offLabel,"setTextShadowOffset:",objj_msgSend(_29,"currentValueForThemeAttribute:","off-label-text-shadow-offset"));
objj_msgSend(offLabel,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(knob,"frame"))+_2b.width,_2b.height));
objj_msgSend(offLabel,"sizeToFit");
objj_msgSend(onLabel,"setFont:",objj_msgSend(_29,"currentValueForThemeAttribute:","on-label-font"));
objj_msgSend(onLabel,"setTextColor:",objj_msgSend(_29,"currentValueForThemeAttribute:","on-label-text-color"));
objj_msgSend(onLabel,"setTextShadowColor:",objj_msgSend(_29,"currentValueForThemeAttribute:","on-label-text-shadow-color"));
objj_msgSend(onLabel,"setTextShadowOffset:",objj_msgSend(_29,"currentValueForThemeAttribute:","on-label-text-shadow-offset"));
objj_msgSend(onLabel,"sizeToFit");
objj_msgSend(onLabel,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(knob,"frame"))-_2b.width-CGRectGetWidth(objj_msgSend(onLabel,"bounds")),CGRectGetMinY(objj_msgSend(offLabel,"frame"))));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("themeClass"),function(_2c,_2d){
with(_2c){
return "lp-switch";
}
}),new objj_method(sel_getUid("themeAttributes"),function(_2e,_2f){
with(_2e){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null"),objj_msgSend(CPNull,"null")],["off-background-color","on-background-color","knob-background-color","knob-size","label-offset","off-label-font","off-label-text-color","off-label-text-shadow-color","off-label-text-shadow-offset","on-label-font","on-label-text-color","on-label-text-shadow-color","on-label-text-shadow-offset"]);
}
})]);
var _1=objj_allocateClassPair(CPView,"LPSwitchKnob"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_30,_31,_32){
with(_30){
if(_30=objj_msgSendSuper({receiver:_30,super_class:objj_getClass("LPSwitchKnob").super_class},"initWithFrame:",_32)){
objj_msgSend(_30,"setHitTests:",NO);
}
return _30;
}
}),new objj_method(sel_getUid("setHighlighted:"),function(_33,_34,_35){
with(_33){
isHighlighted=_35;
if(_35){
objj_msgSend(_33,"setThemeState:",CPThemeStateHighlighted);
}else{
objj_msgSend(_33,"unsetThemeState:",CPThemeStateHighlighted);
}
}
}),new objj_method(sel_getUid("minX"),function(_36,_37){
with(_36){
return 0;
}
}),new objj_method(sel_getUid("maxX"),function(_38,_39){
with(_38){
return CGRectGetWidth(objj_msgSend(objj_msgSend(_38,"superview"),"bounds"))-CGRectGetWidth(objj_msgSend(_38,"bounds"));
}
})]);
p;35;Frameworks/LPKit/LPURLPostRequest.jt;1235;@STATIC;1.0;I;25;Foundation/CPURLRequest.jt;1186;
objj_executeFile("Foundation/CPURLRequest.j",NO);
var _1=objj_allocateClassPair(CPURLRequest,"LPURLPostRequest"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithURL:"),function(_3,_4,_5){
with(_3){
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("LPURLPostRequest").super_class},"initWithURL:",_5)){
objj_msgSend(_3,"setHTTPMethod:","POST");
objj_msgSend(_3,"setValue:forHTTPHeaderField:","application/x-www-form-urlencoded","Content-Type");
}
return _3;
}
}),new objj_method(sel_getUid("setContent:"),function(_6,_7,_8){
with(_6){
objj_msgSend(_6,"setContent:escape:",_8,YES);
}
}),new objj_method(sel_getUid("setContent:escape:"),function(_9,_a,_b,_c){
with(_9){
var _d="";
for(key in _b){
_d=objj_msgSend(_d,"stringByAppendingString:",objj_msgSend(CPString,"stringWithFormat:","%s=%s&",key,_c?encodeURIComponent(_b[key]):_b[key]));
}
_d=objj_msgSend(_d,"substringToIndex:",objj_msgSend(_d,"length")-1);
objj_msgSend(_9,"setHTTPBody:",_d);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("requestWithURL:"),function(_e,_f,_10){
with(_e){
return objj_msgSend(objj_msgSend(_e,"alloc"),"initWithURL:",_10);
}
})]);
p;34;Frameworks/LPKit/LPViewAnimation.jt;8134;@STATIC;1.0;I;21;Foundation/CPObject.jt;8089;
objj_executeFile("Foundation/CPObject.j",NO);
LPCSSAnimationsAreAvailable=NO;
var _1=["webkit","Moz","moz","o","ms"],_2=nil;
LPFadeAnimationKey="LPFadeAnimation";
LPFrameAnimationKey="LPFrameAnimation";
LPOriginAnimationKey="LPOriginAnimation";
LPTestCSSFeature=function(_3){
if(typeof document==="undefined"){
return NO;
}
if(!_2){
_2=document.createElement("div");
}
var _4=[_3];
for(var i=0;i<_1.length;i++){
_4.push(_1[i]+_3);
}
for(var i=0;i<_4.length;i++){
if(typeof _2.style[_4[i]]!=="undefined"){
return YES;
}
}
return NO;
};
LPCSSAnimationsAreAvailable=LPTestCSSFeature("AnimationName");
var _5=function(_6,_7,_8,_9){
if(_9){
_6.style[_8]=_6.style[_8]+", "+_7;
}else{
_6.style[_8]=_7;
}
};
var _a=objj_allocateClassPair(CPAnimation,"LPViewAnimation"),_b=_a.isa;
class_addIvars(_a,[new objj_ivar("_isAnimating"),new objj_ivar("_viewAnimations"),new objj_ivar("_animationDidEndTimeout"),new objj_ivar("_shouldUseCSSAnimations"),new objj_ivar("_c1"),new objj_ivar("_c2")]);
objj_registerClassPair(_a);
class_addMethods(_a,[new objj_method(sel_getUid("viewAnimations"),function(_c,_d){
with(_c){
return _viewAnimations;
}
}),new objj_method(sel_getUid("setViewAnimations:"),function(_e,_f,_10){
with(_e){
_viewAnimations=_10;
}
}),new objj_method(sel_getUid("shouldUseCSSAnimations"),function(_11,_12){
with(_11){
return _shouldUseCSSAnimations;
}
}),new objj_method(sel_getUid("setShouldUseCSSAnimations:"),function(_13,_14,_15){
with(_13){
_shouldUseCSSAnimations=_15;
}
}),new objj_method(sel_getUid("initWithViewAnimations:"),function(_16,_17,_18){
with(_16){
if(_16=objj_msgSend(_16,"initWithDuration:animationCurve:",1,CPAnimationLinear)){
_isAnimating=NO;
_viewAnimations=_18;
_shouldUseCSSAnimations=NO;
}
return _16;
}
}),new objj_method(sel_getUid("setAnimationCurve:"),function(_19,_1a,_1b){
with(_19){
objj_msgSendSuper({receiver:_19,super_class:objj_getClass("LPViewAnimation").super_class},"setAnimationCurve:",_1b);
_c1=[];
_c2=[];
objj_msgSend(_timingFunction,"getControlPointAtIndex:values:",1,_c1);
objj_msgSend(_timingFunction,"getControlPointAtIndex:values:",2,_c2);
}
}),new objj_method(sel_getUid("startAnimation"),function(_1c,_1d){
with(_1c){
if(LPCSSAnimationsAreAvailable&&_shouldUseCSSAnimations){
if(_isAnimating){
return;
}
_isAnimating=YES;
var i=_viewAnimations.length;
while(i--){
var _1e=_viewAnimations[i],_1f=_1e["target"];
objj_msgSend(_1c,"target:setCSSAnimationDuration:",_1f,_duration);
objj_msgSend(_1c,"target:setCSSAnimationCurve:",_1f,_animationCurve);
var x=_1e["animations"].length;
while(x--){
var _20=_1e["animations"][x],_21=_20[0],_22=_20[1],end=_20[2];
if(_21===LPFadeAnimationKey){
objj_msgSend(_1f,"setAlphaValue:",_22);
objj_msgSend(_1c,"target:addCSSAnimationPropertyForKey:append:",_1f,_21,x!==0);
setTimeout(function(_23,_24){
_23._DOMElement.style["-webkit-transform"]="translate3d(0px, 0px, 0px)";
objj_msgSend(_23,"setAlphaValue:",_24);
},0,_1f,end);
}else{
if(_21===LPOriginAnimationKey){
if(!CGPointEqualToPoint(_22,end)){
objj_msgSend(_1f,"setFrameOrigin:",_22);
objj_msgSend(_1c,"target:addCSSAnimationPropertyForKey:append:",_1f,_21,x!==0);
setTimeout(function(_25,_26,_27){
var x=_27.x-_26.x,y=_27.y-_26.y;
_25._DOMElement.style["-webkit-transform"]="translate3d("+x+"px, "+y+"px, 0px)";
setTimeout(function(){
objj_msgSend(_1c,"_clearCSS");
_25._DOMElement.style["-webkit-transform"]="translate3d(0px, 0px, 0px)";
objj_msgSend(_25,"setFrameOrigin:",_27);
},(1000*_duration)+100);
},0,_1f,_22,end);
}
}else{
if(_21===LPFrameAnimationKey){
CPLog.error("LPViewAnimation does not currently support CSS frame animations. This should fall back to the regular javascript animation.");
}
}
}
}
}
if(_animationDidEndTimeout){
clearTimeout(_animationDidEndTimeout);
}
_animationDidEndTimeout=setTimeout(function(_28){
_isAnimating=NO;
objj_msgSend(_28,"_clearCSS");
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("animationDidEnd:"))){
objj_msgSend(_delegate,"animationDidEnd:",_28);
}
},(1000*_duration)+100,_1c);
}else{
var i=_viewAnimations.length;
while(i--){
var _1e=_viewAnimations[i],_1f=_1e["target"];
var x=_1e["animations"].length;
while(x--){
var _20=_1e["animations"][x],_21=_20[0],_22=_20[1],end=_20[2];
switch(_21){
case LPFadeAnimationKey:
objj_msgSend(_1f,"setAlphaValue:",_22);
break;
case LPOriginAnimationKey:
objj_msgSend(_1f,"setFrameOrigin:",_22);
break;
case LPFrameAnimationKey:
objj_msgSend(_1f,"setFrame:",_22);
break;
}
}
}
objj_msgSendSuper({receiver:_1c,super_class:objj_getClass("LPViewAnimation").super_class},"startAnimation");
}
}
}),new objj_method(sel_getUid("setCurrentProgress:"),function(_29,_2a,_2b){
with(_29){
_progress=_2b;
var _2c=_2d(_progress,_c1[0],_c1[1],_c2[0],_c2[1],_duration),i=_viewAnimations.length;
while(i--){
var _2e=_viewAnimations[i],_2f=_2e["target"],x=_2e["animations"].length;
while(x--){
var _30=_2e["animations"][x],_31=_30[0],_32=_30[1],end=_30[2];
switch(_31){
case LPFadeAnimationKey:
objj_msgSend(_2f,"setAlphaValue:",(_2c*(end-_32))+_32);
break;
case LPOriginAnimationKey:
objj_msgSend(_2f,"setFrameOrigin:",CGPointMake(_32.x+(_2c*(end.x-_32.x)),_32.y+(_2c*(end.y-_32.y))));
break;
case LPFrameAnimationKey:
objj_msgSend(_2f,"setFrame:",CGRectMake(_32.origin.x+(_2c*(end.origin.x-_32.origin.x)),_32.origin.y+(_2c*(end.origin.y-_32.origin.y)),_32.size.width+(_2c*(end.size.width-_32.size.width)),_32.size.height+(_2c*(end.size.height-_32.size.height))));
}
}
}
}
}),new objj_method(sel_getUid("isAnimating"),function(_33,_34){
with(_33){
if(LPCSSAnimationsAreAvailable&&_shouldUseCSSAnimations){
return _isAnimating;
}else{
return objj_msgSendSuper({receiver:_33,super_class:objj_getClass("LPViewAnimation").super_class},"isAnimating");
}
}
}),new objj_method(sel_getUid("stopAnimation"),function(_35,_36){
with(_35){
if(LPCSSAnimationsAreAvailable&&_shouldUseCSSAnimations){
}else{
objj_msgSendSuper({receiver:_35,super_class:objj_getClass("LPViewAnimation").super_class},"stopAnimation");
}
}
}),new objj_method(sel_getUid("_clearCSS"),function(_37,_38){
with(_37){
for(var i=0;i<_viewAnimations.length;i++){
_viewAnimations[i]["target"]._DOMElement.style["-webkit-transition-property"]="none";
}
}
}),new objj_method(sel_getUid("target:setCSSAnimationDuration:"),function(_39,_3a,_3b,_3c){
with(_39){
_3b._DOMElement.style["-webkit-transition-duration"]=_3c+"s";
}
}),new objj_method(sel_getUid("target:setCSSAnimationCurve:"),function(_3d,_3e,_3f,_40){
with(_3d){
var _41=nil;
switch(_40){
case CPAnimationLinear:
_41="linear";
break;
case CPAnimationEaseIn:
_41="ease-in";
break;
case CPAnimationEaseOut:
_41="ease-out";
break;
case CPAnimationEaseInOut:
_41="ease-in-out";
break;
}
_3f._DOMElement.style["-webkit-transition-timing-function"]=_41;
}
}),new objj_method(sel_getUid("target:addCSSAnimationPropertyForKey:append:"),function(_42,_43,_44,_45,_46){
with(_42){
var _47=nil;
switch(_45){
case LPFadeAnimationKey:
_47="-webkit-transform, opacity";
break;
case LPOriginAnimationKey:
_47="-webkit-transform";
break;
case LPFrameAnimationKey:
_47="top, left, width, height";
break;
default:
_47="none";
}
_5(_44._DOMElement,_47,"-webkit-transition-property",_46);
}
})]);
var _2d=_2d=function(t,p1x,p1y,p2x,p2y,_48){
var ax=0,bx=0,cx=0,ay=0,by=0,cy=0;
sampleCurveX=function(t){
return ((ax*t+bx)*t+cx)*t;
};
sampleCurveY=function(t){
return ((ay*t+by)*t+cy)*t;
};
sampleCurveDerivativeX=function(t){
return (3*ax*t+2*bx)*t+cx;
};
solveEpsilon=function(_49){
return 1/(200*_49);
};
solve=function(x,_4a){
return sampleCurveY(solveCurveX(x,_4a));
};
solveCurveX=function(x,_4b){
var t0,t1,t2,x2,d2,i;
fabs=function(n){
if(n>=0){
return n;
}else{
return 0-n;
}
};
for(t2=x,i=0;i<8;i++){
x2=sampleCurveX(t2)-x;
if(fabs(x2)<_4b){
return t2;
}
d2=sampleCurveDerivativeX(t2);
if(fabs(d2)<0.000001){
break;
}
t2=t2-x2/d2;
}
t0=0;
t1=1;
t2=x;
if(t2<t0){
return t0;
}
if(t2>t1){
return t1;
}
while(t0<t1){
x2=sampleCurveX(t2);
if(fabs(x2-x)<_4b){
return t2;
}
if(x>x2){
t0=t2;
}else{
t1=t2;
}
t2=(t1-t0)*0.5+t0;
}
return t2;
};
cx=3*p1x;
bx=3*(p2x-p1x)-cx;
ax=1-cx-bx;
cy=3*p1y;
by=3*(p2y-p1y)-cy;
ay=1-cy-by;
return solve(t,solveEpsilon(_48));
};
p;23;Models/LanguageConfig.jt;2174;@STATIC;1.0;I;21;Foundation/CPObject.jt;2129;
objj_executeFile("Foundation/CPObject.j",NO);
var _1=nil,_2=NO;
var _3=objj_allocateClassPair(CPObject,"LanguageConfig"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("languageCode")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("languageCode"),function(_5,_6){
with(_5){
return languageCode;
}
}),new objj_method(sel_getUid("setLanguageCode:"),function(_7,_8,_9){
with(_7){
languageCode=_9;
}
}),new objj_method(sel_getUid("initWithCode:"),function(_a,_b,_c){
with(_a){
if(_a=objj_msgSendSuper({receiver:_a,super_class:objj_getClass("LanguageConfig").super_class},"init")){
languageCode=_c;
}
return _a;
}
}),new objj_method(sel_getUid("compare:"),function(_d,_e,_f){
with(_d){
return objj_msgSend(objj_msgSend(_d,"name"),"caseInsensitiveCompare:",objj_msgSend(_f,"name"));
}
}),new objj_method(sel_getUid("isEqual:"),function(_10,_11,_12){
with(_10){
return objj_msgSend(_12,"isKindOfClass:",objj_msgSend(_10,"class"))&&objj_msgSend(objj_msgSend(_12,"languageCode"),"isEqualToString:",objj_msgSend(_10,"languageCode"));
}
}),new objj_method(sel_getUid("name"),function(_13,_14){
with(_13){
return objj_msgSend(_1,"objectForKey:",languageCode)||languageCode;
}
}),new objj_method(sel_getUid("description"),function(_15,_16){
with(_15){
return objj_msgSend(CPString,"stringWithFormat:","%@ (%@)",objj_msgSend(_15,"name"),objj_msgSend(_15,"languageCode"));
}
}),new objj_method(sel_getUid("asURLParam"),function(_17,_18){
with(_17){
return languageCode;
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("initialize"),function(_19,_1a){
with(_19){
if(_1==nil&&_2==NO){
_2=YES;
onsuccess=function(_1b){
_1=_1b.request.responsePropertyList();
_2=NO;
};
onfailure=function(){
CPLog.error("[LanguageConfig -initWithCode:] failed to load LanguageNames.plist");
_2=NO;
};
var _1c=new CFHTTPRequest(),url=objj_msgSend(CPURL,"URLWithString:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","LanguageNames.plist"));
_1c.overrideMimeType("text/xml");
_1c.onsuccess=onsuccess;
_1c.onfailure=onfailure;
_1c.open("GET",objj_msgSend(url,"absoluteString"),true);
_1c.send("");
}
}
})]);
p;16;Models/MMAgent.jt;1521;@STATIC;1.0;I;21;Foundation/CPObject.jt;1476;
objj_executeFile("Foundation/CPObject.j",NO);
var _1=objj_allocateClassPair(CPObject,"MMAgent"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_name"),new objj_ivar("_identifier"),new objj_ivar("_languages")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("name"),function(_3,_4){
with(_3){
return _name;
}
}),new objj_method(sel_getUid("setName:"),function(_5,_6,_7){
with(_5){
_name=_7;
}
}),new objj_method(sel_getUid("identifier"),function(_8,_9){
with(_8){
return _identifier;
}
}),new objj_method(sel_getUid("setIdentifier:"),function(_a,_b,_c){
with(_a){
_identifier=_c;
}
}),new objj_method(sel_getUid("languages"),function(_d,_e){
with(_d){
return _languages;
}
}),new objj_method(sel_getUid("setLanguages:"),function(_f,_10,_11){
with(_f){
_languages=_11;
}
}),new objj_method(sel_getUid("initWithIdentifier:"),function(_12,_13,_14){
with(_12){
if(_12=objj_msgSend(_12,"init")){
objj_msgSend(_12,"setIdentifier:",_14);
}
return _12;
}
}),new objj_method(sel_getUid("isEqual:"),function(_15,_16,_17){
with(_15){
return objj_msgSend(_17,"isKindOfClass:",objj_msgSend(_15,"class"))&&objj_msgSend(objj_msgSend(_17,"identifier"),"isEqualToString:",objj_msgSend(_15,"identifier"));
}
}),new objj_method(sel_getUid("description"),function(_18,_19){
with(_18){
return objj_msgSend(CPString,"stringWithFormat:","%@ (%@)",_name,_identifier);
}
}),new objj_method(sel_getUid("asURLParam"),function(_1a,_1b){
with(_1a){
return _identifier;
}
})]);
p;20;Models/MMDirectory.jt;2280;@STATIC;1.0;I;21;Foundation/CPObject.jt;2235;
objj_executeFile("Foundation/CPObject.j",NO);
var _1=objj_allocateClassPair(CPObject,"MMDirectory"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("title"),new objj_ivar("key"),new objj_ivar("path"),new objj_ivar("children")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("title"),function(_3,_4){
with(_3){
return title;
}
}),new objj_method(sel_getUid("setTitle:"),function(_5,_6,_7){
with(_5){
title=_7;
}
}),new objj_method(sel_getUid("key"),function(_8,_9){
with(_8){
return key;
}
}),new objj_method(sel_getUid("setKey:"),function(_a,_b,_c){
with(_a){
key=_c;
}
}),new objj_method(sel_getUid("path"),function(_d,_e){
with(_d){
return path;
}
}),new objj_method(sel_getUid("setPath:"),function(_f,_10,_11){
with(_f){
path=_11;
}
}),new objj_method(sel_getUid("children"),function(_12,_13){
with(_12){
return children;
}
}),new objj_method(sel_getUid("setChildren:"),function(_14,_15,_16){
with(_14){
children=_16;
}
}),new objj_method(sel_getUid("isRoot"),function(_17,_18){
with(_17){
return path==nil||objj_msgSend(path,"isEqualToString:","")||objj_msgSend(path,"isEqualToString:","/");
}
}),new objj_method(sel_getUid("setTitle:"),function(_19,_1a,_1b){
with(_19){
objj_msgSend(_19,"willChangeValueForKey:","title");
title=_1b;
objj_msgSend(_19,"didChangeValueForKey:","title");
}
}),new objj_method(sel_getUid("setPath:"),function(_1c,_1d,_1e){
with(_1c){
objj_msgSend(_1c,"willChangeValueForKey:","path");
path=_1e;
objj_msgSend(_1c,"didChangeValueForKey:","path");
}
}),new objj_method(sel_getUid("setKey:"),function(_1f,_20,_21){
with(_1f){
objj_msgSend(_1f,"willChangeValueForKey:","key");
key=_21;
objj_msgSend(_1f,"didChangeValueForKey:","key");
}
}),new objj_method(sel_getUid("description"),function(_22,_23){
with(_22){
return path||objj_msgSendSuper({receiver:_22,super_class:objj_getClass("MMDirectory").super_class},"description");
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("keyPathsForValuesAffectingTitle"),function(_24,_25){
with(_24){
return objj_msgSend(CPSet,"setWithObjects:","path","key","title");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingKey"),function(_26,_27){
with(_26){
return objj_msgSend(CPSet,"setWithObjects:","title","path");
}
})]);
p;27;Models/MMLibraryMediaItem.jt;12862;@STATIC;1.0;I;21;Foundation/CPObject.jI;18;Foundation/CPSet.ji;10;MMRecord.ji;18;MMLibrarySection.ji;8;PMSURL.jt;12743;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("Foundation/CPSet.j",NO);
objj_executeFile("MMRecord.j",YES);
objj_executeFile("MMLibrarySection.j",YES);
objj_executeFile("PMSURL.j",YES);
var _1;
var _2=10000;
MMLibraryMediaItemTypeShow="show";
MMLibraryMediaItemTypeMovie="movie";
MMLibraryMediaItemTypeArtist="artist";
MMLibraryMediaItemTypeAlbum="album";
MMLibraryMediaItemTypeSeason="season";
MMLibraryMediaItemTypeEpisode="episode";
MMLibraryMediaItemStateCreated=0;
MMLibraryMediaItemStateProgress=1;
MMLibraryMediaItemStateMatching=2;
MMLibraryMediaItemStateDownloadingMetadata=3;
MMLibraryMediaItemStateLoadingMetadata=4;
MMLibraryMediaItemStateIdle=5;
MMLibraryMediaItemStateDeleted=9;
var _3=objj_allocateClassPair(MMRecord,"MMLibraryMediaItem"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_key"),new objj_ivar("_title"),new objj_ivar("_titleSort"),new objj_ivar("_originalTitle"),new objj_ivar("_tagline"),new objj_ivar("_year"),new objj_ivar("_rating"),new objj_ivar("_index"),new objj_ivar("_summary"),new objj_ivar("_studio"),new objj_ivar("_contentRating"),new objj_ivar("_originallyAvailableAt"),new objj_ivar("_thumb"),new objj_ivar("_art"),new objj_ivar("_type"),new objj_ivar("_updatedAt"),new objj_ivar("_librarySection"),new objj_ivar("_thumbImage"),new objj_ivar("_artImage"),new objj_ivar("_state"),new objj_ivar("_leafCount"),new objj_ivar("_matching"),new objj_ivar("_idle"),new objj_ivar("_loading"),new objj_ivar("_parent")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("key"),function(_5,_6){
with(_5){
return _key;
}
}),new objj_method(sel_getUid("setKey:"),function(_7,_8,_9){
with(_7){
_key=_9;
}
}),new objj_method(sel_getUid("title"),function(_a,_b){
with(_a){
return _title;
}
}),new objj_method(sel_getUid("setTitle:"),function(_c,_d,_e){
with(_c){
_title=_e;
}
}),new objj_method(sel_getUid("titleSort"),function(_f,_10){
with(_f){
return _titleSort;
}
}),new objj_method(sel_getUid("setTitleSort:"),function(_11,_12,_13){
with(_11){
_titleSort=_13;
}
}),new objj_method(sel_getUid("originalTitle"),function(_14,_15){
with(_14){
return _originalTitle;
}
}),new objj_method(sel_getUid("setOriginalTitle:"),function(_16,_17,_18){
with(_16){
_originalTitle=_18;
}
}),new objj_method(sel_getUid("tagline"),function(_19,_1a){
with(_19){
return _tagline;
}
}),new objj_method(sel_getUid("setTagline:"),function(_1b,_1c,_1d){
with(_1b){
_tagline=_1d;
}
}),new objj_method(sel_getUid("year"),function(_1e,_1f){
with(_1e){
return _year;
}
}),new objj_method(sel_getUid("setYear:"),function(_20,_21,_22){
with(_20){
_year=_22;
}
}),new objj_method(sel_getUid("rating"),function(_23,_24){
with(_23){
return _rating;
}
}),new objj_method(sel_getUid("setRating:"),function(_25,_26,_27){
with(_25){
_rating=_27;
}
}),new objj_method(sel_getUid("index"),function(_28,_29){
with(_28){
return _index;
}
}),new objj_method(sel_getUid("setIndex:"),function(_2a,_2b,_2c){
with(_2a){
_index=_2c;
}
}),new objj_method(sel_getUid("summary"),function(_2d,_2e){
with(_2d){
return _summary;
}
}),new objj_method(sel_getUid("setSummary:"),function(_2f,_30,_31){
with(_2f){
_summary=_31;
}
}),new objj_method(sel_getUid("studio"),function(_32,_33){
with(_32){
return _studio;
}
}),new objj_method(sel_getUid("setStudio:"),function(_34,_35,_36){
with(_34){
_studio=_36;
}
}),new objj_method(sel_getUid("contentRating"),function(_37,_38){
with(_37){
return _contentRating;
}
}),new objj_method(sel_getUid("setContentRating:"),function(_39,_3a,_3b){
with(_39){
_contentRating=_3b;
}
}),new objj_method(sel_getUid("originallyAvailableAt"),function(_3c,_3d){
with(_3c){
return _originallyAvailableAt;
}
}),new objj_method(sel_getUid("setOriginallyAvailableAt:"),function(_3e,_3f,_40){
with(_3e){
_originallyAvailableAt=_40;
}
}),new objj_method(sel_getUid("thumb"),function(_41,_42){
with(_41){
return _thumb;
}
}),new objj_method(sel_getUid("setThumb:"),function(_43,_44,_45){
with(_43){
_thumb=_45;
}
}),new objj_method(sel_getUid("art"),function(_46,_47){
with(_46){
return _art;
}
}),new objj_method(sel_getUid("setArt:"),function(_48,_49,_4a){
with(_48){
_art=_4a;
}
}),new objj_method(sel_getUid("type"),function(_4b,_4c){
with(_4b){
return _type;
}
}),new objj_method(sel_getUid("setType:"),function(_4d,_4e,_4f){
with(_4d){
_type=_4f;
}
}),new objj_method(sel_getUid("updatedAt"),function(_50,_51){
with(_50){
return _updatedAt;
}
}),new objj_method(sel_getUid("setUpdatedAt:"),function(_52,_53,_54){
with(_52){
_updatedAt=_54;
}
}),new objj_method(sel_getUid("librarySection"),function(_55,_56){
with(_55){
return _librarySection;
}
}),new objj_method(sel_getUid("setLibrarySection:"),function(_57,_58,_59){
with(_57){
_librarySection=_59;
}
}),new objj_method(sel_getUid("state"),function(_5a,_5b){
with(_5a){
return _state;
}
}),new objj_method(sel_getUid("setState:"),function(_5c,_5d,_5e){
with(_5c){
_state=_5e;
}
}),new objj_method(sel_getUid("leafCount"),function(_5f,_60){
with(_5f){
return _leafCount;
}
}),new objj_method(sel_getUid("setLeafCount:"),function(_61,_62,_63){
with(_61){
_leafCount=_63;
}
}),new objj_method(sel_getUid("isMatching"),function(_64,_65){
with(_64){
return _matching;
}
}),new objj_method(sel_getUid("isIdle"),function(_66,_67){
with(_66){
return _idle;
}
}),new objj_method(sel_getUid("isLoading"),function(_68,_69){
with(_68){
return _loading;
}
}),new objj_method(sel_getUid("parent"),function(_6a,_6b){
with(_6a){
return _parent;
}
}),new objj_method(sel_getUid("setParent:"),function(_6c,_6d,_6e){
with(_6c){
_parent=_6e;
}
}),new objj_method(sel_getUid("setKey:"),function(_6f,_70,_71){
with(_6f){
_key=_71;
objj_msgSend(_6f,"setId:",objj_msgSend(objj_msgSend(_6f,"class"),"idFromKey:",_71));
}
}),new objj_method(sel_getUid("displayTitle"),function(_72,_73){
with(_72){
var _74=objj_msgSend(CPString,"stringWithFormat:"," (%d)",_year);
if(objj_msgSend(_title,"hasSuffix:",_74)){
return objj_msgSend(_title,"substringToIndex:",objj_msgSend(_title,"length")-objj_msgSend(_74,"length"));
}else{
return _title;
}
}
}),new objj_method(sel_getUid("titleSort"),function(_75,_76){
with(_75){
return _titleSort||_title;
}
}),new objj_method(sel_getUid("root"),function(_77,_78){
with(_77){
var _79=_77;
while(objj_msgSend(_79,"parent")){
_79=objj_msgSend(_79,"parent");
}
return _79;
}
}),new objj_method(sel_getUid("setUpdatedAt:"),function(_7a,_7b,_7c){
with(_7a){
var _7d=_7c;
if(objj_msgSend(_7d,"isKindOfClass:",CPString)){
_7d=objj_msgSend(objj_msgSend(CPDate,"alloc"),"initWithTimeIntervalSince1970:",_7d);
}
if(objj_msgSend(_updatedAt,"isEqual:",_7d)){
return;
}
if(objj_msgSend(_7d,"isKindOfClass:",CPDate)){
_updatedAt=_7d;
}else{
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(CPString,"stringWithFormat:","updatedAt must be of type %@ (got %@)",CPDate,objj_msgSend(_7c,"class")));
}
}
}),new objj_method(sel_getUid("setYear:"),function(_7e,_7f,_80){
with(_7e){
var _81=_80;
if(objj_msgSend(_81,"isKindOfClass:",CPString)){
_81=Number(_81);
}
_year=_81;
}
}),new objj_method(sel_getUid("setLeafCount:"),function(_82,_83,_84){
with(_82){
var _85=_84;
if(objj_msgSend(_85,"isKindOfClass:",CPString)){
_85=Number(_85);
}
_leafCount=_85;
}
}),new objj_method(sel_getUid("setRating:"),function(_86,_87,_88){
with(_86){
var _89=_88;
if(objj_msgSend(_89,"isKindOfClass:",CPString)){
_89=Number(_89);
}
_rating=_89;
}
}),new objj_method(sel_getUid("setIndex:"),function(_8a,_8b,_8c){
with(_8a){
var _8d=_8c;
if(objj_msgSend(_8d,"isKindOfClass:",CPString)){
_8d=Number(_8d);
}
_index=_8d;
}
}),new objj_method(sel_getUid("setOriginallyAvailableAt:"),function(_8e,_8f,_90){
with(_8e){
var _91=_90;
if(objj_msgSend(_91,"isKindOfClass:",CPString)){
var _92;
if(/^\d+$/.test(_91)){
_91=objj_msgSend(objj_msgSend(CPDate,"alloc"),"initWithTimeIntervalSince1970:",Number(_91));
}else{
if(_92=_91.match(/^(\d{4})-(\d\d?)-(\d\d?)$/)){
_91=new Date(_92[1],_92[2],_92[3]);
}else{
_91=Date.parse(_91);
}
}
}
if(objj_msgSend(_originallyAvailableAt,"isEqual:",_91)){
return;
}
if(!_91||objj_msgSend(_91,"isKindOfClass:",CPDate)){
_originallyAvailableAt=_91;
}else{
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(CPString,"stringWithFormat:","originallyAvailableAt must be of type %@ (got %@)",CPDate,objj_msgSend(_90,"class")));
}
}
}),new objj_method(sel_getUid("setState:"),function(_93,_94,_95){
with(_93){
if(objj_msgSend(_95,"isKindOfClass:",CPString)){
_95=Number(_95);
}
_state=_95;
}
}),new objj_method(sel_getUid("setThumb:"),function(_96,_97,_98){
with(_96){
if(_thumb===_98){
return;
}
_thumb=_98;
_thumbImage=nil;
}
}),new objj_method(sel_getUid("thumbImage"),function(_99,_9a){
with(_99){
if(!_thumb){
return nil;
}
if(!_thumbImage){
_thumbImage=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initByReferencingFile:size:",objj_msgSend(_99,"thumbURL"),CGSizeMake(-1,-1));
}
return _thumbImage;
}
}),new objj_method(sel_getUid("thumbURL"),function(_9b,_9c){
with(_9b){
if(!_thumb){
return nil;
}
return objj_msgSend(PMSURL,"URLWithPath:",_thumb);
}
}),new objj_method(sel_getUid("setArt:"),function(_9d,_9e,_9f){
with(_9d){
if(_art===_9f){
return;
}
_art=_9f;
_artImage=nil;
}
}),new objj_method(sel_getUid("artImage"),function(_a0,_a1){
with(_a0){
if(!_art){
return nil;
}
if(!_artImage){
_artImage=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initByReferencingFile:size:",objj_msgSend(_a0,"artURL"),CGSizeMake(-1,-1));
}
return _artImage;
}
}),new objj_method(sel_getUid("artURL"),function(_a2,_a3){
with(_a2){
if(!_art){
return nil;
}
return objj_msgSend(PMSURL,"URLWithPath:",_art);
}
}),new objj_method(sel_getUid("isMatching"),function(_a4,_a5){
with(_a4){
return _state===MMLibraryMediaItemStateMatching;
}
}),new objj_method(sel_getUid("isIdle"),function(_a6,_a7){
with(_a6){
return _state===MMLibraryMediaItemStateIdle;
}
}),new objj_method(sel_getUid("isLoading"),function(_a8,_a9){
with(_a8){
return _state===MMLibraryMediaItemStateDownloadingMetadata||_state===MMLibraryMediaItemStateLoadingMetadata;
}
}),new objj_method(sel_getUid("stateString"),function(_aa,_ab){
with(_aa){
switch(_state){
case MMLibraryMediaItemStateCreated:
return "created";
case MMLibraryMediaItemStateProgress:
return "progress";
case MMLibraryMediaItemStateMatching:
return "matching";
case MMLibraryMediaItemStateDownloadingMetadata:
return "downloading metadata";
case MMLibraryMediaItemStateLoadingMetadata:
return "loading metadata";
case MMLibraryMediaItemStateIdle:
return "idle";
case MMLibraryMediaItemStateDeleted:
return "deleted";
}
}
}),new objj_method(sel_getUid("isEqual:"),function(_ac,_ad,_ae){
with(_ac){
return (_ac===_ae)||(objj_msgSend(_ae,"isKindOfClass:",objj_msgSend(_ac,"class"))&&objj_msgSend(objj_msgSend(_ac,"id"),"isEqual:",objj_msgSend(_ae,"id")));
}
}),new objj_method(sel_getUid("description"),function(_af,_b0){
with(_af){
return objj_msgSend(CPString,"stringWithFormat:","{%@ (%d) %@}",objj_msgSend(_af,"title"),objj_msgSend(_af,"year"),"0x"+objj_msgSend(CPString,"stringWithHash:",objj_msgSend(_af,"UID")));
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("observedAttributes"),function(_b1,_b2){
with(_b1){
return objj_msgSend(CPSet,"setWithObjects:","title","titleSort","originalTitle","tagline","year","rating","summary","studio","contentRating","originallyAvailableAt");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingMatching"),function(_b3,_b4){
with(_b3){
return objj_msgSend(CPSet,"setWithObject:","state");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingLoading"),function(_b5,_b6){
with(_b5){
return objj_msgSend(CPSet,"setWithObject:","state");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingIdle"),function(_b7,_b8){
with(_b7){
return objj_msgSend(CPSet,"setWithObject:","state");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingThumbImage"),function(_b9,_ba){
with(_b9){
return objj_msgSend(CPSet,"setWithObject:","thumb");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingArtImage"),function(_bb,_bc){
with(_bb){
return objj_msgSend(CPSet,"setWithObject:","art");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingDisplayTitle"),function(_bd,_be){
with(_bd){
return objj_msgSend(CPSet,"setWithObject:","title");
}
}),new objj_method(sel_getUid("blankThumbImage"),function(_bf,_c0){
with(_bf){
if(!_1){
_1=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","BlankPoster.png"));
}
return objj_msgSend(_1,"copy");
}
}),new objj_method(sel_getUid("idFromKey:"),function(_c1,_c2,_c3){
with(_c1){
return _c3&&_c3.replace(/[^\d]/g,"");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingRoot"),function(_c4,_c5){
with(_c4){
return objj_msgSend(CPSet,"setWithObject:","parent");
}
})]);
p;25;Models/MMLibrarySection.jt;5485;@STATIC;1.0;i;10;MMRecord.ji;8;PMSURL.jt;5439;
objj_executeFile("MMRecord.j",YES);
objj_executeFile("PMSURL.j",YES);
MMLibrarySectionTypeMovies="movie";
MMLibrarySectionTypeTV="show";
MMLibrarySectionTypeArtist="artist";
MMLibrarySectionDefaultMoviesAgent="com.plexapp.agents.imdb";
MMLibrarySectionDefaultTVAgent="com.plexapp.agents.thetvdb";
MMLibrarySectionDefaultHomeMoviesAgent="com.plexapp.agents.none";
MMLibrarySectionDefaultArtistAgent="com.plexapp.agents.lastfm";
var _1=objj_allocateClassPair(MMRecord,"MMLibrarySection"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_title"),new objj_ivar("_type"),new objj_ivar("_agent"),new objj_ivar("_scanner"),new objj_ivar("_language"),new objj_ivar("_locations"),new objj_ivar("_updatedAt"),new objj_ivar("_refreshing")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("title"),function(_3,_4){
with(_3){
return _title;
}
}),new objj_method(sel_getUid("setTitle:"),function(_5,_6,_7){
with(_5){
_title=_7;
}
}),new objj_method(sel_getUid("type"),function(_8,_9){
with(_8){
return _type;
}
}),new objj_method(sel_getUid("setType:"),function(_a,_b,_c){
with(_a){
_type=_c;
}
}),new objj_method(sel_getUid("agent"),function(_d,_e){
with(_d){
return _agent;
}
}),new objj_method(sel_getUid("setAgent:"),function(_f,_10,_11){
with(_f){
_agent=_11;
}
}),new objj_method(sel_getUid("scanner"),function(_12,_13){
with(_12){
return _scanner;
}
}),new objj_method(sel_getUid("setScanner:"),function(_14,_15,_16){
with(_14){
_scanner=_16;
}
}),new objj_method(sel_getUid("language"),function(_17,_18){
with(_17){
return _language;
}
}),new objj_method(sel_getUid("setLanguage:"),function(_19,_1a,_1b){
with(_19){
_language=_1b;
}
}),new objj_method(sel_getUid("locations"),function(_1c,_1d){
with(_1c){
return _locations;
}
}),new objj_method(sel_getUid("setLocations:"),function(_1e,_1f,_20){
with(_1e){
_locations=_20;
}
}),new objj_method(sel_getUid("updatedAt"),function(_21,_22){
with(_21){
return _updatedAt;
}
}),new objj_method(sel_getUid("setUpdatedAt:"),function(_23,_24,_25){
with(_23){
_updatedAt=_25;
}
}),new objj_method(sel_getUid("isRefreshing"),function(_26,_27){
with(_26){
return _refreshing;
}
}),new objj_method(sel_getUid("setRefreshing:"),function(_28,_29,_2a){
with(_28){
_refreshing=_2a;
}
}),new objj_method(sel_getUid("key"),function(_2b,_2c){
with(_2b){
return objj_msgSend(_2b,"id");
}
}),new objj_method(sel_getUid("setKey:"),function(_2d,_2e,_2f){
with(_2d){
objj_msgSend(_2d,"setId:",_2f);
}
}),new objj_method(sel_getUid("setAgent:"),function(_30,_31,_32){
with(_30){
if(objj_msgSend(_32,"isKindOfClass:",CPString)){
_agent=objj_msgSend(objj_msgSend(MMAgent,"alloc"),"initWithIdentifier:",_32);
}else{
if(objj_msgSend(_32,"isKindOfClass:",MMAgent)){
_agent=_32;
}else{
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(CPString,"stringWithFormat:","agent must be of type %@",MMAgent));
}
}
}
}),new objj_method(sel_getUid("setLanguage:"),function(_33,_34,_35){
with(_33){
if(objj_msgSend(_35,"isKindOfClass:",CPString)){
_language=objj_msgSend(objj_msgSend(LanguageConfig,"alloc"),"initWithCode:",_35);
}else{
if(objj_msgSend(_35,"isKindOfClass:",LanguageConfig)){
_language=_35;
}else{
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(CPString,"stringWithFormat:","language must be of type %@",LanguageConfig));
}
}
}
}),new objj_method(sel_getUid("setUpdatedAt:"),function(_36,_37,_38){
with(_36){
var _39=_38;
if(objj_msgSend(_39,"isKindOfClass:",CPString)){
_39=objj_msgSend(objj_msgSend(CPDate,"alloc"),"initWithTimeIntervalSince1970:",_39);
}
if(objj_msgSend(_39,"isKindOfClass:",CPDate)){
_updatedAt=_39;
}else{
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(CPString,"stringWithFormat:","updatedAt must be of type %@ (got %@)",CPDate,objj_msgSend(_38,"class")));
}
}
}),new objj_method(sel_getUid("setRefreshing:"),function(_3a,_3b,_3c){
with(_3a){
if(typeof _3c=="string"){
_3c=(_3c=="1");
}
_refreshing=!!_3c;
}
}),new objj_method(sel_getUid("allMediaItemsURL"),function(_3d,_3e){
with(_3d){
return objj_msgSend(PMSURL,"URLWithPath:",objj_msgSend(CPString,"stringWithFormat:","/library/sections/%@/all",objj_msgSend(_3d,"key")));
}
}),new objj_method(sel_getUid("URL"),function(_3f,_40){
with(_3f){
return objj_msgSend(PMSURL,"URLWithPath:",objj_msgSend(CPString,"stringWithFormat:","/library/sections/%@",objj_msgSend(_3f,"key")));
}
}),new objj_method(sel_getUid("isEqual:"),function(_41,_42,_43){
with(_41){
return objj_msgSend(_43,"isKindOfClass:",objj_msgSend(_41,"class"))&&objj_msgSend(objj_msgSend(_41,"key"),"isEqualToString:",objj_msgSend(_43,"key"));
}
}),new objj_method(sel_getUid("description"),function(_44,_45){
with(_44){
return objj_msgSend(CPString,"stringWithFormat:","{%@ title=%@, key=%@, type=%@}",objj_msgSend(_44,"class"),objj_msgSend(_44,"title"),objj_msgSend(_44,"key"),objj_msgSend(_44,"type"));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("keyPathsForValuesAffectingKey"),function(_46,_47){
with(_46){
return objj_msgSend(CPSet,"setWithObject:","id");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingId"),function(_48,_49){
with(_48){
return objj_msgSend(CPSet,"setWithObject:","key");
}
}),new objj_method(sel_getUid("keyFromURL:"),function(_4a,_4b,URL){
with(_4a){
if(!URL){
return nil;
}
var _4c=objj_msgSend(URL,"absoluteString").match(/\/library\/sections\/([^\/]+)/i);
if(!_4c){
return nil;
}
return _4c[1];
}
})]);
p;24;Models/MMMetadataImage.jt;2142;@STATIC;1.0;I;21;Foundation/CPObject.jt;2097;
objj_executeFile("Foundation/CPObject.j",NO);
var _1=objj_allocateClassPair(CPObject,"MMMetadataImage"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_key"),new objj_ivar("_image"),new objj_ivar("_ratingKey"),new objj_ivar("_thumb"),new objj_ivar("_thumbImage")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("key"),function(_3,_4){
with(_3){
return _key;
}
}),new objj_method(sel_getUid("setKey:"),function(_5,_6,_7){
with(_5){
_key=_7;
}
}),new objj_method(sel_getUid("image"),function(_8,_9){
with(_8){
return _image;
}
}),new objj_method(sel_getUid("setImage:"),function(_a,_b,_c){
with(_a){
_image=_c;
}
}),new objj_method(sel_getUid("ratingKey"),function(_d,_e){
with(_d){
return _ratingKey;
}
}),new objj_method(sel_getUid("setRatingKey:"),function(_f,_10,_11){
with(_f){
_ratingKey=_11;
}
}),new objj_method(sel_getUid("thumb"),function(_12,_13){
with(_12){
return _thumb;
}
}),new objj_method(sel_getUid("setThumb:"),function(_14,_15,_16){
with(_14){
_thumb=_16;
}
}),new objj_method(sel_getUid("thumbImage"),function(_17,_18){
with(_17){
return _thumbImage;
}
}),new objj_method(sel_getUid("setThumbImage:"),function(_19,_1a,_1b){
with(_19){
_thumbImage=_1b;
}
}),new objj_method(sel_getUid("image"),function(_1c,_1d){
with(_1c){
return objj_msgSend(objj_msgSend(CPImage,"alloc"),"initByReferencingFile:size:",_key,CGSizeMake(-1,-1));
}
}),new objj_method(sel_getUid("thumbImage"),function(_1e,_1f){
with(_1e){
return objj_msgSend(objj_msgSend(CPImage,"alloc"),"initByReferencingFile:size:",_thumb,CGSizeMake(-1,-1));
}
}),new objj_method(sel_getUid("description"),function(_20,_21){
with(_20){
return objj_msgSend(CPString,"stringWithFormat:","{%@ ratingKey=%@, thumb=%@}",objj_msgSend(_20,"class"),_ratingKey,_thumb);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("keyPathsForValuesAffectingThumbImage"),function(_22,_23){
with(_22){
return objj_msgSend(CPSet,"setWithObject:","thumb");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingImage"),function(_24,_25){
with(_24){
return objj_msgSend(CPSet,"setWithObject:","key");
}
})]);
p;23;Models/MMMetadataItem.jt;7917;@STATIC;1.0;i;20;MMLibraryMediaItem.jt;7873;
objj_executeFile("MMLibraryMediaItem.j",YES);
var _1=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:","writer","writers","director","directors","genre","genres","collection","collections");
var _2=objj_allocateClassPair(MMLibraryMediaItem,"MMMetadataItem"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_writers"),new objj_ivar("_directors"),new objj_ivar("_genres"),new objj_ivar("_collections"),new objj_ivar("_titleLocked"),new objj_ivar("_titleSortLocked"),new objj_ivar("_originalTitleLocked"),new objj_ivar("_taglineLocked"),new objj_ivar("_yearLocked"),new objj_ivar("_ratingLocked"),new objj_ivar("_summaryLocked"),new objj_ivar("_studioLocked"),new objj_ivar("_contentRatingLocked"),new objj_ivar("_originallyAvailableAtLocked"),new objj_ivar("_writersLocked"),new objj_ivar("_directorsLocked"),new objj_ivar("_genresLocked"),new objj_ivar("_collectionLocked"),new objj_ivar("_thumbLocked"),new objj_ivar("_artLocked")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("writers"),function(_4,_5){
with(_4){
return _writers;
}
}),new objj_method(sel_getUid("setWriters:"),function(_6,_7,_8){
with(_6){
_writers=_8;
}
}),new objj_method(sel_getUid("directors"),function(_9,_a){
with(_9){
return _directors;
}
}),new objj_method(sel_getUid("setDirectors:"),function(_b,_c,_d){
with(_b){
_directors=_d;
}
}),new objj_method(sel_getUid("genres"),function(_e,_f){
with(_e){
return _genres;
}
}),new objj_method(sel_getUid("setGenres:"),function(_10,_11,_12){
with(_10){
_genres=_12;
}
}),new objj_method(sel_getUid("collections"),function(_13,_14){
with(_13){
return _collections;
}
}),new objj_method(sel_getUid("setCollections:"),function(_15,_16,_17){
with(_15){
_collections=_17;
}
}),new objj_method(sel_getUid("isTitleLocked"),function(_18,_19){
with(_18){
return _titleLocked;
}
}),new objj_method(sel_getUid("setTitleLocked:"),function(_1a,_1b,_1c){
with(_1a){
_titleLocked=_1c;
}
}),new objj_method(sel_getUid("isTitleSortLocked"),function(_1d,_1e){
with(_1d){
return _titleSortLocked;
}
}),new objj_method(sel_getUid("setTitleSortLocked:"),function(_1f,_20,_21){
with(_1f){
_titleSortLocked=_21;
}
}),new objj_method(sel_getUid("isOriginalTitleLocked"),function(_22,_23){
with(_22){
return _originalTitleLocked;
}
}),new objj_method(sel_getUid("setOriginalTitleLocked:"),function(_24,_25,_26){
with(_24){
_originalTitleLocked=_26;
}
}),new objj_method(sel_getUid("isTaglineLocked"),function(_27,_28){
with(_27){
return _taglineLocked;
}
}),new objj_method(sel_getUid("setTaglineLocked:"),function(_29,_2a,_2b){
with(_29){
_taglineLocked=_2b;
}
}),new objj_method(sel_getUid("isYearLocked"),function(_2c,_2d){
with(_2c){
return _yearLocked;
}
}),new objj_method(sel_getUid("setYearLocked:"),function(_2e,_2f,_30){
with(_2e){
_yearLocked=_30;
}
}),new objj_method(sel_getUid("isRatingLocked"),function(_31,_32){
with(_31){
return _ratingLocked;
}
}),new objj_method(sel_getUid("setRatingLocked:"),function(_33,_34,_35){
with(_33){
_ratingLocked=_35;
}
}),new objj_method(sel_getUid("isSummaryLocked"),function(_36,_37){
with(_36){
return _summaryLocked;
}
}),new objj_method(sel_getUid("setSummaryLocked:"),function(_38,_39,_3a){
with(_38){
_summaryLocked=_3a;
}
}),new objj_method(sel_getUid("isStudioLocked"),function(_3b,_3c){
with(_3b){
return _studioLocked;
}
}),new objj_method(sel_getUid("setStudioLocked:"),function(_3d,_3e,_3f){
with(_3d){
_studioLocked=_3f;
}
}),new objj_method(sel_getUid("isContentRatingLocked"),function(_40,_41){
with(_40){
return _contentRatingLocked;
}
}),new objj_method(sel_getUid("setContentRatingLocked:"),function(_42,_43,_44){
with(_42){
_contentRatingLocked=_44;
}
}),new objj_method(sel_getUid("isOriginallyAvailableAtLocked"),function(_45,_46){
with(_45){
return _originallyAvailableAtLocked;
}
}),new objj_method(sel_getUid("setOriginallyAvailableAtLocked:"),function(_47,_48,_49){
with(_47){
_originallyAvailableAtLocked=_49;
}
}),new objj_method(sel_getUid("isWritersLocked"),function(_4a,_4b){
with(_4a){
return _writersLocked;
}
}),new objj_method(sel_getUid("setWritersLocked:"),function(_4c,_4d,_4e){
with(_4c){
_writersLocked=_4e;
}
}),new objj_method(sel_getUid("isDirectorsLocked"),function(_4f,_50){
with(_4f){
return _directorsLocked;
}
}),new objj_method(sel_getUid("setDirectorsLocked:"),function(_51,_52,_53){
with(_51){
_directorsLocked=_53;
}
}),new objj_method(sel_getUid("isGenresLocked"),function(_54,_55){
with(_54){
return _genresLocked;
}
}),new objj_method(sel_getUid("setGenresLocked:"),function(_56,_57,_58){
with(_56){
_genresLocked=_58;
}
}),new objj_method(sel_getUid("isCollectionLocked"),function(_59,_5a){
with(_59){
return _collectionLocked;
}
}),new objj_method(sel_getUid("setCollectionLocked:"),function(_5b,_5c,_5d){
with(_5b){
_collectionLocked=_5d;
}
}),new objj_method(sel_getUid("isThumbLocked"),function(_5e,_5f){
with(_5e){
return _thumbLocked;
}
}),new objj_method(sel_getUid("setThumbLocked:"),function(_60,_61,_62){
with(_60){
_thumbLocked=_62;
}
}),new objj_method(sel_getUid("isArtLocked"),function(_63,_64){
with(_63){
return _artLocked;
}
}),new objj_method(sel_getUid("setArtLocked:"),function(_65,_66,_67){
with(_65){
_artLocked=_67;
}
}),new objj_method(sel_getUid("changedAttributeDictionary"),function(_68,_69){
with(_68){
var _6a=objj_msgSend(CPDictionary,"dictionary"),_6b=objj_msgSendSuper({receiver:_68,super_class:objj_getClass("MMMetadataItem").super_class},"changedAttributeDictionary"),_6c=objj_msgSend(_6b,"keyEnumerator"),key;
while(key=objj_msgSend(_6c,"nextObject")){
var _6d=objj_msgSend(_6b,"objectForKey:",key),_6e=key,_6f=objj_msgSend(key,"rangeOfString:","Locked"),_70=_6d;
if(CPMaxRange(_6f)==objj_msgSend(key,"length")){
var _71=objj_msgSend(key,"substringToIndex:",_6f.location);
if(objj_msgSend(_1,"containsKey:",_71)){
_71=objj_msgSend(_1,"objectForKey:",_71);
}
_6e=_71+".locked";
_70=_6d?"1":"0";
objj_msgSend(_6a,"setObject:forKey:",_70,_6e);
}else{
if(objj_msgSend(_1,"containsKey:",key)){
var _72=objj_msgSend(_6b,"objectForKey:",key),_73=objj_msgSend(_1,"objectForKey:",key);
for(var i=0,_74=objj_msgSend(_72,"count");i<_74;i++){
_6e=objj_msgSend(CPString,"stringWithFormat:","%@[%d].tag.tag",_73,i);
_70=_72[i];
objj_msgSend(_6a,"setObject:forKey:",_70,_6e);
}
}else{
objj_msgSend(_6a,"setObject:forKey:",_70,_6e);
}
}
}
return _6a;
}
}),new objj_method(sel_getUid("acceptChangedAttributes"),function(_75,_76){
with(_75){
var _77=objj_msgSend(objj_msgSend(_75,"dataStore"),"recordWithClass:id:",MMLibraryMediaItem,objj_msgSend(_75,"id")),_78=objj_msgSend(_75,"changedAttributeDictionary"),_79=objj_msgSend(_78,"keyEnumerator"),key=nil;
if(_77){
while(key=objj_msgSend(_79,"nextObject")){
try{
objj_msgSend(_77,"setValue:forKey:",objj_msgSend(_78,"objectForKey:",key),key);
}
catch(e){
}
}
}
objj_msgSendSuper({receiver:_75,super_class:objj_getClass("MMMetadataItem").super_class},"acceptChangedAttributes");
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("observedAttributes"),function(_7a,_7b){
with(_7a){
return objj_msgSend(CPSet,"setWithObjects:","writers","directors","genres","collections","titleLocked","titleSortLocked","originalTitleLocked","taglineLocked","yearLocked","ratingLocked","summaryLocked","studioLocked","contentRatingLocked","originallyAvailableAtLocked","writersLocked","directorsLocked","genresLocked","collectionLocked");
}
}),new objj_method(sel_getUid("metadataItemForMediaItem:"),function(_7c,_7d,_7e){
with(_7c){
var _7f=objj_msgSend(objj_msgSend(_7e,"dataStore"),"recordWithClass:id:",_7c,objj_msgSend(_7e,"id")),_80=objj_msgSend(objj_msgSend(objj_msgSend(_7e,"class"),"allObservedAttributes"),"objectEnumerator"),key;
while(key=objj_msgSend(_80,"nextObject")){
objj_msgSend(_7f,"setValue:forKey:",objj_msgSend(_7e,"valueForKey:",key),key);
}
objj_msgSend(_7f,"setId:",objj_msgSend(_7e,"id"));
objj_msgSend(_7f,"acceptChangedAttributes");
return _7f;
}
})]);
p;15;Models/MMPref.jt;1811;@STATIC;1.0;I;21;Foundation/CPObject.jt;1766;
objj_executeFile("Foundation/CPObject.j",NO);
var _1=objj_allocateClassPair(CPObject,"MMPref"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_id"),new objj_ivar("_value"),new objj_ivar("_type"),new objj_ivar("_defaultValue"),new objj_ivar("_summary"),new objj_ivar("_cachedValue")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("id"),function(_3,_4){
with(_3){
return _id;
}
}),new objj_method(sel_getUid("setId:"),function(_5,_6,_7){
with(_5){
_id=_7;
}
}),new objj_method(sel_getUid("value"),function(_8,_9){
with(_8){
return _value;
}
}),new objj_method(sel_getUid("setValue:"),function(_a,_b,_c){
with(_a){
_value=_c;
}
}),new objj_method(sel_getUid("type"),function(_d,_e){
with(_d){
return _type;
}
}),new objj_method(sel_getUid("setType:"),function(_f,_10,_11){
with(_f){
_type=_11;
}
}),new objj_method(sel_getUid("defaultValue"),function(_12,_13){
with(_12){
return _defaultValue;
}
}),new objj_method(sel_getUid("setDefaultValue:"),function(_14,_15,_16){
with(_14){
_defaultValue=_16;
}
}),new objj_method(sel_getUid("type"),function(_17,_18){
with(_17){
return _summary;
}
}),new objj_method(sel_getUid("setType:"),function(_19,_1a,_1b){
with(_19){
_summary=_1b;
}
}),new objj_method(sel_getUid("value"),function(_1c,_1d){
with(_1c){
if(typeof _value!="string"){
return _value;
}
switch(_type){
case "text":
_cachedValue=_value;
break;
case "int":
case "double":
_cachedValue=Number(_value);
break;
case "bool":
_cachedValue=(_value=="true");
break;
default:
return _value;
}
return _cachedValue;
}
}),new objj_method(sel_getUid("setValue:"),function(_1e,_1f,_20){
with(_1e){
_value=_20;
_cachedValue=null;
}
}),new objj_method(sel_getUid("setType:"),function(_21,_22,_23){
with(_21){
_type=_23;
_cachedValue=null;
}
})]);
p;16;Models/MMPrefs.jt;2941;@STATIC;1.0;I;21;Foundation/CPObject.jI;18;Foundation/CPSet.ji;8;MMPref.ji;34;../DataSources/MMPrefsDataSource.jt;2822;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("Foundation/CPSet.j",NO);
objj_executeFile("MMPref.j",YES);
objj_executeFile("../DataSources/MMPrefsDataSource.j",YES);
var _1=objj_allocateClassPair(CPObject,"MMPrefs"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_prefs"),new objj_ivar("_dataSource"),new objj_ivar("_dirtyPrefs")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_3,_4){
with(_3){
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("MMPrefs").super_class},"init")){
_prefs=objj_msgSend(CPDictionary,"dictionary");
_dataSource=objj_msgSend(objj_msgSend(MMPrefsDataSource,"alloc"),"initWithDelegate:",_3);
_dirtyPrefs=objj_msgSend(CPSet,"set");
}
return _3;
}
}),new objj_method(sel_getUid("setPrefs:"),function(_5,_6,_7){
with(_5){
var _8=objj_msgSend(CPDictionary,"dictionary");
for(var i=0,_9=objj_msgSend(_7,"count");i<_9;i++){
var _a=_7[i],id=objj_msgSend(_a,"id");
objj_msgSend(_5,"willChangeValueForKey:",id);
objj_msgSend(_prefs,"setObject:forKey:",_a,id);
objj_msgSend(_8,"setObject:forKey:",_a,id);
objj_msgSend(_5,"didChangeValueForKey:",id);
}
_prefs=_8;
}
}),new objj_method(sel_getUid("synchronize"),function(_b,_c){
with(_b){
CPLog.trace("[%@ synchronize] START",objj_msgSend(_b,"class"),_dataSource);
if(objj_msgSend(_dirtyPrefs,"count")){
objj_msgSend(_dataSource,"updateRecord:",_dirtyPrefs);
objj_msgSend(_dirtyPrefs,"removeAllObjects");
}else{
objj_msgSend(_dataSource,"refreshRecords");
}
CPLog.trace("[%@ synchronize] END",objj_msgSend(_b,"class"));
}
}),new objj_method(sel_getUid("prefForKey:"),function(_d,_e,_f){
with(_d){
return objj_msgSend(_prefs,"objectForKey:",_f);
}
}),new objj_method(sel_getUid("valueForKey:"),function(_10,_11,_12){
with(_10){
var _13=objj_msgSend(_10,"prefForKey:",_12);
if(_13){
return objj_msgSend(_13,"value");
}else{
return objj_msgSend(_10,"valueForUndefinedKey:",_12);
}
}
}),new objj_method(sel_getUid("setValue:forKey:"),function(_14,_15,_16,_17){
with(_14){
var _18=objj_msgSend(_14,"prefForKey:",_17);
if(_18){
objj_msgSend(_14,"willChangeValueForKey:",_17);
objj_msgSend(_18,"setValue:",_16);
objj_msgSend(_dirtyPrefs,"addObject:",_18);
objj_msgSend(_14,"didChangeValueForKey:",_17);
}else{
objj_msgSend(_14,"setValue:forUndefinedKey:",_16,_17);
}
objj_msgSend(_14,"synchronize");
}
}),new objj_method(sel_getUid("dataSource:didReceiveRecords:contextInfo:"),function(_19,_1a,_1b,_1c,_1d){
with(_19){
objj_msgSend(_19,"setPrefs:",_1c);
}
}),new objj_method(sel_getUid("dataSource:didUpdateRecord:contextInfo:"),function(_1e,_1f,_20,_21,_22){
with(_1e){
objj_msgSend(_20,"refreshRecords");
}
}),new objj_method(sel_getUid("dataSource:didFailToUpdateRecord:withError:contextInfo:"),function(_23,_24,_25,_26,_27,_28){
with(_23){
objj_msgSend(_25,"refreshRecords");
}
})]);
p;17;Models/MMRecord.jt;3422;@STATIC;1.0;I;21;Foundation/CPObject.jt;3377;
objj_executeFile("Foundation/CPObject.j",NO);
var _1=objj_msgSend(CPDictionary,"dictionary");
var _2=objj_allocateClassPair(CPObject,"MMRecord"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_id"),new objj_ivar("_dataStore"),new objj_ivar("_changedAttributes")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("id"),function(_4,_5){
with(_4){
return _id;
}
}),new objj_method(sel_getUid("setId:"),function(_6,_7,_8){
with(_6){
_id=_8;
}
}),new objj_method(sel_getUid("dataStore"),function(_9,_a){
with(_9){
return _dataStore;
}
}),new objj_method(sel_getUid("setDataStore:"),function(_b,_c,_d){
with(_b){
_dataStore=_d;
}
}),new objj_method(sel_getUid("init"),function(_e,_f){
with(_e){
if(_e=objj_msgSendSuper({receiver:_e,super_class:objj_getClass("MMRecord").super_class},"init")){
objj_msgSend(objj_msgSend(_e,"class"),"_loadObservedAttributes");
var _10=objj_msgSend(objj_msgSend(objj_msgSend(_e,"class"),"allObservedAttributes"),"objectEnumerator");
for(var key;key=objj_msgSend(_10,"nextObject");){
objj_msgSend(_e,"addObserver:forKeyPath:options:context:",_e,key,CPKeyValueObservingOptionNew|CPKeyValueObservingOptionInitial,nil);
}
_changedAttributes=objj_msgSend(CPDictionary,"dictionary");
}
return _e;
}
}),new objj_method(sel_getUid("isNewRecord"),function(_11,_12){
with(_11){
return _id==nil;
}
}),new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"),function(_13,_14,_15,_16,_17,_18){
with(_13){
if(_16!==_13){
return;
}
if(!objj_msgSend(_changedAttributes,"containsKey:",_15)){
objj_msgSend(_changedAttributes,"setObject:forKey:",objj_msgSend(_17,"objectForKey:",CPKeyValueChangeOldKey),_15);
}
}
}),new objj_method(sel_getUid("acceptChangedAttributes"),function(_19,_1a){
with(_19){
objj_msgSend(_changedAttributes,"removeAllObjects");
}
}),new objj_method(sel_getUid("rejectChangedAttributes"),function(_1b,_1c){
with(_1b){
var _1d=objj_msgSend(_changedAttributes,"keyEnumerator"),key=nil;
while(key=objj_msgSend(_1d,"nextObject")){
objj_msgSend(_1b,"setValue:forKey:",objj_msgSend(_changedAttributes,"objectForKey:",key),key);
}
objj_msgSend(_changedAttributes,"removeAllObjects");
}
}),new objj_method(sel_getUid("changedAttributeDictionary"),function(_1e,_1f){
with(_1e){
var _20=objj_msgSend(CPDictionary,"dictionary"),_21=objj_msgSend(_changedAttributes,"keyEnumerator"),key=nil;
while(key=objj_msgSend(_21,"nextObject")){
objj_msgSend(_20,"setObject:forKey:",objj_msgSend(_1e,"valueForKey:",key),key);
}
return _20;
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("observedAttributes"),function(_22,_23){
with(_22){
return objj_msgSend(CPSet,"set");
}
}),new objj_method(sel_getUid("allObservedAttributes"),function(_24,_25){
with(_24){
return _1[objj_msgSend(_24,"UID")];
}
}),new objj_method(sel_getUid("_loadObservedAttributes"),function(_26,_27){
with(_26){
if(objj_msgSend(_26,"allObservedAttributes")){
return;
}
var _28=objj_msgSend(objj_msgSend(_26,"observedAttributes"),"copy");
if(objj_msgSend(objj_msgSend(_26,"superclass"),"respondsToSelector:",sel_getUid("_loadObservedAttributes"))){
objj_msgSend(objj_msgSend(_26,"superclass"),"_loadObservedAttributes");
objj_msgSend(_28,"unionSet:",objj_msgSend(objj_msgSend(_26,"superclass"),"allObservedAttributes"));
}
CPLog.debug("[%@ _loadObservedAttributes] observedAttributes: %@",_26,_28);
_1[objj_msgSend(_26,"UID")]=_28;
}
})]);
p;23;Models/MMSearchResult.jt;2680;@STATIC;1.0;I;21;Foundation/CPObject.jt;2635;
objj_executeFile("Foundation/CPObject.j",NO);
var _1=objj_allocateClassPair(CPObject,"MMSearchResult"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_guid"),new objj_ivar("_name"),new objj_ivar("_score"),new objj_ivar("_year")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("guid"),function(_3,_4){
with(_3){
return _guid;
}
}),new objj_method(sel_getUid("setGuid:"),function(_5,_6,_7){
with(_5){
_guid=_7;
}
}),new objj_method(sel_getUid("name"),function(_8,_9){
with(_8){
return _name;
}
}),new objj_method(sel_getUid("setName:"),function(_a,_b,_c){
with(_a){
_name=_c;
}
}),new objj_method(sel_getUid("score"),function(_d,_e){
with(_d){
return _score;
}
}),new objj_method(sel_getUid("setScore:"),function(_f,_10,_11){
with(_f){
_score=_11;
}
}),new objj_method(sel_getUid("year"),function(_12,_13){
with(_12){
return _year;
}
}),new objj_method(sel_getUid("setYear:"),function(_14,_15,_16){
with(_14){
_year=_16;
}
}),new objj_method(sel_getUid("setLanguage:"),function(_17,_18,_19){
with(_17){
if(objj_msgSend(_19,"isKindOfClass:",CPString)){
_language=objj_msgSend(objj_msgSend(LanguageConfig,"alloc"),"initWithCode:",_19);
}else{
if(objj_msgSend(_19,"isKindOfClass:",LanguageConfig)){
_language=_19;
}else{
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(CPString,"stringWithFormat:","language must be of type %@ (got %@)",LanguageConfig,objj_msgSend(_19,"class")));
}
}
}
}),new objj_method(sel_getUid("setLang:"),function(_1a,_1b,_1c){
with(_1a){
objj_msgSend(_1a,"setLanguage:",_1c);
}
}),new objj_method(sel_getUid("setScore:"),function(_1d,_1e,_1f){
with(_1d){
if(objj_msgSend(_1f,"isKindOfClass:",CPString)){
_score=parseInt(_1f,10);
}else{
if(objj_msgSend(_1f,"isKindOfClass:",CPNumber)){
_score=_1f;
}else{
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(CPString,"stringWithFormat:","score must be of type %@ (got %@)",CPNumber,objj_msgSend(_1f,"class")));
}
}
}
}),new objj_method(sel_getUid("setYear:"),function(_20,_21,_22){
with(_20){
if(objj_msgSend(_22,"isKindOfClass:",CPString)){
_year=parseInt(_22,10);
}else{
if(objj_msgSend(_22,"isKindOfClass:",CPNumber)){
_year=_22;
}else{
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(CPString,"stringWithFormat:","year must be of type %@ (got %@)",CPNumber,objj_msgSend(_22,"class")));
}
}
}
}),new objj_method(sel_getUid("description"),function(_23,_24){
with(_23){
return objj_msgSend(CPString,"stringWithFormat:","{MMSearchResult %@ (%@, %d) guid=%@/score=%d}",_name,objj_msgSend(_language,"languageCode"),_year,_guid,_score);
}
})]);
p;15;Models/PMSURL.jt;1050;@STATIC;1.0;I;18;Foundation/CPURL.jt;1008;
objj_executeFile("Foundation/CPURL.j",NO);
var _1=nil;
var _2=objj_allocateClassPair(CPURL,"PMSURL"),_3=_2.isa;
objj_registerClassPair(_2);
class_addMethods(_3,[new objj_method(sel_getUid("initialize"),function(_4,_5){
with(_4){
_1=objj_msgSend(CPURL,"URLWithString:",objj_msgSend(window.location.href,"substringToIndex:",window.location.href.length-window.location.pathname.length+1));
}
}),new objj_method(sel_getUid("URLWithPath:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(_6,"URLWithPath:params:",_8,nil);
}
}),new objj_method(sel_getUid("URLWithPath:params:"),function(_9,_a,_b,_c){
with(_9){
return objj_msgSend(_9,"URLWithPath:query:",_b,objj_msgSend(_c,"URLParams"));
}
}),new objj_method(sel_getUid("URLWithPath:query:"),function(_d,_e,_f,_10){
with(_d){
if(_10){
if(objj_msgSend(_f,"isKindOfClass:",CPURL)){
_f=objj_msgSend(_f,"absoluteString");
}
if(_f.indexOf("?")==CPNotFound){
_f+="?"+_10;
}else{
_f+="&"+_10;
}
}
return objj_msgSend(_d,"URLWithString:relativeToURL:",_f,_1);
}
})]);
p;17;Views/HUDButton.jt;382;@STATIC;1.0;I;17;AppKit/CPButton.jt;342;
objj_executeFile("AppKit/CPButton.j",NO);
var _1=objj_allocateClassPair(CPButton,"HUDButton"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("buttonWithTitle:"),function(_3,_4,_5){
with(_3){
return objj_msgSend(_3,"buttonWithTitle:theme:",_5,objj_msgSend(CPTheme,"themeNamed:","Aristo-HUD"));
}
})]);
p;27;Views/MMActionPopUpButton.jt;677;@STATIC;1.0;I;22;AppKit/CPPopUpButton.jI;20;AppKit/CPButtonBar.jI;17;AppKit/CPButton.jt;585;
objj_executeFile("AppKit/CPPopUpButton.j",NO);
objj_executeFile("AppKit/CPButtonBar.j",NO);
objj_executeFile("AppKit/CPButton.j",NO);
var _1=objj_allocateClassPair(CPPopUpButton,"MMActionPopUpButton"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("button"),function(_3,_4){
with(_3){
var _5=objj_msgSend(CPButtonBar,"actionPopupButton");
_5.isa=_3;
objj_msgSend(_5,"setValue:forThemeAttribute:",objj_msgSend(objj_msgSend(objj_msgSend(CPButton,"alloc"),"init"),"currentValueForThemeAttribute:","bezel-color"),"bezel-color");
return _5;
}
})]);
p;25;Views/MMAlbumDetailView.jt;13363;@STATIC;1.0;I;20;AppKit/CPImageView.jI;15;AppKit/CPMenu.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.ji;43;../DataSources/MMPosterMetadataDataSource.ji;41;../DataSources/MMLibraryMediaDataSource.ji;43;../DataSources/MMBannerMetadataDataSource.ji;50;../DataSources/MMBackgroundArtMetadataDataSource.ji;30;../Models/MMLibraryMediaItem.ji;11;HUDButton.ji;11;MMToolbar.jt;12989;
objj_executeFile("AppKit/CPImageView.j",NO);
objj_executeFile("AppKit/CPMenu.j",NO);
objj_executeFile("AppKit/CPTextField.j",NO);
objj_executeFile("AppKit/CPView.j",NO);
objj_executeFile("../DataSources/MMPosterMetadataDataSource.j",YES);
objj_executeFile("../DataSources/MMLibraryMediaDataSource.j",YES);
objj_executeFile("../DataSources/MMBannerMetadataDataSource.j",YES);
objj_executeFile("../DataSources/MMBackgroundArtMetadataDataSource.j",YES);
objj_executeFile("../Models/MMLibraryMediaItem.j",YES);
objj_executeFile("HUDButton.j",YES);
objj_executeFile("MMToolbar.j",YES);
var _1=CGSizeMake(512,512);
var _2=CGSizeMake(1280,720);
var _3=objj_allocateClassPair(CPView,"MMAlbumDetailView"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_delegate"),new objj_ivar("_titleField"),new objj_ivar("_yearField"),new objj_ivar("_taglineField"),new objj_ivar("_thumbView"),new objj_ivar("_artView"),new objj_ivar("_title"),new objj_ivar("_year"),new objj_ivar("_tagline"),new objj_ivar("_thumbImage"),new objj_ivar("_artImage"),new objj_ivar("artOverlay"),new objj_ivar("artOverlayView"),new objj_ivar("_containerView"),new objj_ivar("_childrenCollectionView")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("delegate"),function(_5,_6){
with(_5){
return _delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_7,_8,_9){
with(_7){
_delegate=_9;
}
}),new objj_method(sel_getUid("title"),function(_a,_b){
with(_a){
return _title;
}
}),new objj_method(sel_getUid("setTitle:"),function(_c,_d,_e){
with(_c){
_title=_e;
}
}),new objj_method(sel_getUid("year"),function(_f,_10){
with(_f){
return _year;
}
}),new objj_method(sel_getUid("setYear:"),function(_11,_12,_13){
with(_11){
_year=_13;
}
}),new objj_method(sel_getUid("tagline"),function(_14,_15){
with(_14){
return _tagline;
}
}),new objj_method(sel_getUid("setTagline:"),function(_16,_17,_18){
with(_16){
_tagline=_18;
}
}),new objj_method(sel_getUid("thumbImage"),function(_19,_1a){
with(_19){
return _thumbImage;
}
}),new objj_method(sel_getUid("setThumbImage:"),function(_1b,_1c,_1d){
with(_1b){
_thumbImage=_1d;
}
}),new objj_method(sel_getUid("artImage"),function(_1e,_1f){
with(_1e){
return _artImage;
}
}),new objj_method(sel_getUid("setArtImage:"),function(_20,_21,_22){
with(_20){
_artImage=_22;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_23,_24,_25){
with(_23){
if(_23=objj_msgSendSuper({receiver:_23,super_class:objj_getClass("MMAlbumDetailView").super_class},"initWithFrame:",_25)){
var _26=20,_27=CGRectMake(0,0,CGRectGetWidth(_25),CGRectGetHeight(_25));
objj_msgSend(_23,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",32.5/255,1));
_artView=objj_msgSend(objj_msgSend(MMImageView,"alloc"),"initWithFrame:",_27);
objj_msgSend(_artView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_artView,"setImageScaling:",CPScaleToFit);
objj_msgSend(_artView,"setSizeConstraint:",_2);
objj_msgSend(_artView,"bind:toObject:withKeyPath:options:","image",_23,"artImage",nil);
objj_msgSend(_artView,"addObserver:forKeyPath:options:context:",_23,"imageRect",CPKeyValueChangeNewKey,nil);
objj_msgSend(_23,"addSubview:",_artView);
artOverlayView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_27);
objj_msgSend(artOverlayView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_23,"addSubview:",artOverlayView);
if(CPFeatureIsCompatible(CPHTMLCanvasFeature)){
artOverlay=objj_msgSend(CALayer,"layer");
objj_msgSend(artOverlay,"setDelegate:",_23);
objj_msgSend(artOverlayView,"setLayer:",artOverlay);
}else{
objj_msgSend(artOverlayView,"setAlphaValue:",0.6);
objj_msgSend(artOverlayView,"setBackgroundColor:",objj_msgSend(CPColor,"whiteColor"));
}
_containerView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_25),objj_msgSend(_containerView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_23,"addSubview:",_containerView);
_thumbView=objj_msgSend(objj_msgSend(MMImageView,"alloc"),"initWithFrame:",CGRectMake(_26,_26,200,300));
objj_msgSend(_thumbView,"setHasShadow:",YES);
objj_msgSend(_thumbView,"setShadowColor:",objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",51/255,53/255,56/255,1));
objj_msgSend(_thumbView,"setShadowBlurDistance:",40);
objj_msgSend(_thumbView,"setBorderRadius:",7);
objj_msgSend(_thumbView,"setImageScaling:",CPScaleToFit);
objj_msgSend(_thumbView,"setImageAlignment:",CPImageAlignTop);
objj_msgSend(_thumbView,"setPlaceholder:",objj_msgSend(MMLibraryMediaItem,"blankThumbImage"));
objj_msgSend(_thumbView,"setSizeConstraint:",_1);
objj_msgSend(_thumbView,"addObserver:forKeyPath:options:context:",_23,"imageRect",CPKeyValueChangeNewKey,nil);
objj_msgSend(_thumbView,"bind:toObject:withKeyPath:options:","image",_23,"thumbImage",nil);
objj_msgSend(_containerView,"addSubview:",_thumbView);
_titleField=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_titleField,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",32));
objj_msgSend(_titleField,"setStringValue:","Movie Title");
objj_msgSend(_titleField,"setAutoresizingMask:",CPViewMaxXMargin);
objj_msgSend(_titleField,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(_titleField,"sizeToFit");
objj_msgSend(_titleField,"bind:toObject:withKeyPath:options:",CPValueBinding,_23,"title",nil);
objj_msgSend(_titleField,"setFrame:",CGRectMake(CGRectGetWidth(objj_msgSend(_thumbView,"frame"))+_26*2,CGRectGetMinY(objj_msgSend(_thumbView,"frame")),CGRectGetMaxX(_27)+_26-CGRectGetWidth(objj_msgSend(_thumbView,"frame")),CGRectGetHeight(objj_msgSend(_titleField,"frame"))));
objj_msgSend(_containerView,"addSubview:",_titleField);
_yearField=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_yearField,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",24));
objj_msgSend(_yearField,"setStringValue:","(2010)");
objj_msgSend(_yearField,"sizeToFit");
objj_msgSend(_containerView,"addSubview:",_yearField);
_taglineField=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_taglineField,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",16));
objj_msgSend(_taglineField,"setStringValue:","Tagline");
objj_msgSend(_taglineField,"sizeToFit");
objj_msgSend(_taglineField,"bind:toObject:withKeyPath:options:",CPValueBinding,_23,"tagline",nil);
objj_msgSend(_taglineField,"setFrame:",CGRectMake(CGRectGetMinX(objj_msgSend(_titleField,"frame")),CGRectGetMaxY(objj_msgSend(_titleField,"frame")),CGRectGetMaxX(_27)-_26-CGRectGetMinX(objj_msgSend(_titleField,"frame")),CGRectGetHeight(objj_msgSend(_taglineField,"frame"))));
objj_msgSend(_taglineField,"setAutoresizingMask:",CPViewMaxXMargin);
objj_msgSend(_taglineField,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(_containerView,"addSubview:",_taglineField);
_childrenCollectionView=objj_msgSend(objj_msgSend(MMCollectionView,"alloc"),"initWithFrame:",CGRectMake(CGRectGetMinX(objj_msgSend(_taglineField,"frame")),CGRectGetMaxY(objj_msgSend(_taglineField,"frame")),CGRectGetMaxX(_27)-_26-CGRectGetMinX(objj_msgSend(_taglineField,"frame")),CGRectGetMaxY(_27)-_26-CGRectGetMaxY(objj_msgSend(_taglineField,"frame"))));
objj_msgSend(_childrenCollectionView,"setAutoresizingMask:",CPViewWidthSizable|CPViewMinYMargin);
objj_msgSend(_childrenCollectionView,"setDelegate:",_23);
objj_msgSend(_containerView,"addSubview:",_childrenCollectionView);
}
return _23;
}
}),new objj_method(sel_getUid("setTitle:"),function(_28,_29,_2a){
with(_28){
if(_title===_2a){
return;
}
_title=_2a;
objj_msgSend(_28,"setNeedsLayout");
}
}),new objj_method(sel_getUid("setYear:"),function(_2b,_2c,_2d){
with(_2b){
if(_year===_2d){
return;
}
_year=_2d;
objj_msgSend(_yearField,"setStringValue:",_2d?objj_msgSend(CPString,"stringWithFormat:","(%@)",_2d):nil);
objj_msgSend(_2b,"setNeedsLayout");
}
}),new objj_method(sel_getUid("setThumbImage:"),function(_2e,_2f,_30){
with(_2e){
if(objj_msgSend(_thumbImage,"filename")===objj_msgSend(_30,"filename")){
return;
}
_thumbImage=_30;
objj_msgSend(_2e,"setNeedsLayout");
}
}),new objj_method(sel_getUid("setArtImage:"),function(_31,_32,_33){
with(_31){
if(objj_msgSend(_artImage,"filename")===objj_msgSend(_33,"filename")){
return;
}
_artImage=_33;
objj_msgSend(_31,"setNeedsLayout");
}
}),new objj_method(sel_getUid("contentHidden"),function(_34,_35){
with(_34){
return objj_msgSend(_containerView,"isHidden");
}
}),new objj_method(sel_getUid("setContentHidden:"),function(_36,_37,_38){
with(_36){
objj_msgSend(_containerView,"setHidden:",_38);
}
}),new objj_method(sel_getUid("backgroundHidden"),function(_39,_3a){
with(_39){
return objj_msgSend(artOverlayView,"isHidden");
}
}),new objj_method(sel_getUid("setBackgroundHidden:"),function(_3b,_3c,_3d){
with(_3b){
objj_msgSend(artOverlayView,"setHidden:",_3d);
}
}),new objj_method(sel_getUid("drawLayer:inContext:"),function(_3e,_3f,_40,_41){
with(_3e){
if(objj_msgSend(_3e,"backgroundHidden")){
return;
}
var _42=5,_43=objj_msgSend(_3e,"bounds");
CGContextBeginPath(_41);
CGContextSetFillColor(_41,objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",1,0.6));
CGContextMoveToPoint(_41,CGRectGetMinX(_43),CGRectGetMinY(_43));
CGContextAddLineToPoint(_41,CGRectGetMaxX(_43),CGRectGetMinY(_43));
CGContextAddLineToPoint(_41,CGRectGetMaxX(_43),CGRectGetMaxY(_43));
CGContextAddLineToPoint(_41,CGRectGetMinX(_43),CGRectGetMaxY(_43));
CGContextAddLineToPoint(_41,CGRectGetMinX(_43),CGRectGetMinY(_43));
CGContextClosePath(_41);
CGContextFillPath(_41);
var _44;
var _45;
var _46=2;
var _47=[0,0.5];
var _48=[237/255,237/255,237/255,0,237/255,237/255,237/255,1];
_45=CGColorSpaceCreateDeviceRGB();
_44=CGGradientCreateWithColorComponents(_45,_48,_47,_46);
var _49=CGPointMake(0,CGRectGetMidY(_43)),_4a=CGPointMake(1,CGRectGetMaxY(_43));
CGContextClip(_41);
CGContextDrawLinearGradient(_41,_44,_49,_4a,0);
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_4b,_4c){
with(_4b){
objj_msgSend(_4b,"layoutArtView");
objj_msgSend(_4b,"layoutThumbView");
objj_msgSend(_4b,"refreshView");
objj_msgSendSuper({receiver:_4b,super_class:objj_getClass("MMAlbumDetailView").super_class},"layoutSubviews");
}
}),new objj_method(sel_getUid("layoutArtView"),function(_4d,_4e){
with(_4d){
if(!objj_msgSend(_artView,"image")){
return;
}
var _4f=objj_msgSend(objj_msgSend(_artView,"image"),"size"),_50=objj_msgSend(_4d,"bounds"),_51=CGRectGetWidth(_50),_52=CGRectGetHeight(_50);
if(!_4f||(_4f.width==-1&&_4f.height==-1)){
return;
}
var _53=_4f.width/_4f.height,_54=_51/_52;
if(_54>_53){
var _55=ROUND(_4f.height*_51/_4f.width),_56=_55-_52;
objj_msgSend(_artView,"setFrame:",CGRectMake(0,-ROUND(_56/2),_51,_55));
}else{
var _57=ROUND(_4f.width*_52/_4f.height),_58=_57-_51;
objj_msgSend(_artView,"setFrame:",CGRectMake(-ROUND(_58/2),0,_57,_52));
}
}
}),new objj_method(sel_getUid("layoutThumbView"),function(_59,_5a){
with(_59){
if(!_thumbImage){
return;
}
var _5b=objj_msgSend(objj_msgSend(_thumbView,"image"),"size"),_5c=CGRectGetWidth(objj_msgSend(_thumbView,"bounds")),_5d=_5b.height*_5c/_5b.width;
if(CGSizeEqualToSize(_5b,CPImageUnspecifiedSize)){
return;
}
objj_msgSend(_thumbView,"setFrameSize:",CGSizeMake(_5c,_5d));
}
}),new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"),function(_5e,_5f,_60,_61,_62,_63){
with(_5e){
if(_60=="imageRect"&&_61==_thumbView){
objj_msgSend(_5e,"setNeedsLayout");
}else{
if(_60=="imageRect"&&_61==_artView){
objj_msgSend(_5e,"layoutArtView");
}
}
}
}),new objj_method(sel_getUid("setChildItemPrototype:"),function(_64,_65,_66){
with(_64){
objj_msgSend(_childrenCollectionView,"setItemPrototype:",_66);
if(_66){
objj_msgSend(_childrenCollectionView,"setMinItemSize:",objj_msgSend(objj_msgSend(_66,"view"),"frame").size);
objj_msgSend(_childrenCollectionView,"setMaxItemSize:",objj_msgSend(objj_msgSend(_66,"view"),"frame").size);
}
}
}),new objj_method(sel_getUid("setChildrenController:"),function(_67,_68,_69){
with(_67){
if(_69){
objj_msgSend(_childrenCollectionView,"bind:toObject:withKeyPath:options:","content",_69,"arrangedObjects",nil);
}else{
objj_msgSend(_childrenCollectionView,"unbind:","content");
}
}
}),new objj_method(sel_getUid("refreshView"),function(_6a,_6b){
with(_6a){
objj_msgSend(_titleField,"sizeToFit");
if(_year){
objj_msgSend(_yearField,"sizeToFit");
objj_msgSend(_yearField,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(_titleField,"frame"))+5,CGRectGetMidY(objj_msgSend(_titleField,"frame"))-CGRectGetHeight(objj_msgSend(_yearField,"frame"))/2));
objj_msgSend(_yearField,"setHidden:",NO);
}else{
objj_msgSend(_yearField,"setHidden:",YES);
}
}
}),new objj_method(sel_getUid("collectionView:didDoubleClickOnItemAtIndex:"),function(_6c,_6d,_6e,_6f){
with(_6c){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("mediaItemDetailView:didSelectChild:"))){
objj_msgSend(_delegate,"mediaItemDetailView:didSelectChild:",_6c,objj_msgSend(objj_msgSend(_6e,"content"),"objectAtIndex:",_6f));
}
}
})]);
p;24;Views/MMAlbumTrackCell.jt;1767;@STATIC;1.0;i;12;MMLazyView.jt;1731;
objj_executeFile("MMLazyView.j",YES);
var _1=CGSizeMake(128,72);
var _2=objj_allocateClassPair(MMLazyView,"MMAlbumTrackCell"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_representedObject"),new objj_ivar("_titleLabel")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("representedObject"),function(_4,_5){
with(_4){
return _representedObject;
}
}),new objj_method(sel_getUid("setRepresentedObject:"),function(_6,_7,_8){
with(_6){
_representedObject=_8;
}
}),new objj_method(sel_getUid("loadView"),function(_9,_a){
with(_9){
_titleLabel=objj_msgSend(CPTextField,"labelWithTitle:","1. Hello City");
objj_msgSend(_titleLabel,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",14));
objj_msgSend(_titleLabel,"sizeToFit");
objj_msgSend(_titleLabel,"setFrame:",CGRectMake(10,0,CGRectGetWidth(objj_msgSend(_9,"frame"))-10,CGRectGetHeight(objj_msgSend(_titleLabel,"frame"))));
objj_msgSend(_titleLabel,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_titleLabel,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(_titleLabel,"bind:toObject:withKeyPath:options:",CPValueBinding,_9,"fullTitle",nil);
objj_msgSend(_9,"addSubview:",_titleLabel);
}
}),new objj_method(sel_getUid("fullTitle"),function(_b,_c){
with(_b){
return objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("%d. %@","Full album track title (e.g. 1. Hello City"),objj_msgSend(_representedObject,"index"),objj_msgSend(_representedObject,"displayTitle"));
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("keyPathsForValuesAffectingFullTitle"),function(_d,_e){
with(_d){
return objj_msgSend(CPSet,"setWithObject:","representedObject","representedObject.index","representedObject.displayTitle");
}
})]);
p;18;Views/MMClipView.jt;4388;@STATIC;1.0;I;33;Foundation/CPNotificationCenter.jI;19;AppKit/CPClipView.jt;4307;
objj_executeFile("Foundation/CPNotificationCenter.j",NO);
objj_executeFile("AppKit/CPClipView.j",NO);
MMClipViewDefaultBackgroundColor=objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",34/255,1);
MMClipViewInsetShadowAlignNone=0;
MMClipViewInsetShadowAlignTop=1;
MMClipViewInsetShadowAlignRight=2;
MMClipViewInsetShadowAlignBottom=3;
MMClipViewInsetShadowAlignLeft=4;
var _1=objj_allocateClassPair(CPClipView,"MMClipView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_delegate"),new objj_ivar("_delegateRespondsTo_clipView_didScrollToPoint_"),new objj_ivar("_insetShadowAlignment")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("delegate"),function(_3,_4){
with(_3){
return _delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_5,_6,_7){
with(_5){
_delegate=_7;
}
}),new objj_method(sel_getUid("insetShadowAlignment"),function(_8,_9){
with(_8){
return _insetShadowAlignment;
}
}),new objj_method(sel_getUid("setInsetShadowAlignment:"),function(_a,_b,_c){
with(_a){
_insetShadowAlignment=_c;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_d,_e,_f){
with(_d){
if(_d=objj_msgSendSuper({receiver:_d,super_class:objj_getClass("MMClipView").super_class},"initWithFrame:",_f)){
_insetShadowAlignment=MMClipViewInsetShadowAlignNone;
objj_msgSend(_d,"setBackgroundColor:",MMClipViewDefaultBackgroundColor);
}
return _d;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_10,_11,_12){
with(_10){
_delegate=_12;
_delegateRespondsTo_clipView_didScrollToPoint_=objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("clipView:didScrollToPoint:"));
}
}),new objj_method(sel_getUid("scrollToPoint:"),function(_13,_14,_15){
with(_13){
objj_msgSendSuper({receiver:_13,super_class:objj_getClass("MMClipView").super_class},"scrollToPoint:",_15);
if(_delegateRespondsTo_clipView_didScrollToPoint_){
objj_msgSend(_delegate,"clipView:didScrollToPoint:",_13,_15);
}
}
}),new objj_method(sel_getUid("drawRect:"),function(_16,_17,_18){
with(_16){
if(CPFeatureIsCompatible(CPHTMLCanvasFeature)&&_insetShadowAlignment!==MMClipViewInsetShadowAlignNone){
var _19,_1a=objj_msgSend(_16,"frame"),_1b=10;
if(_insetShadowAlignment===MMClipViewInsetShadowAlignTop||_insetShadowAlignment===MMClipViewInsetShadowAlignBottom){
_19=CGRectMake(0,0,CGRectGetWidth(_1a),_1b);
}else{
if(_insetShadowAlignment===MMClipViewInsetShadowAlignLeft||_insetShadowAlignment===MMClipViewInsetShadowAlignRight){
_19=CGRectMake(0,0,_1b,CGRectGetHeight(_1a));
}
}
if(_insetShadowAlignment===MMClipViewInsetShadowAlignBottom){
_19=CGRectOffset(_19,0,CGRectGetHeight(_1a)-_1b);
}else{
if(_insetShadowAlignment===MMClipViewInsetShadowAlignRight){
_19=CGRectOffset(_19,CGRectGetWidth(_1a)-_1b,0);
}
}
if(CGRectIntersectsRect(_18,_19)){
var _1c=_19.origin,_1d=nil;
if(_insetShadowAlignment===MMClipViewInsetShadowAlignTop||_insetShadowAlignment===MMClipViewInsetShadowAlignBottom){
_1d=CGPointMake(CGRectGetMinX(_19),CGRectGetMaxY(_19));
}else{
if(_insetShadowAlignment===MMClipViewInsetShadowAlignLeft||_insetShadowAlignment===MMClipViewInsetShadowAlignRight){
_1d=CGPointMake(CGRectGetMaxX(_19),CGRectGetMinY(_19));
}
}
if(_insetShadowAlignment===MMClipViewInsetShadowAlignTop||_insetShadowAlignment===MMClipViewInsetShadowAlignLeft){
objj_msgSend(_16,"drawShadowInRect:startPoint:endPoint:",_19,_1c,_1d);
}else{
if(_insetShadowAlignment===MMClipViewInsetShadowAlignBottom||_insetShadowAlignment===MMClipViewInsetShadowAlignRight){
objj_msgSend(_16,"drawShadowInRect:startPoint:endPoint:",_19,_1d,_1c);
}
}
}
}
objj_msgSendSuper({receiver:_16,super_class:objj_getClass("MMClipView").super_class},"drawRect:",_18);
}
}),new objj_method(sel_getUid("drawShadowInRect:startPoint:endPoint:"),function(_1e,_1f,_20,_21,_22){
with(_1e){
var _23=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
var _24;
var _25;
var _26=2;
var _27=[0,1];
var _28=[36/255,36/255,36/255,1,50/255,50/255,50/255,1];
_25=CGColorSpaceCreateDeviceRGB();
_24=CGGradientCreateWithColorComponents(_25,_28,_27,_26);
CGContextAddRect(_23,_20);
CGContextClip(_23);
CGContextDrawLinearGradient(_23,_24,_21,_22,0);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("initialize"),function(_29,_2a){
with(_29){
CachedNotificationCenter=objj_msgSend(CPNotificationCenter,"defaultCenter");
}
})]);
p;24;Views/MMCollectionView.jt;3653;@STATIC;1.0;I;23;Foundation/CPIndexSet.jI;21;AppKit/CPScrollView.jt;3580;
objj_executeFile("Foundation/CPIndexSet.j",NO);
objj_executeFile("AppKit/CPScrollView.j",NO);
var _1=objj_allocateClassPair(CPCollectionView,"MMCollectionView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_visibleRange")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("clipView:didScrollToPoint:"),function(_3,_4,_5,_6){
with(_3){
objj_msgSend(_3,"notifySubviewsOfVisibility");
}
}),new objj_method(sel_getUid("tile"),function(_7,_8){
with(_7){
CPLog.trace("[%@ tile] START",objj_msgSend(_7,"class"));
objj_msgSendSuper({receiver:_7,super_class:objj_getClass("MMCollectionView").super_class},"tile");
objj_msgSend(_7,"notifySubviewsOfVisibility");
CPLog.trace("[%@ tile] END",objj_msgSend(_7,"class"));
}
}),new objj_method(sel_getUid("setSelectionIndexes:"),function(_9,_a,_b){
with(_9){
objj_msgSendSuper({receiver:_9,super_class:objj_getClass("MMCollectionView").super_class},"setSelectionIndexes:",_b);
objj_msgSend(_9,"_scrollToSelection");
}
}),new objj_method(sel_getUid("notifySubviewsOfVisibility"),function(_c,_d){
with(_c){
if(objj_msgSend(_content,"count")==0){
return;
}
var _e=objj_msgSend(_c,"visibleRect"),_f=objj_msgSend(_c,"indexOfItemAtPoint:",_e.origin),_10=objj_msgSend(_c,"indexOfItemAtPoint:",CGPointMake(CGRectGetMaxX(_e),CGRectGetMaxY(_e))),_11=objj_msgSend(_content,"count")-1;
if(_10==CPNotFound){
_10=_11;
}
var _12=_10-_f+1;
_10=MIN(_10+_numberOfColumns,_10+_12,_11);
var _13=CPMakeRange(_f,_10-_f);
CPLog.debug("[%@ notifySubviewsOfVisibility] newVisibleRange=%@]",objj_msgSend(_c,"class"),CPStringFromRange(_13));
if(CPEqualRanges(_13,_visibleRange)){
return;
}
var _14=CPIntersectionRange(_13,_visibleRange);
for(var i=_f;i<=_10;i++){
if(!CPLocationInRange(i,_14)){
objj_msgSend(_c,"notifySubview:visibilityDidChange:",objj_msgSend(_items[i],"view"),YES);
}
}
for(var i=_visibleRange.location,max=CPMaxRange(_visibleRange);i<=max;i++){
if(!CPLocationInRange(i,_14)){
objj_msgSend(_c,"notifySubview:visibilityDidChange:",objj_msgSend(_items[i],"view"),NO);
}
}
_visibleRange=_13;
}
}),new objj_method(sel_getUid("isItemAtIndexVisible:"),function(_15,_16,_17){
with(_15){
return CPLocationInRange(_17,_visibleRange);
}
}),new objj_method(sel_getUid("reloadContent"),function(_18,_19){
with(_18){
_visibleRange=CPMakeRange(CPNotFound,0);
objj_msgSendSuper({receiver:_18,super_class:objj_getClass("MMCollectionView").super_class},"reloadContent");
}
}),new objj_method(sel_getUid("notifySubview:visibilityDidChange:"),function(_1a,_1b,_1c,_1d){
with(_1a){
CPLog.trace("[%@ notifySubview:visibilityDidChange:] visibility of subview %@ changed to %@",objj_msgSend(_1a,"class"),_1c,_1d);
if(objj_msgSend(_1c,"respondsToSelector:",sel_getUid("visibilityDidChange:"))){
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"performSelector:target:argument:order:modes:",sel_getUid("visibilityDidChange:"),_1c,_1d,0,[CPDefaultRunLoopMode]);
}
}
}),new objj_method(sel_getUid("indexOfItemAtPoint:"),function(_1e,_1f,_20){
with(_1e){
var row=FLOOR(_20.y/(_itemSize.height+_verticalMargin)),_21=FLOOR(_20.x/(_itemSize.width+_horizontalMargin)),_22=row*_numberOfColumns+_21;
return (_22>=objj_msgSend(_content,"count"))?CPNotFound:_22;
}
}),new objj_method(sel_getUid("sizeToFitNumberOfColumns:withHorizontalMargin:"),function(_23,_24,_25,_26){
with(_23){
_25=MAX(_25,1);
var _27=(_25*_itemSize.width)+((_25+1)*_26),_28=MAX(CEIL(_items.length/_25),1),_29=(_28*_itemSize.height)+((_28+1)*objj_msgSend(_23,"verticalMargin"));
objj_msgSend(_23,"setFrameSize:",CGSizeMake(_27,_29));
objj_msgSend(_23,"_scrollToSelection");
}
})]);
p;32;Views/MMCollectionViewItemCell.jt;4760;@STATIC;1.0;i;17;MMSelectionView.ji;12;MMLazyView.ji;13;MMImageView.jt;4684;
objj_executeFile("MMSelectionView.j",YES);
objj_executeFile("MMLazyView.j",YES);
objj_executeFile("MMImageView.j",YES);
var _1=4;
var _2=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","BlankPoster.png"));
var _3=CGSizeMake(148,156);
var _4=objj_allocateClassPair(MMLazyView,"MMCollectionViewItemCell"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_representedObject"),new objj_ivar("_image"),new objj_ivar("_imageView"),new objj_ivar("_titleLabel"),new objj_ivar("_subtitleLabel"),new objj_ivar("_thumbSize"),new objj_ivar("_thumbMargin"),new objj_ivar("_selectionView"),new objj_ivar("_allowsSelection")]);
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("representedObject"),function(_6,_7){
with(_6){
return _representedObject;
}
}),new objj_method(sel_getUid("setRepresentedObject:"),function(_8,_9,_a){
with(_8){
_representedObject=_a;
}
}),new objj_method(sel_getUid("image"),function(_b,_c){
with(_b){
return _image;
}
}),new objj_method(sel_getUid("setImage:"),function(_d,_e,_f){
with(_d){
_image=_f;
}
}),new objj_method(sel_getUid("imageView"),function(_10,_11){
with(_10){
return _imageView;
}
}),new objj_method(sel_getUid("setImageView:"),function(_12,_13,_14){
with(_12){
_imageView=_14;
}
}),new objj_method(sel_getUid("titleLabel"),function(_15,_16){
with(_15){
return _titleLabel;
}
}),new objj_method(sel_getUid("setTitleLabel:"),function(_17,_18,_19){
with(_17){
_titleLabel=_19;
}
}),new objj_method(sel_getUid("subtitleLabel"),function(_1a,_1b){
with(_1a){
return _subtitleLabel;
}
}),new objj_method(sel_getUid("setSubtitleLabel:"),function(_1c,_1d,_1e){
with(_1c){
_subtitleLabel=_1e;
}
}),new objj_method(sel_getUid("_allowsSelection"),function(_1f,_20){
with(_1f){
return _allowsSelection;
}
}),new objj_method(sel_getUid("_setAllowsSelection:"),function(_21,_22,_23){
with(_21){
_allowsSelection=_23;
}
}),new objj_method(sel_getUid("setRepresentedObject:"),function(_24,_25,_26){
with(_24){
if(_representedObject==_26){
return;
}
_representedObject=_26;
}
}),new objj_method(sel_getUid("loadView"),function(_27,_28){
with(_27){
if(_thumbSize===nil){
_thumbSize=_3;
}
if(_thumbMargin===nil){
_thumbMargin=12;
}
if(_allowsSelection===nil){
_allowsSelection=YES;
}
var _29=CGRectGetWidth(objj_msgSend(_27,"frame")),_2a=CGRectGetHeight(objj_msgSend(_27,"frame"));
if(!_subtitleLabel){
_subtitleLabel=objj_msgSend(CPTextField,"labelWithTitle:","");
objj_msgSend(_subtitleLabel,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",10));
objj_msgSend(_subtitleLabel,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_subtitleLabel,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(_subtitleLabel,"setFrame:",CGRectMake(0,_2a-15-CGRectGetHeight(objj_msgSend(_subtitleLabel,"frame")),_29,CGRectGetHeight(objj_msgSend(_subtitleLabel,"frame"))));
objj_msgSend(_27,"addSubview:",_subtitleLabel);
}
if(!_titleLabel){
_titleLabel=objj_msgSend(CPTextField,"labelWithTitle:","");
objj_msgSend(_titleLabel,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",12));
objj_msgSend(_titleLabel,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_titleLabel,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(_titleLabel,"setFrame:",CGRectMake(0,CGRectGetMinY(objj_msgSend(_subtitleLabel,"frame"))-CGRectGetHeight(objj_msgSend(_titleLabel,"frame")),_29,CGRectGetHeight(objj_msgSend(_subtitleLabel,"frame"))));
objj_msgSend(_27,"addSubview:",_titleLabel);
}
if(!_imageView){
_imageView=objj_msgSend(objj_msgSend(MMImageView,"alloc"),"initWithFrame:",CGRectMake(_thumbMargin,0,CGRectGetWidth(objj_msgSend(_27,"frame"))-_thumbMargin*2,CGRectGetHeight(objj_msgSend(_27,"frame"))-CGRectGetHeight(objj_msgSend(_titleLabel,"frame"))-CGRectGetHeight(objj_msgSend(_subtitleLabel,"frame"))-3-_thumbMargin*2));
objj_msgSend(_imageView,"setBorderRadius:",4);
objj_msgSend(_imageView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_imageView,"setImageScaling:",CPScaleProportionally);
objj_msgSend(_imageView,"setImageAlignment:",CPImageAlignBottom);
objj_msgSend(_imageView,"setHasShadow:",YES);
objj_msgSend(_imageView,"setSizeConstraint:",_3);
objj_msgSend(_imageView,"setPlaceholder:",_2);
objj_msgSend(_imageView,"bind:toObject:withKeyPath:options:",CPValueBinding,_27,"image",nil);
objj_msgSend(_27,"addSubview:",_imageView);
}
}
}),new objj_method(sel_getUid("setSelected:"),function(_2b,_2c,_2d){
with(_2b){
if(_allowsSelection&&_2d&&!_selectionView&&_imageView){
_selectionView=objj_msgSend(MMSelectionView,"selectionViewForView:",_imageView);
}
objj_msgSend(_selectionView,"setSelected:",_2d);
}
})]);
p;19;Views/MMContainer.jt;1862;@STATIC;1.0;I;15;AppKit/CPView.jt;1823;
objj_executeFile("AppKit/CPView.j",NO);
var _1=objj_msgSend(CPColor,"colorWithWhite:alpha:",213/255,1);
var _2=objj_msgSend(CPColor,"colorWithWhite:alpha:",167/255,1);
var _3=objj_msgSend(CPColor,"colorWithWhite:alpha:",153/255,1);
var _4=89;
var _5=89;
var _6=objj_allocateClassPair(CPView,"MMContainer"),_7=_6.isa;
objj_registerClassPair(_6);
class_addMethods(_6,[new objj_method(sel_getUid("drawRect:"),function(_8,_9,_a){
with(_8){
var _b=objj_msgSend(_8,"bounds"),_c=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
CGContextBeginPath(_c);
CGContextSetFillColor(_c,_2);
CGContextMoveToPoint(_c,CGRectGetMinX(_b),CGRectGetMinY(_b));
CGContextAddLineToPoint(_c,CGRectGetMinX(_b),CGRectGetMaxY(_b));
CGContextAddLineToPoint(_c,CGRectGetMaxX(_b),CGRectGetMaxY(_b));
CGContextAddLineToPoint(_c,CGRectGetMaxX(_b),CGRectGetMinY(_b));
CGContextAddLineToPoint(_c,CGRectGetMinX(_b),CGRectGetMinY(_b));
CGContextClosePath(_c);
CGContextFillPath(_c);
if(CPFeatureIsCompatible(CPHTMLCanvasFeature)){
var _d;
var _e;
var _f=2;
var _10=[0,1];
var _11=[].concat(objj_msgSend(_1,"components")).concat(objj_msgSend(_2,"components"));
_e=CGColorSpaceCreateDeviceRGB();
_d=CGGradientCreateWithColorComponents(_e,_11,_10,_f);
var _12=CGPointMake(0,CGRectGetMinY(_b)),_13=CGPointMake(0,MIN(_4,CGRectGetHeight(_b)));
CGContextClip(_c);
CGContextDrawLinearGradient(_c,_d,_12,_13,0);
if(_4+_5<CGRectGetHeight(_b)){
_12=CGPointMake(0,CGRectGetMaxY(_b)-_5);
_13=CGPointMake(0,CGRectGetMaxY(_b));
_11=[].concat(objj_msgSend(_2,"components")).concat(objj_msgSend(_3,"components"));
_d=CGGradientCreateWithColorComponents(_e,_11,_10,_f);
CGContextClip(_c);
CGContextDrawLinearGradient(_c,_d,_12,_13,0);
}
}
objj_msgSendSuper({receiver:_8,super_class:objj_getClass("MMContainer").super_class},"drawRect:",_a);
}
})]);
p;31;Views/MMDirectoryBrowserSheet.jt;3695;@STATIC;1.0;I;16;AppKit/CPPanel.ji;24;MMDirectoryBrowserView.jt;3626;
objj_executeFile("AppKit/CPPanel.j",NO);
objj_executeFile("MMDirectoryBrowserView.j",YES);
var _1=objj_allocateClassPair(CPPanel,"MMDirectoryBrowserSheet"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_delegate"),new objj_ivar("_title"),new objj_ivar("_titleLabel"),new objj_ivar("_browser"),new objj_ivar("_browserContainer")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("delegate"),function(_3,_4){
with(_3){
return _delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_5,_6,_7){
with(_5){
_delegate=_7;
}
}),new objj_method(sel_getUid("title"),function(_8,_9){
with(_8){
return _title;
}
}),new objj_method(sel_getUid("setTitle:"),function(_a,_b,_c){
with(_a){
_title=_c;
}
}),new objj_method(sel_getUid("initWithContentRect:styleMask:"),function(_d,_e,_f,_10){
with(_d){
if(_d=objj_msgSendSuper({receiver:_d,super_class:objj_getClass("MMDirectoryBrowserSheet").super_class},"initWithContentRect:styleMask:",_f,_10)){
var _11=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_f),_12=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Select Folder","Select Folder")),_13=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Cancel","Cancel"));
_titleLabel=objj_msgSend(CPTextField,"labelWithTitle:","");
objj_msgSend(_titleLabel,"setFrame:",CGRectMake(15,10,CGRectGetWidth(objj_msgSend(_11,"frame"))-30,CGRectGetHeight(objj_msgSend(_titleLabel,"frame"))));
objj_msgSend(_12,"setFrameOrigin:",CGPointMake(CGRectGetWidth(objj_msgSend(_11,"frame"))-15-CGRectGetWidth(objj_msgSend(_12,"frame")),CGRectGetHeight(objj_msgSend(_11,"frame"))-15-CGRectGetHeight(objj_msgSend(_12,"frame"))));
objj_msgSend(_13,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_12,"frame"))-4-CGRectGetWidth(objj_msgSend(_13,"frame")),CGRectGetMinY(objj_msgSend(_12,"frame"))));
objj_msgSend(_12,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin);
objj_msgSend(_13,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin);
objj_msgSend(_12,"setKeyEquivalent:",CPCarriageReturnCharacter);
objj_msgSend(_13,"setKeyEquivalent:",CPEscapeFunctionKey);
objj_msgSend(_12,"setTarget:",_d);
objj_msgSend(_12,"setAction:",sel_getUid("choose:"));
objj_msgSend(_13,"setTarget:",_d);
objj_msgSend(_13,"setAction:",sel_getUid("cancel:"));
_browser=objj_msgSend(objj_msgSend(MMDirectoryBrowserView,"alloc"),"initWithFrame:",CGRectMake(15,CGRectGetMaxY(objj_msgSend(_titleLabel,"frame")),CGRectGetWidth(objj_msgSend(_11,"frame"))-30,CGRectGetHeight(objj_msgSend(_11,"frame"))-20-CGRectGetMaxY(objj_msgSend(_titleLabel,"frame"))-CGRectGetHeight(objj_msgSend(_12,"frame"))));
objj_msgSend(_11,"addSubview:",_titleLabel);
objj_msgSend(_11,"addSubview:",_browser);
objj_msgSend(_11,"addSubview:",_12);
objj_msgSend(_11,"addSubview:",_13);
_browserContainer=objj_msgSend(CPBox,"boxEnclosingView:",_browser);
objj_msgSend(_d,"setContentView:",_11);
}
return _d;
}
}),new objj_method(sel_getUid("choose:"),function(_14,_15,_16){
with(_14){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("directoryBrowserSheet:didChooseDirectory:"))){
objj_msgSend(_delegate,"directoryBrowserSheet:didChooseDirectory:",_14,objj_msgSend(_browser,"selectedDirectory"));
}
}
}),new objj_method(sel_getUid("cancel:"),function(_17,_18,_19){
with(_17){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("directoryBrowserSheetDidCancel:"))){
objj_msgSend(_delegate,"directoryBrowserSheetDidCancel:",_17);
}
}
}),new objj_method(sel_getUid("setTitle:"),function(_1a,_1b,_1c){
with(_1a){
if(_1c==_title){
return;
}
_title=_1c;
objj_msgSend(_titleLabel,"setStringValue:",_title);
}
})]);
p;30;Views/MMDirectoryBrowserView.jt;3400;@STATIC;1.0;I;15;AppKit/CPView.jI;22;AppKit/CPOutlineView.ji;38;../DataSources/MMDirectoryDataSource.ji;23;../Models/MMDirectory.jt;3263;
objj_executeFile("AppKit/CPView.j",NO);
objj_executeFile("AppKit/CPOutlineView.j",NO);
objj_executeFile("../DataSources/MMDirectoryDataSource.j",YES);
objj_executeFile("../Models/MMDirectory.j",YES);
var _1=objj_allocateClassPair(CPView,"MMDirectoryBrowserView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_dataSource"),new objj_ivar("_root"),new objj_ivar("_childrenByDirectory"),new objj_ivar("_outlineView")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("MMDirectoryBrowserView").super_class},"initWithFrame:",_5)){
_root=objj_msgSend(objj_msgSend(MMDirectory,"alloc"),"init");
_dataSource=objj_msgSend(objj_msgSend(MMDirectoryDataSource,"alloc"),"initWithDelegate:",_3);
_childrenByDirectory=objj_msgSend(CPDictionary,"dictionary");
var _6=objj_msgSend(objj_msgSend(MMScrollView,"alloc"),"initWithFrame:",objj_msgSend(_3,"bounds"));
objj_msgSend(_6,"setHasHorizontalScroller:",NO);
_outlineView=objj_msgSend(objj_msgSend(CPOutlineView,"alloc"),"initWithFrame:",objj_msgSend(objj_msgSend(_6,"contentView"),"bounds"));
objj_msgSend(_outlineView,"setRowHeight:",17);
objj_msgSend(_outlineView,"setBackgroundColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_6,"setDocumentView:",_outlineView);
var _7=objj_msgSend(objj_msgSend(CPTableColumn,"alloc"),"initWithIdentifier:","TextColumn");
objj_msgSend(_7,"setWidth:",CGRectGetWidth(objj_msgSend(_outlineView,"frame"))-10);
objj_msgSend(_outlineView,"setHeaderView:",nil);
objj_msgSend(_outlineView,"setCornerView:",nil);
objj_msgSend(_outlineView,"addTableColumn:",_7);
objj_msgSend(_outlineView,"setOutlineTableColumn:",_7);
objj_msgSend(_outlineView,"setDataSource:",_3);
objj_msgSend(_3,"addSubview:",_6);
}
return _3;
}
}),new objj_method(sel_getUid("selectedDirectory"),function(_8,_9){
with(_8){
return objj_msgSend(_outlineView,"itemAtRow:",objj_msgSend(_outlineView,"selectedRow"));
}
}),new objj_method(sel_getUid("childrenOfDirectory:"),function(_a,_b,_c){
with(_a){
var _d=objj_msgSend(_childrenByDirectory,"objectForKey:",_c);
if(!_d){
objj_msgSend(_dataSource,"refreshRecordsWithContextInfo:",_c);
}
return _d;
}
}),new objj_method(sel_getUid("dataSource:didReceiveRecords:contextInfo:"),function(_e,_f,_10,_11,_12){
with(_e){
objj_msgSend(_childrenByDirectory,"setObject:forKey:",_11,_12);
objj_msgSend(_outlineView,"reloadItem:reloadChildren:",_12,NO);
}
}),new objj_method(sel_getUid("outlineView:child:ofItem:"),function(_13,_14,_15,_16,_17){
with(_13){
return objj_msgSend(objj_msgSend(_13,"childrenOfDirectory:",_17),"objectAtIndex:",_16);
}
}),new objj_method(sel_getUid("outlineView:numberOfChildrenOfItem:"),function(_18,_19,_1a,_1b){
with(_18){
return objj_msgSend(objj_msgSend(_18,"childrenOfDirectory:",_1b),"count");
}
}),new objj_method(sel_getUid("outlineView:isItemExpandable:"),function(_1c,_1d,_1e,_1f){
with(_1c){
var _20=objj_msgSend(_1c,"childrenOfDirectory:",_1f);
if(_20){
return objj_msgSend(_20,"count")>0;
}else{
return YES;
}
}
}),new objj_method(sel_getUid("outlineView:objectValueForTableColumn:byItem:"),function(_21,_22,_23,_24,_25){
with(_21){
if(_25==nil){
return "/";
}
return objj_msgSend(_25,"title");
}
})]);
p;21;Views/MMEpisodeCell.jt;3554;@STATIC;1.0;i;12;MMLazyView.jt;3518;
objj_executeFile("MMLazyView.j",YES);
var _1=CGSizeMake(128,72);
var _2=objj_allocateClassPair(MMLazyView,"MMEpisodeCell"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_representedObject"),new objj_ivar("_thumbView"),new objj_ivar("_titleLabel"),new objj_ivar("_summaryLabel")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("representedObject"),function(_4,_5){
with(_4){
return _representedObject;
}
}),new objj_method(sel_getUid("setRepresentedObject:"),function(_6,_7,_8){
with(_6){
_representedObject=_8;
}
}),new objj_method(sel_getUid("thumbView"),function(_9,_a){
with(_9){
return _thumbView;
}
}),new objj_method(sel_getUid("setThumbView:"),function(_b,_c,_d){
with(_b){
_thumbView=_d;
}
}),new objj_method(sel_getUid("loadView"),function(_e,_f){
with(_e){
if(_thumbView==nil){
_thumbView=objj_msgSend(objj_msgSend(MMImageView,"alloc"),"initWithFrame:",CGRectMake(18,18,_1.width,_1.height));
}
objj_msgSend(_thumbView,"setHasShadow:",YES);
objj_msgSend(_thumbView,"setShadowBlurDistance:",4);
objj_msgSend(_thumbView,"setBorderRadius:",4);
objj_msgSend(_thumbView,"setSizeConstraint:",_1);
objj_msgSend(_thumbView,"bind:toObject:withKeyPath:options:",CPValueBinding,_e,"representedObject.thumbImage",nil);
objj_msgSend(_e,"addSubview:",_thumbView);
_titleLabel=objj_msgSend(CPTextField,"labelWithTitle:","Episode 10");
objj_msgSend(_titleLabel,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",14));
objj_msgSend(_titleLabel,"sizeToFit");
objj_msgSend(_titleLabel,"setFrame:",CGRectMake(CGRectGetMaxX(objj_msgSend(_thumbView,"frame"))+10,20,CGRectGetWidth(objj_msgSend(_e,"frame"))-CGRectGetMaxX(objj_msgSend(_thumbView,"frame"))-10,CGRectGetHeight(objj_msgSend(_titleLabel,"frame"))));
objj_msgSend(_titleLabel,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_titleLabel,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(_titleLabel,"bind:toObject:withKeyPath:options:",CPValueBinding,_e,"fullTitle",nil);
objj_msgSend(_e,"addSubview:",_titleLabel);
_summaryLabel=objj_msgSend(CPTextField,"labelWithTitle:","");
objj_msgSend(_summaryLabel,"setFrame:",CGRectMake(CGRectGetMinX(objj_msgSend(_titleLabel,"frame")),CGRectGetMaxY(objj_msgSend(_titleLabel,"frame")),CGRectGetWidth(objj_msgSend(_titleLabel,"frame")),CGRectGetHeight(objj_msgSend(_e,"frame"))-CGRectGetMaxY(objj_msgSend(_titleLabel,"frame"))-10));
objj_msgSend(_summaryLabel,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_summaryLabel,"setLineBreakMode:",CPLineBreakByWordWrapping);
objj_msgSend(_summaryLabel,"bind:toObject:withKeyPath:options:",CPValueBinding,_e,"representedObject.summary",nil);
objj_msgSend(_e,"addSubview:",_summaryLabel);
var _10=objj_msgSend(objj_msgSend(CPBox,"alloc"),"initWithFrame:",CGRectMake(0,CGRectGetHeight(objj_msgSend(_e,"frame"))-1,CGRectGetWidth(objj_msgSend(_e,"frame")),1));
objj_msgSend(_10,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithWhite:alpha:",80/255,1));
objj_msgSend(_10,"setAlphaValue:",0.4);
objj_msgSend(_e,"addSubview:",_10);
}
}),new objj_method(sel_getUid("fullTitle"),function(_11,_12){
with(_11){
return objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Episode %d: %@","Full episode title (e.g. Episode 1: Pilot"),objj_msgSend(_representedObject,"index"),objj_msgSend(_representedObject,"displayTitle"));
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("keyPathsForValuesAffectingFullTitle"),function(_13,_14){
with(_13){
return objj_msgSend(CPSet,"setWithObject:","representedObject");
}
})]);
p;22;Views/MMFileListView.jt;5240;@STATIC;1.0;I;25;AppKit/CPCollectionView.ji;20;MMFileListViewItem.jt;5166;
objj_executeFile("AppKit/CPCollectionView.j",NO);
objj_executeFile("MMFileListViewItem.j",YES);
var _1=objj_allocateClassPair(CPCollectionView,"MMFileListView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_filesController")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("MMFileListView").super_class},"initWithFrame:",_5)){
var _6=objj_msgSend(objj_msgSend(CPCollectionViewItem,"alloc"),"init");
objj_msgSend(_6,"setView:",objj_msgSend(objj_msgSend(MMFileListViewItem,"alloc"),"initWithFrame:",CGRectMakeZero()));
objj_msgSend(_3,"setItemPrototype:",_6);
objj_msgSend(_3,"setMaxNumberOfColumns:",1);
objj_msgSend(_3,"setMinItemSize:",CGSizeMake(20,45));
objj_msgSend(_3,"setMaxItemSize:",CGSizeMake(1000,45));
objj_msgSend(_3,"setVerticalMargin:",0);
objj_msgSend(_3,"setBackgroundColors:",MMFileListViewItemBackgroundColors);
objj_msgSend(_3,"setBackgroundColor:",objj_msgSend(MMFileListViewItemBackgroundColors,"objectAtIndex:",0));
var _7=function(e){
e.preventDefault();
return false;
},_8=class_getMethodImplementation(objj_msgSend(_3,"class"),sel_getUid("dropPerformedWithPasteboard:")),_9=function(e){
var _a=objj_msgSend(_CPDOMDataTransferPasteboard,"DOMDataTransferPasteboard");
objj_msgSend(_a,"_setDataTransfer:",e.dataTransfer);
if(e.preventDefault){
e.preventDefault();
}
_8(_3,nil,_a);
};
if(document.attachEvent){
_DOMElement.attachEvent("ondragenter",_7);
_DOMElement.attachEvent("ondragover",_7);
_DOMElement.attachEvent("ondrop",_9);
}else{
_DOMElement.addEventListener("dragenter",_7,false);
_DOMElement.addEventListener("dragover",_7,false);
_DOMElement.addEventListener("drop",_9,false);
}
_filesController=objj_msgSend(objj_msgSend(CPArrayController,"alloc"),"init");
objj_msgSend(_3,"bind:toObject:withKeyPath:options:","selectionIndexes",_filesController,"selectionIndexes",nil);
}
return _3;
}
}),new objj_method(sel_getUid("reloadContent"),function(_b,_c){
with(_b){
objj_msgSendSuper({receiver:_b,super_class:objj_getClass("MMFileListView").super_class},"reloadContent");
var _d=0,_e=objj_msgSend(_b,"backgroundColors"),_f=objj_msgSend(_e,"count"),_10=objj_msgSend(_items,"count");
if(!_f){
return;
}
CPLog.trace("[MMFileListView -reloadContent] repainting background for %d item(s) with %d background(s)",_10,_f);
for(var _11=0;_11<_10;_11++,_d++){
if(objj_msgSend(_selectionIndexes,"containsIndex:",_11)){
continue;
}
_d=_d%_f;
objj_msgSend(objj_msgSend(_items[_11],"view"),"setBackgroundColor:",_e[_d]);
}
}
}),new objj_method(sel_getUid("dropPerformedWithPasteboard:"),function(_12,_13,_14){
with(_12){
var _15=objj_msgSend(objj_msgSend(_14,"dataForType:","text/uri-list"),"rawString");
CPLog.debug("[MMFileListView -dropPerformedWithPasteboard:] got a drop with files: %@",_15);
if(!_15){
return;
}
var _16=objj_msgSend(CPString,"stringWithString:",_15).split(/\s+/);
for(var i=0;i<objj_msgSend(_16,"count");i++){
objj_msgSend(_12,"addFileWithURI:",objj_msgSend(_16,"objectAtIndex:",i));
}
}
}),new objj_method(sel_getUid("addFileWithURI:"),function(_17,_18,uri){
with(_17){
var _19=objj_msgSend(CPArray,"arrayWithObjects:","file://localhost","file://"),_1a;
for(var i=0;i<objj_msgSend(_19,"count");i++){
_1a=objj_msgSend(uri,"rangeOfString:",objj_msgSend(_19,"objectAtIndex:",i));
if(_1a.location==0){
uri=objj_msgSend(uri,"stringByReplacingCharactersInRange:withString:",_1a,"");
}
}
objj_msgSend(_17,"addFileWithPath:",decodeURIComponent(uri));
}
}),new objj_method(sel_getUid("addFileWithPath:"),function(_1b,_1c,_1d){
with(_1b){
objj_msgSend(_1b,"addFileWithPath:reload:",_1d,YES);
}
}),new objj_method(sel_getUid("addFileWithPath:reload:"),function(_1e,_1f,_20,_21){
with(_1e){
_20=objj_msgSend(_20,"stringByReplacingOccurrencesOfString:withString:","\\","/");
if(objj_msgSend(objj_msgSend(_20,"substringFromIndex:",objj_msgSend(_20,"length")-1),"isEqualToString:","/")){
_20=objj_msgSend(_20,"substringToIndex:",objj_msgSend(_20,"length")-1);
}
if(objj_msgSend(objj_msgSend(_filesController,"content"),"containsObject:",_20)){
CPLog.warn("[MMFileListView -addFileWithPath:] skipping %@ since we already have it",_20);
return;
}
CPLog.debug("[MMFileListView -addFileWithPath:] adding %@",_20);
objj_msgSend(_filesController,"addObject:",_20);
if(_21){
objj_msgSend(_1e,"reload");
}
}
}),new objj_method(sel_getUid("files"),function(_22,_23){
with(_22){
return objj_msgSend(_filesController,"arrangedObjects");
}
}),new objj_method(sel_getUid("setFiles:"),function(_24,_25,_26){
with(_24){
objj_msgSend(_filesController,"setContent:",[]);
for(var i=0;i<objj_msgSend(_26,"count");i++){
objj_msgSend(_24,"addFileWithPath:reload:",objj_msgSend(_26,"objectAtIndex:",i),NO);
}
objj_msgSend(_24,"reload");
}
}),new objj_method(sel_getUid("removeFilesAtIndexes:"),function(_27,_28,_29){
with(_27){
objj_msgSend(_filesController,"removeObjectsAtArrangedObjectIndexes:",_29);
objj_msgSend(_27,"reload");
}
}),new objj_method(sel_getUid("reload"),function(_2a,_2b){
with(_2a){
objj_msgSend(_2a,"setContent:",objj_msgSend(_filesController,"content"));
objj_msgSend(_2a,"needsDisplay");
}
})]);
p;26;Views/MMFileListViewItem.jt;3145;@STATIC;1.0;I;15;AppKit/CPView.jt;3106;
objj_executeFile("AppKit/CPView.j",NO);
var _1=10;
MMFileListViewItemSelectedColor=objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",56/255,117/255,215/255,1);
MMFileListViewItemBackgroundColors=objj_msgSend(CPArray,"arrayWithObjects:",objj_msgSend(CPColor,"whiteColor"),objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",237/255,243/255,254/255,1));
var _2=objj_allocateClassPair(CPView,"MMFileListViewItem"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_title"),new objj_ivar("_path"),new objj_ivar("_originalBackgroundColor")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("setRepresentedObject:"),function(_4,_5,_6){
with(_4){
CPLog.trace("[%@ -setRepresentedObject:] filePath=%@",objj_msgSend(_4,"class"),_6);
var _7=NO,_8=objj_msgSend(_6,"lastPathComponent"),_9=_6;
if(!_title){
_title=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_title,"setStringValue:",_8);
objj_msgSend(_title,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",12));
objj_msgSend(_title,"sizeToFit");
objj_msgSend(_title,"setAutoresizingMask:",CPViewWidthSizable|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_title,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(_4,"addSubview:",_title);
_7=YES;
}
if(!_path){
_path=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_path,"setStringValue:",_9);
objj_msgSend(_path,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",10));
objj_msgSend(_path,"sizeToFit");
objj_msgSend(_path,"setAutoresizingMask:",CPViewWidthSizable|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_path,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(_4,"addSubview:",_path);
_7=YES;
}
if(_7){
var _a=CGRectGetHeight(objj_msgSend(_title,"frame"))+CGRectGetHeight(objj_msgSend(_path,"frame")),_b=(CGRectGetHeight(objj_msgSend(_4,"frame"))-_a)/2;
objj_msgSend(_title,"setFrameOrigin:",CGPointMake(_1,_b));
objj_msgSend(_path,"setFrameOrigin:",CGPointMake(_1,_b+CGRectGetHeight(objj_msgSend(_title,"frame"))));
objj_msgSend(_4,"setSelected:",NO);
}
objj_msgSend(_title,"setStringValue:",_8);
objj_msgSend(_path,"setStringValue:",objj_msgSend(objj_msgSend(_4,"class"),"displayValueForNormalizedPath:",objj_msgSend(_9,"stringByDeletingLastPathComponent")));
}
}),new objj_method(sel_getUid("setSelected:"),function(_c,_d,_e){
with(_c){
if(!_originalBackgroundColor){
_originalBackgroundColor=objj_msgSend(_c,"backgroundColor");
}
objj_msgSend(_c,"setBackgroundColor:",_e?MMFileListViewItemSelectedColor:_originalBackgroundColor);
objj_msgSend(_title,"setTextColor:",_e?objj_msgSend(CPColor,"whiteColor"):objj_msgSend(CPColor,"blackColor"));
objj_msgSend(_path,"setTextColor:",objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",(_e?200:137)/255,1));
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("displayValueForNormalizedPath:"),function(_f,_10,_11){
with(_f){
if(CPBrowserIsOperatingSystem(CPWindowsOperatingSystem)){
return objj_msgSend(_11,"stringByReplacingOccurrencesOfString:withString:","/","\\");
}
return _11;
}
})]);
p;22;Views/MMFirstRunView.jt;10324;@STATIC;1.0;I;15;AppKit/CPView.jI;22;LPKit/LPAnchorButton.ji;13;MMImageView.ji;17;MMSelectionView.jt;10217;
objj_executeFile("AppKit/CPView.j",NO);
objj_executeFile("LPKit/LPAnchorButton.j",NO);
objj_executeFile("MMImageView.j",YES);
objj_executeFile("MMSelectionView.j",YES);
var _1=objj_msgSend(CPColor,"colorWithWhite:alpha:",110/255,1);
var _2=objj_allocateClassPair(CPView,"MMFirstRunView"),_3=_2.isa;
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithFrame:"),function(_4,_5,_6){
with(_4){
if(_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("MMFirstRunView").super_class},"initWithFrame:",_6)){
var _7=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,800,360));
objj_msgSend(_7,"setAutoresizingMask:",CPViewMinXMargin|CPViewMaxXMargin|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_7,"setCenter:",objj_msgSend(_4,"center"));
objj_msgSend(_4,"addSubview:",_7);
var _8=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Click the titles below to create library sections for your media and have it served to your Plex-enabled devices.","First-run help title"));
objj_msgSend(_8,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_7,"frame")),0));
objj_msgSend(_8,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_8,"setLineBreakMode:",CPLineBreakByWordWrapping);
objj_msgSend(_8,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",20));
objj_msgSend(_8,"sizeToFit");
objj_msgSend(_7,"addSubview:",_8);
var _9=nil,_a=nil;
_9=CGRectMake(CGRectGetMinX(objj_msgSend(_8,"frame")),CGRectGetMaxY(objj_msgSend(_8,"frame"))+40,CGRectGetWidth(objj_msgSend(_7,"frame"))/2,CGRectGetHeight(objj_msgSend(_7,"frame"))/2);
_a=objj_msgSend(objj_msgSend(_MMFirstRunSectionView,"alloc"),"initWithFrame:",_9);
objj_msgSend(_a,"setImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","movies_100x100.png"),CGSizeMake(100,100)));
objj_msgSend(_a,"setTitle:",CPLocalizedString("Add Movies Section","First-run title for adding movies"));
objj_msgSend(_a,"setTarget:",_4);
objj_msgSend(_a,"setAction:",sel_getUid("addMovieSection:"));
objj_msgSend(_a,"addSubtitle:action:",CPLocalizedString("> Movie posters and art","First-run help item"),nil);
objj_msgSend(_a,"addSubtitle:action:",CPLocalizedString("> Organize movies into collections","First-run help item"),nil);
objj_msgSend(_a,"addSubtitle:action:",CPLocalizedString("> Customize every detail of each movie","First-run help item"),nil);
objj_msgSend(_7,"addSubview:",_a);
_a=objj_msgSend(objj_msgSend(_MMFirstRunSectionView,"alloc"),"initWithFrame:",CGRectOffset(_9,CGRectGetWidth(objj_msgSend(_a,"frame")),0));
objj_msgSend(_a,"setImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","tv_100x100.png"),CGSizeMake(100,100)));
objj_msgSend(_a,"setTitle:",CPLocalizedString("Add TV Shows Section","First-run title for adding TV shows"));
objj_msgSend(_a,"setTarget:",_4);
objj_msgSend(_a,"setAction:",sel_getUid("addTVSection:"));
objj_msgSend(_a,"addSubtitle:action:",CPLocalizedString("> TV show posters and art","First-run help item"),nil);
objj_msgSend(_a,"addSubtitle:action:",CPLocalizedString("> Thumbnails for every episode","First-run help item"),nil);
objj_msgSend(_a,"addSubtitle:action:",CPLocalizedString("> Automatic theme music for TV shows","First-run help item"),nil);
objj_msgSend(_7,"addSubview:",_a);
_a=objj_msgSend(objj_msgSend(_MMFirstRunSectionView,"alloc"),"initWithFrame:",CGRectOffset(_9,0,CGRectGetHeight(objj_msgSend(_a,"frame"))));
objj_msgSend(_a,"setImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","video_100x100.png"),CGSizeMake(100,100)));
objj_msgSend(_a,"setTitle:",CPLocalizedString("Add Home Movies Section","First-run title for adding home movies"));
objj_msgSend(_a,"setTarget:",_4);
objj_msgSend(_a,"setAction:",sel_getUid("addHomeMovieSection:"));
objj_msgSend(_a,"addSubtitle:action:",CPLocalizedString("> Great for your personal media","First-run help item"),nil);
objj_msgSend(_a,"addSubtitle:action:",CPLocalizedString("> Add posters, custom genres and more","First-run help item"),nil);
objj_msgSend(_7,"addSubview:",_a);
_a=objj_msgSend(objj_msgSend(_MMFirstRunSectionView,"alloc"),"initWithFrame:",CGRectOffset(_9,CGRectGetWidth(objj_msgSend(_a,"frame")),CGRectGetHeight(objj_msgSend(_a,"frame"))));
objj_msgSend(_a,"setImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","music_100x100.png"),CGSizeMake(100,100)));
objj_msgSend(_a,"setTitle:",CPLocalizedString("Add Music Section","First-run title for adding music"));
objj_msgSend(_a,"setTarget:",_4);
objj_msgSend(_a,"setAction:",sel_getUid("addMusicSection:"));
objj_msgSend(_a,"addSubtitle:action:",CPLocalizedString("> Artist biographies and artwork","First-run help item"),nil);
objj_msgSend(_a,"addSubtitle:action:",CPLocalizedString("> Album reviews","First-run help item"),nil);
objj_msgSend(_7,"addSubview:",_a);
}
objj_msgSend(_4,"setBackgroundColor:",MMClipViewDefaultBackgroundColor);
return _4;
}
}),new objj_method(sel_getUid("addMovieSection:"),function(_b,_c,_d){
with(_b){
var _e=objj_msgSend(objj_msgSend(MMLibrarySection,"alloc"),"init");
objj_msgSend(_e,"setType:",MMLibrarySectionTypeMovies);
objj_msgSend(_e,"setAgent:",MMLibrarySectionDefaultMoviesAgent);
objj_msgSend(_b,"addSectionWithDefaults:",_e);
}
}),new objj_method(sel_getUid("addTVSection:"),function(_f,_10,_11){
with(_f){
var _12=objj_msgSend(objj_msgSend(MMLibrarySection,"alloc"),"init");
objj_msgSend(_12,"setType:",MMLibrarySectionTypeTV);
objj_msgSend(_12,"setAgent:",MMLibrarySectionDefaultTVAgent);
objj_msgSend(_f,"addSectionWithDefaults:",_12);
}
}),new objj_method(sel_getUid("addHomeMovieSection:"),function(_13,_14,_15){
with(_13){
var _16=objj_msgSend(objj_msgSend(MMLibrarySection,"alloc"),"init");
objj_msgSend(_16,"setType:",MMLibrarySectionTypeMovies);
objj_msgSend(_16,"setAgent:",MMLibrarySectionDefaultHomeMoviesAgent);
objj_msgSend(_13,"addSectionWithDefaults:",_16);
}
}),new objj_method(sel_getUid("addMusicSection:"),function(_17,_18,_19){
with(_17){
var _1a=objj_msgSend(objj_msgSend(MMLibrarySection,"alloc"),"init");
objj_msgSend(_1a,"setType:",MMLibrarySectionTypeArtist);
objj_msgSend(_1a,"setAgent:",MMLibrarySectionDefaultArtistAgent);
objj_msgSend(_17,"addSectionWithDefaults:",_1a);
}
}),new objj_method(sel_getUid("addSectionWithDefaults:"),function(_1b,_1c,_1d){
with(_1b){
var _1e=objj_msgSend(objj_msgSend(MMSectionSettingsSheet,"alloc"),"initWithDataSource:",objj_msgSend(MMLibrarySectionsDataSource,"sharedDataSource"));
objj_msgSend(_1e,"beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:",objj_msgSend(_1b,"window"),nil,nil,_1d);
}
})]);
var _2=objj_allocateClassPair(CPView,"_MMFirstRunSectionView"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("title"),new objj_ivar("image"),new objj_ivar("target"),new objj_ivar("action"),new objj_ivar("subtitles"),new objj_ivar("nextSubtitleOrigin")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("title"),function(_1f,_20){
with(_1f){
return title;
}
}),new objj_method(sel_getUid("setTitle:"),function(_21,_22,_23){
with(_21){
title=_23;
}
}),new objj_method(sel_getUid("image"),function(_24,_25){
with(_24){
return image;
}
}),new objj_method(sel_getUid("setImage:"),function(_26,_27,_28){
with(_26){
image=_28;
}
}),new objj_method(sel_getUid("target"),function(_29,_2a){
with(_29){
return target;
}
}),new objj_method(sel_getUid("setTarget:"),function(_2b,_2c,_2d){
with(_2b){
target=_2d;
}
}),new objj_method(sel_getUid("action"),function(_2e,_2f){
with(_2e){
return action;
}
}),new objj_method(sel_getUid("setAction:"),function(_30,_31,_32){
with(_30){
action=_32;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_33,_34,_35){
with(_33){
if(_33=objj_msgSendSuper({receiver:_33,super_class:objj_getClass("_MMFirstRunSectionView").super_class},"initWithFrame:",_35)){
var _36=objj_msgSend(objj_msgSend(MMImageView,"alloc"),"initWithFrame:",CGRectMake(0,0,100,100));
objj_msgSend(_36,"bind:toObject:withKeyPath:options:","image",_33,"image",nil);
objj_msgSend(_33,"addSubview:",_36);
var _37=objj_msgSend(LPAnchorButton,"buttonWithTitle:","");
objj_msgSend(_37,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",22));
objj_msgSend(_37,"sizeToFit");
objj_msgSend(_37,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(_36,"frame"))+10,CGRectGetMinY(objj_msgSend(_36,"frame"))));
objj_msgSend(_37,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_33,"frame"))-CGRectGetMaxX(objj_msgSend(_36,"frame")),CGRectGetHeight(objj_msgSend(_37,"frame"))));
objj_msgSend(_37,"setUnderlineMask:",LPAnchorButtonNoUnderline);
objj_msgSend(_37,"setTextColor:",MMSelectionViewDefaultGradientStartColor);
objj_msgSend(_37,"bind:toObject:withKeyPath:options:","title",_33,"title",nil);
objj_msgSend(_37,"bind:toObject:withKeyPath:options:","target",_33,"target",nil);
objj_msgSend(_37,"bind:toObject:withKeyPath:options:","action",_33,"action",nil);
nextSubtitleOrigin=CGPointMake(CGRectGetMinX(objj_msgSend(_37,"frame"))+10,CGRectGetMaxY(objj_msgSend(_37,"frame"))+5);
objj_msgSend(_33,"addSubview:",_37);
}
return _33;
}
}),new objj_method(sel_getUid("addSubtitle:action:"),function(_38,_39,_3a,_3b){
with(_38){
var _3c=objj_msgSend(LPAnchorButton,"buttonWithTitle:",_3a);
objj_msgSend(subtitles,"addObject:",_3c);
objj_msgSend(_3c,"setUnderlineMask:",LPAnchorButtonNoUnderline);
objj_msgSend(_3c,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",14));
objj_msgSend(_3c,"sizeToFit");
objj_msgSend(_3c,"setTextColor:",_1);
objj_msgSend(_3c,"setFrameOrigin:",nextSubtitleOrigin);
objj_msgSend(_3c,"setTarget:",target);
objj_msgSend(_3c,"setAction:",_3b);
nextSubtitleOrigin.y=CGRectGetMaxY(objj_msgSend(_3c,"frame"))+3;
objj_msgSend(_38,"addSubview:",_3c);
}
}),new objj_method(sel_getUid("setTarget:"),function(_3d,_3e,_3f){
with(_3d){
target=_3f;
for(var i=0,_40=objj_msgSend(subtitles,"count");i<_40;i++){
objj_msgSend(subtitles,"setTarget:",_3f);
}
}
})]);
p;25;Views/MMImagePickerCell.jt;3654;@STATIC;1.0;I;33;Foundation/CPNotificationCenter.ji;24;../CPImage+Transcoding.ji;30;../Models/MMLibraryMediaItem.ji;13;MMImageView.ji;12;MMLazyView.jt;3498;
objj_executeFile("Foundation/CPNotificationCenter.j",NO);
objj_executeFile("../CPImage+Transcoding.j",YES);
objj_executeFile("../Models/MMLibraryMediaItem.j",YES);
objj_executeFile("MMImageView.j",YES);
objj_executeFile("MMLazyView.j",YES);
var _1=objj_allocateClassPair(MMLazyView,"MMImagePickerCell"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_image"),new objj_ivar("_imageToDraw"),new objj_ivar("_imageView"),new objj_ivar("_selected"),new objj_ivar("_selectionView")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("image"),function(_3,_4){
with(_3){
return _image;
}
}),new objj_method(sel_getUid("setImage:"),function(_5,_6,_7){
with(_5){
_image=_7;
}
}),new objj_method(sel_getUid("setRepresentedObject:"),function(_8,_9,_a){
with(_8){
objj_msgSend(_8,"setImage:",objj_msgSend(objj_msgSend(_a,"thumbImage"),"constrainedToSize:",CGSizeMake(96,128)));
objj_msgSend(_8,"setDirty:",YES);
}
}),new objj_method(sel_getUid("loadView"),function(_b,_c){
with(_b){
var _d=12;
_imageView=objj_msgSend(objj_msgSend(MMImageView,"alloc"),"initWithFrame:",CGRectMake(_d,_d,CGRectGetWidth(objj_msgSend(_b,"frame"))-_d*2,CGRectGetHeight(objj_msgSend(_b,"frame"))-_d*2));
objj_msgSend(_imageView,"setImageScaling:",CPScaleProportionally);
objj_msgSend(_imageView,"setImageAlignment:",CPImageAlignBottom);
objj_msgSend(_imageView,"setBorderRadius:",4);
objj_msgSend(_imageView,"setHasShadow:",YES);
if(_imageToDraw){
CPLog.debug("[%@ loadView] drawing defered image %@",objj_msgSend(_b,"class"),objj_msgSend(_imageToDraw,"filename"));
objj_msgSend(_imageView,"setImage:",_imageToDraw),_imageToDraw=nil;
}
objj_msgSend(_b,"addSubview:",_imageView);
objj_msgSend(_b,"refreshView");
}
}),new objj_method(sel_getUid("refreshView"),function(_e,_f){
with(_e){
if(_selected&&!_selectionView&&_imageView){
_selectionView=objj_msgSend(MMSelectionView,"selectionViewForView:",_imageView);
}
objj_msgSend(_selectionView,"setSelected:",_selected);
objj_msgSend(_e,"setImage:",_image);
}
}),new objj_method(sel_getUid("setSelected:"),function(_10,_11,_12){
with(_10){
_12=!!_12;
if(_12===_selected){
return;
}
_selected=_12;
objj_msgSend(_10,"refreshView");
}
}),new objj_method(sel_getUid("setImage:"),function(_13,_14,_15){
with(_13){
if(_image===_15&&objj_msgSend(_imageView,"image")===_15){
return;
}
if(_image){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_13,CPImageDidLoadNotification,_image);
}
_image=_15;
if(objj_msgSend(_image,"loadStatus")==CPImageLoadStatusCompleted){
objj_msgSend(_13,"_drawImage:",_image);
}else{
if(_image){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_13,sel_getUid("imageDidLoad:"),CPImageDidLoadNotification,_image);
}
objj_msgSend(_13,"_drawImage:",objj_msgSend(MMLibraryMediaItem,"blankThumbImage"));
objj_msgSend(_image,"load");
}
}
}),new objj_method(sel_getUid("imageDidLoad:"),function(_16,_17,_18){
with(_16){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_16,CPImageDidLoadNotification,objj_msgSend(_18,"object"));
objj_msgSend(_16,"_drawImage:",objj_msgSend(_18,"object"));
}
}),new objj_method(sel_getUid("_drawImage:"),function(_19,_1a,_1b){
with(_19){
if(_imageView){
objj_msgSend(_imageView,"setImage:",_1b);
}else{
CPLog.debug("[%@ _drawImage:] deferring drawing %@ until the image view is visible",objj_msgSend(_19,"class"),objj_msgSend(_1b,"filename"));
_imageToDraw=_1b;
}
}
})]);
p;19;Views/MMImageView.jt;5761;@STATIC;1.0;I;20;AppKit/CPImageView.jt;5717;
objj_executeFile("AppKit/CPImageView.j",NO);
var _1=["-o-","-moz-","-ms-","-webkit-","-khtml-",""];
DOMSupportsBorderRadius=(function(){
var _2=document.createElement("img");
for(var i=0;i<_1.length;i++){
_2.style.cssText=_1[i]+"border-radius:0;";
if(_2.style.cssText&&_2.style.cssText.length>0){
return YES;
}
}
return NO;
})();
DOMSupportsBoxShadow=(function(){
var _3=document.createElement("img");
for(var i=0;i<_1.length;i++){
_3.style.cssText=_1[i]+"box-shadow: 0 0 0 red;";
if(_3.style.cssText&&_3.style.cssText.length>0){
return YES;
}
}
return NO;
})();
var _4=objj_allocateClassPair(CPImageView,"MMImageView"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_borderRadius"),new objj_ivar("_shadowOffset"),new objj_ivar("_shadowBlurDistance"),new objj_ivar("_shadowColor"),new objj_ivar("_placeholder"),new objj_ivar("_imageToBeDrawn"),new objj_ivar("_sizeConstraint")]);
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("borderRadius"),function(_6,_7){
with(_6){
return _borderRadius;
}
}),new objj_method(sel_getUid("setBorderRadius:"),function(_8,_9,_a){
with(_8){
_borderRadius=_a;
}
}),new objj_method(sel_getUid("shadowOffset"),function(_b,_c){
with(_b){
return _shadowOffset;
}
}),new objj_method(sel_getUid("setShadowOffset:"),function(_d,_e,_f){
with(_d){
_shadowOffset=_f;
}
}),new objj_method(sel_getUid("shadowBlurDistance"),function(_10,_11){
with(_10){
return _shadowBlurDistance;
}
}),new objj_method(sel_getUid("setShadowBlurDistance:"),function(_12,_13,_14){
with(_12){
_shadowBlurDistance=_14;
}
}),new objj_method(sel_getUid("shadowColor"),function(_15,_16){
with(_15){
return _shadowColor;
}
}),new objj_method(sel_getUid("setShadowColor:"),function(_17,_18,_19){
with(_17){
_shadowColor=_19;
}
}),new objj_method(sel_getUid("placeholder"),function(_1a,_1b){
with(_1a){
return _placeholder;
}
}),new objj_method(sel_getUid("setPlaceholder:"),function(_1c,_1d,_1e){
with(_1c){
_placeholder=_1e;
}
}),new objj_method(sel_getUid("sizeConstraint"),function(_1f,_20){
with(_1f){
return _sizeConstraint;
}
}),new objj_method(sel_getUid("setSizeConstraint:"),function(_21,_22,_23){
with(_21){
_sizeConstraint=_23;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_24,_25,_26){
with(_24){
if(_24=objj_msgSendSuper({receiver:_24,super_class:objj_getClass("MMImageView").super_class},"initWithFrame:",_26)){
_shadowOffset=CGSizeMake(0,0);
_shadowBlurDistance=8;
_shadowColor=objj_msgSend(CPColor,"colorWithWhite:alpha:",10/255,1);
}
return _24;
}
}),new objj_method(sel_getUid("setObjectValue:"),function(_27,_28,_29){
with(_27){
if(_sizeConstraint){
_29=objj_msgSend(_29,"constrainedToSize:",_sizeConstraint);
}
if(_29&&(!_placeholder||(objj_msgSend(_29,"loadStatus")==CPImageLoadStatusCompleted))){
objj_msgSendSuper({receiver:_27,super_class:objj_getClass("MMImageView").super_class},"setObjectValue:",_29);
objj_msgSend(_29,"load");
}else{
if(_imageToBeDrawn){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_27,CPImageDidLoadNotification,_imageToBeDrawn);
}
_imageToBeDrawn=_29;
objj_msgSendSuper({receiver:_27,super_class:objj_getClass("MMImageView").super_class},"setObjectValue:",_placeholder);
if(_imageToBeDrawn){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_27,sel_getUid("_imageDidLoad:"),CPImageDidLoadNotification,_imageToBeDrawn);
objj_msgSend(_imageToBeDrawn,"load");
}
}
}
}),new objj_method(sel_getUid("setPlaceholder:"),function(_2a,_2b,_2c){
with(_2a){
_placeholder=_2c;
if(_imageToBeDrawn){
objj_msgSend(_2a,"setObjectValue:",_imageToBeDrawn);
}
}
}),new objj_method(sel_getUid("_imageDidLoad:"),function(_2d,_2e,_2f){
with(_2d){
if(_imageToBeDrawn!==objj_msgSend(_2f,"object")){
return;
}
_imageToBeDrawn=nil;
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_2d,sel_getUid("_imageDidLoad:"),CPImageDidLoadNotification,objj_msgSend(_2f,"object"));
objj_msgSend(_2d,"setObjectValue:",objj_msgSend(_2f,"object"));
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_30,_31){
with(_30){
objj_msgSend(_30,"willChangeValueForKey:","imageRect");
objj_msgSendSuper({receiver:_30,super_class:objj_getClass("MMImageView").super_class},"layoutSubviews");
objj_msgSend(_30,"didChangeValueForKey:","imageRect");
}
}),new objj_method(sel_getUid("setBorderRadius:"),function(_32,_33,_34){
with(_32){
_borderRadius=_34;
if(!DOMSupportsBorderRadius){
return;
}
_DOMImageElement.style.borderRadius=(_borderRadius||0)+"px";
}
}),new objj_method(sel_getUid("setShadowOffset:"),function(_35,_36,_37){
with(_35){
_shadowOffset=_37;
objj_msgSend(_35,"_updateShadow");
}
}),new objj_method(sel_getUid("setShadowBlurDistance:"),function(_38,_39,_3a){
with(_38){
_shadowBlurDistance=_3a;
objj_msgSend(_38,"_updateShadow");
}
}),new objj_method(sel_getUid("setShadowColor:"),function(_3b,_3c,_3d){
with(_3b){
_shadowColor=_3d;
objj_msgSend(_3b,"_updateShadow");
}
}),new objj_method(sel_getUid("setHasShadow:"),function(_3e,_3f,_40){
with(_3e){
if(!DOMSupportsBoxShadow){
objj_msgSendSuper({receiver:_3e,super_class:objj_getClass("MMImageView").super_class},"setHasShadow:",_40);
return;
}
_hasShadow=_40;
objj_msgSend(_3e,"_updateShadow");
}
}),new objj_method(sel_getUid("_updateShadow"),function(_41,_42){
with(_41){
if(!DOMSupportsBoxShadow){
return;
}
var css="box-shadow:";
if(!_hasShadow){
css+="none";
_DOMElement.style.overflow="hidden";
}else{
css+=_shadowOffset.width+"px "+_shadowOffset.height+"px "+_shadowBlurDistance+"px "+objj_msgSend(_shadowColor,"cssString");
_DOMElement.style.overflow="visible";
}
for(var i=0;i<_1.length;i++){
_DOMImageElement.style.cssText+=_1[i]+css+";";
}
}
})]);
p;18;Views/MMLazyView.jt;2924;@STATIC;1.0;I;15;AppKit/CPView.jt;2885;
objj_executeFile("AppKit/CPView.j",NO);
var _1=objj_allocateClassPair(CPView,"MMLazyView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_loading"),new objj_ivar("_loaded"),new objj_ivar("_visible"),new objj_ivar("_dirty")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("isLoading"),function(_3,_4){
with(_3){
return _loading;
}
}),new objj_method(sel_getUid("setLoading:"),function(_5,_6,_7){
with(_5){
_loading=_7;
}
}),new objj_method(sel_getUid("isLoaded"),function(_8,_9){
with(_8){
return _loaded;
}
}),new objj_method(sel_getUid("setLoaded:"),function(_a,_b,_c){
with(_a){
_loaded=_c;
}
}),new objj_method(sel_getUid("isVisible"),function(_d,_e){
with(_d){
return _visible;
}
}),new objj_method(sel_getUid("setVisible:"),function(_f,_10,_11){
with(_f){
_visible=_11;
}
}),new objj_method(sel_getUid("isDirty"),function(_12,_13){
with(_12){
return _dirty;
}
}),new objj_method(sel_getUid("setDirty:"),function(_14,_15,_16){
with(_14){
_dirty=_16;
}
}),new objj_method(sel_getUid("visibilityDidChange:"),function(_17,_18,_19){
with(_17){
objj_msgSend(_17,"setVisible:",_19);
if(!_19){
return;
}
objj_msgSend(_17,"load");
if(objj_msgSend(_17,"isDirty")){
objj_msgSend(_17,"refresh");
}
}
}),new objj_method(sel_getUid("isDirty"),function(_1a,_1b){
with(_1a){
return _dirty;
}
}),new objj_method(sel_getUid("setDirty:"),function(_1c,_1d,_1e){
with(_1c){
_dirty=_1e;
if(_1e&&objj_msgSend(_1c,"isVisible")){
objj_msgSend(_1c,"refresh");
}
}
}),new objj_method(sel_getUid("isVisible"),function(_1f,_20){
with(_1f){
return _visible;
}
}),new objj_method(sel_getUid("isLoaded"),function(_21,_22){
with(_21){
return _loaded;
}
}),new objj_method(sel_getUid("isLoading"),function(_23,_24){
with(_23){
return _loading;
}
}),new objj_method(sel_getUid("load"),function(_25,_26){
with(_25){
if(_loading||_loaded){
return;
}
objj_msgSend(_25,"willLoadView");
objj_msgSend(_25,"setLoading:",YES);
objj_msgSend(_25,"loadView");
objj_msgSend(_25,"setDirty:",NO);
objj_msgSend(_25,"setLoading:",NO);
objj_msgSend(_25,"setLoaded:",YES);
objj_msgSend(_25,"didLoadView");
objj_msgSend(_25,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("willLoadView"),function(_27,_28){
with(_27){
}
}),new objj_method(sel_getUid("loadView"),function(_29,_2a){
with(_29){
}
}),new objj_method(sel_getUid("didLoadView"),function(_2b,_2c){
with(_2b){
}
}),new objj_method(sel_getUid("refresh"),function(_2d,_2e){
with(_2d){
if(_loading){
return;
}
objj_msgSend(_2d,"willRefreshView");
objj_msgSend(_2d,"refreshView");
objj_msgSend(_2d,"setDirty:",NO);
objj_msgSend(_2d,"didRefreshView");
objj_msgSend(_2d,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("willRefreshView"),function(_2f,_30){
with(_2f){
}
}),new objj_method(sel_getUid("refreshView"),function(_31,_32){
with(_31){
}
}),new objj_method(sel_getUid("didRefreshView"),function(_33,_34){
with(_33){
}
})]);
p;20;Views/MMLockButton.jt;3513;@STATIC;1.0;I;17;AppKit/CPButton.jt;3472;
objj_executeFile("AppKit/CPButton.j",NO);
var _1=nil;
var _2=nil;
var _3=objj_allocateClassPair(CPButton,"MMLockButton"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("locked")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("isLocked"),function(_5,_6){
with(_5){
return locked;
}
}),new objj_method(sel_getUid("setLocked:"),function(_7,_8,_9){
with(_7){
locked=_9;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_a,_b,_c){
with(_a){
if(_a=objj_msgSendSuper({receiver:_a,super_class:objj_getClass("MMLockButton").super_class},"initWithFrame:",_c)){
locked=NO;
objj_msgSend(_a,"setImage:",objj_msgSend(objj_msgSend(_a,"class"),"unlockImage"));
objj_msgSend(_a,"setImagePosition:",CPImageOnly);
}
return _a;
}
}),new objj_method(sel_getUid("lock:"),function(_d,_e,_f){
with(_d){
objj_msgSend(_d,"setLocked:",YES);
}
}),new objj_method(sel_getUid("setLocked:"),function(_10,_11,_12){
with(_10){
_12=!!_12;
if(_12===locked){
return;
}
locked=_12;
objj_msgSend(objj_msgSend(CPKeyValueBinding,"getBinding:forObject:","locked",_10),"reverseSetValueFor:","locked");
objj_msgSend(_10,"setImage:",locked?objj_msgSend(objj_msgSend(_10,"class"),"lockImage"):objj_msgSend(objj_msgSend(_10,"class"),"unlockImage"));
objj_msgSend(_10,"setHighlighted:",_12);
}
}),new objj_method(sel_getUid("sendAction:to:"),function(_13,_14,_15,_16){
with(_13){
objj_msgSend(_13,"highlight:",YES);
objj_msgSend(_13,"willChangeValueForKey:","locked");
locked=!locked;
objj_msgSend(_13,"setImage:",locked?objj_msgSend(objj_msgSend(_13,"class"),"lockImage"):objj_msgSend(objj_msgSend(_13,"class"),"unlockImage"));
objj_msgSend(_13,"didChangeValueForKey:","locked");
objj_msgSend(objj_msgSend(CPKeyValueBinding,"getBinding:forObject:","locked",_13),"reverseSetValueFor:","locked");
try{
objj_msgSendSuper({receiver:_13,super_class:objj_getClass("MMLockButton").super_class},"sendAction:to:",_15,_16);
}
catch(e){
throw e;
}
finally{
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",0.1,_13,sel_getUid("toggleButtonTimerDidFinish:"),nil,NO);
}
}
}),new objj_method(sel_getUid("toggleButtonTimerDidFinish:"),function(_17,_18,_19){
with(_17){
objj_msgSend(_17,"setHighlighted:",locked);
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("lockImage"),function(_1a,_1b){
with(_1a){
if(!_1){
_1=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","lock.png"),CGSizeMake(17,17));
}
return _1;
}
}),new objj_method(sel_getUid("unlockImage"),function(_1c,_1d){
with(_1c){
if(!_2){
_2=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","unlock.png"),CGSizeMake(17,17));
}
return _2;
}
}),new objj_method(sel_getUid("button"),function(_1e,_1f){
with(_1e){
var _20=objj_msgSend(objj_msgSend(_1e,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_20,"sizeToFit");
return _20;
}
}),new objj_method(sel_getUid("buttonForField:"),function(_21,_22,_23){
with(_21){
var _24=objj_msgSend(_21,"button"),_25=objj_msgSend(_23,"frame");
objj_msgSend(_23,"setSendsActionOnEndEditing:",YES);
objj_msgSend(_23,"setTarget:",_24);
objj_msgSend(_23,"setAction:",sel_getUid("lock:"));
objj_msgSend(_24,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(_25),CGRectGetMinY(_25)+(CGRectGetHeight(_25)-CGRectGetHeight(objj_msgSend(_24,"frame")))/2));
return _24;
}
})]);
p;23;Views/MMMediaItemCell.jt;6939;@STATIC;1.0;i;40;../Controllers/MMMatchPickerController.ji;41;../DataSources/MMMediaMatchesDataSource.ji;41;../DataSources/MMMetadataItemDataSource.ji;30;../Models/MMLibraryMediaItem.ji;26;MMCollectionViewItemCell.ji;13;MMImageView.jt;6699;
objj_executeFile("../Controllers/MMMatchPickerController.j",YES);
objj_executeFile("../DataSources/MMMediaMatchesDataSource.j",YES);
objj_executeFile("../DataSources/MMMetadataItemDataSource.j",YES);
objj_executeFile("../Models/MMLibraryMediaItem.j",YES);
objj_executeFile("MMCollectionViewItemCell.j",YES);
objj_executeFile("MMImageView.j",YES);
var _1=objj_allocateClassPair(MMCollectionViewItemCell,"MMMediaItemCell"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_matchingImage"),new objj_ivar("_matchingImageView"),new objj_ivar("_dataSource"),new objj_ivar("_editor")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("refreshView"),function(_3,_4){
with(_3){
objj_msgSend(_matchingImageView,"setHidden:",objj_msgSend(objj_msgSend(_3,"representedObject"),"state")!=MMLibraryMediaItemStateMatching);
}
}),new objj_method(sel_getUid("loadView"),function(_5,_6){
with(_5){
objj_msgSendSuper({receiver:_5,super_class:objj_getClass("MMMediaItemCell").super_class},"loadView");
objj_msgSend(_5,"bind:toObject:withKeyPath:options:","image",_5,"representedObject.thumbImage",nil);
objj_msgSend(_5,"bind:toObject:withKeyPath:options:","imageRect",objj_msgSend(_5,"imageView"),"imageRect",nil);
objj_msgSend(objj_msgSend(_5,"titleLabel"),"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(objj_msgSend(_5,"titleLabel"),"setTextShadowColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(objj_msgSend(_5,"titleLabel"),"setTextShadowOffset:",CGSizeMake(1,1));
objj_msgSend(objj_msgSend(_5,"titleLabel"),"bind:toObject:withKeyPath:options:",CPValueBinding,_5,"representedObject.displayTitle",nil);
objj_msgSend(objj_msgSend(_5,"subtitleLabel"),"setTextColor:",objj_msgSend(CPColor,"colorWithWhite:alpha:",137/255,1));
objj_msgSend(objj_msgSend(_5,"subtitleLabel"),"bind:toObject:withKeyPath:options:",CPValueBinding,_5,"representedObject.year",nil);
if(!_matchingImageView){
_matchingImageView=objj_msgSend(objj_msgSend(MMImageView,"alloc"),"initWithFrame:",objj_msgSend(objj_msgSend(_5,"imageView"),"imageRect")||CGRectMakeZero());
objj_msgSend(_matchingImageView,"setImageScaling:",CPScaleNone);
objj_msgSend(_matchingImageView,"setImageAlignment:",CPImageAlignCenter);
objj_msgSend(_5,"bind:toObject:withKeyPath:options:","matching",_5,"representedObject.matching",nil);
objj_msgSend(_5,"bind:toObject:withKeyPath:options:","loading",_5,"representedObject.loading",nil);
objj_msgSend(_matchingImageView,"setAlphaValue:",0.6);
objj_msgSend(_matchingImageView,"setBackgroundColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(_5,"addSubview:",_matchingImageView);
}
objj_msgSend(_matchingImageView,"setHidden:",objj_msgSend(objj_msgSend(_5,"representedObject"),"state")!=MMLibraryMediaItemStateMatching);
}
}),new objj_method(sel_getUid("setImageRect:"),function(_7,_8,_9){
with(_7){
if(_9){
objj_msgSend(_matchingImageView,"setFrame:",objj_msgSend(_7,"convertRect:fromView:",_9,objj_msgSend(_7,"imageView")));
}
}
}),new objj_method(sel_getUid("setMatching:"),function(_a,_b,_c){
with(_a){
if(!_matchingImage){
_matchingImage=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","Matching.png"));
}
objj_msgSend(_matchingImageView,"setImage:",_c?_matchingImage:nil);
objj_msgSend(_a,"showOrHideDimmer");
}
}),new objj_method(sel_getUid("setLoading:"),function(_d,_e,_f){
with(_d){
objj_msgSend(_d,"showOrHideDimmer");
}
}),new objj_method(sel_getUid("showOrHideDimmer"),function(_10,_11){
with(_10){
objj_msgSend(_matchingImageView,"setHidden:",!objj_msgSend(objj_msgSend(_10,"representedObject"),"isMatching")&&!objj_msgSend(objj_msgSend(_10,"representedObject"),"isLoading"));
}
}),new objj_method(sel_getUid("rightMouseDown:"),function(_12,_13,_14){
with(_12){
var _15=objj_msgSend(objj_msgSend(CPMenu,"alloc"),"initWithTitle:","");
objj_msgSend(objj_msgSend(_15,"addItemWithTitle:action:keyEquivalent:",CPLocalizedString("Edit Metadata","Edit Metadata"),sel_getUid("_editMetadata:"),"i"),"setTarget:",_12);
objj_msgSend(objj_msgSend(_15,"addItemWithTitle:action:keyEquivalent:",CPLocalizedString("Fix Incorrect Match...","Fix Incorrect Match..."),sel_getUid("_fixIncorrectMatch:"),nil),"setTarget:",_12);
objj_msgSend(objj_msgSend(_15,"addItemWithTitle:action:keyEquivalent:",CPLocalizedString("Refresh Info","Refresh Info"),sel_getUid("_refreshInfo:"),nil),"setTarget:",_12);
objj_msgSend(CPMenu,"popUpContextMenu:withEvent:forView:",_15,_14,_12);
}
}),new objj_method(sel_getUid("_editMetadata:"),function(_16,_17,_18){
with(_16){
_editor=objj_msgSend(objj_msgSend(MMMetadataEditorController,"alloc"),"initWithDelegate:",_16);
objj_msgSend(_editor,"presentMediaItem:inWindow:",objj_msgSend(_16,"representedObject"),objj_msgSend(_16,"window"));
}
}),new objj_method(sel_getUid("metadataEditor:didCommitMetadataItem:"),function(_19,_1a,_1b,_1c){
with(_19){
objj_msgSend(objj_msgSend(_19,"_dataSource"),"updateRecord:",_1c);
}
}),new objj_method(sel_getUid("dataSource:didUpdateRecord:contextInfo:"),function(_1d,_1e,_1f,_20,_21){
with(_1d){
objj_msgSend(_editor,"dismissSheet");
_editor=nil;
}
}),new objj_method(sel_getUid("dataSource:didFailToUpdateRecord:withError:contextInfo:"),function(_22,_23,_24,_25,_26,_27){
with(_22){
objj_msgSend(AppController,"notifyUserOfError:withTitle:",_26,"Unable to update metadata");
}
}),new objj_method(sel_getUid("_dataSource"),function(_28,_29){
with(_28){
if(!_dataSource){
_dataSource=objj_msgSend(objj_msgSend(MMMetadataItemDataSource,"alloc"),"initWithDelegate:",_28);
}
return _dataSource;
}
}),new objj_method(sel_getUid("_fixIncorrectMatch:"),function(_2a,_2b,_2c){
with(_2a){
var _2d=objj_msgSend(objj_msgSend(MMMatchPickerController,"alloc"),"initWithDelegate:",_2a);
objj_msgSend(_2d,"setMediaItem:",objj_msgSend(_2a,"representedObject"));
objj_msgSend(_2d,"presentSheetInWindow:",objj_msgSend(_2a,"window"));
}
}),new objj_method(sel_getUid("matchPicker:didSelectSearchResult:"),function(_2e,_2f,_30,_31){
with(_2e){
CPLog.info("[%@ -picker:didSelectSearchResult:] user chose %@ as the correct match for %@",objj_msgSend(_2e,"class"),_31,objj_msgSend(_2e,"representedObject"));
objj_msgSend(_30,"dismissSheet");
objj_msgSend(objj_msgSend(MMMediaMatchesDataSource,"sharedDataSource"),"selectMatch:forMediaItem:",_31,objj_msgSend(_2e,"representedObject"));
}
}),new objj_method(sel_getUid("matchPickerDidCancel:"),function(_32,_33,_34){
with(_32){
objj_msgSend(_34,"dismissSheet");
}
}),new objj_method(sel_getUid("_refreshInfo:"),function(_35,_36,_37){
with(_35){
objj_msgSend(objj_msgSend(MMMediaMatchesDataSource,"sharedDataSource"),"refreshMatchForMediaItem:",objj_msgSend(_35,"representedObject"));
}
})]);
p;33;Views/MMMediaItemCollectionView.jt;3303;@STATIC;1.0;i;18;MMCollectionView.ji;28;../Models/MMLibrarySection.jt;3228;
objj_executeFile("MMCollectionView.j",YES);
objj_executeFile("../Models/MMLibrarySection.j",YES);
var _1=objj_allocateClassPair(MMCollectionView,"MMMediaItemCollectionView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_updateTimer")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("insertObject:inArraySortedByDescriptors:"),function(_3,_4,_5,_6){
with(_3){
objj_msgSend(_3,"willChangeValueForKey:","content");
objj_msgSend(_3,"_insertItem:atIndex:",objj_msgSend(_3,"_detachedItemForObject:",_5),objj_msgSend(objj_msgSend(_3,"content"),"insertObject:inArraySortedByDescriptors:",_5,_6));
objj_msgSend(_3,"tileAfterDelay");
objj_msgSend(_3,"didChangeValueForKey:","content");
}
}),new objj_method(sel_getUid("insertObject:atIndex:"),function(_7,_8,_9,_a){
with(_7){
objj_msgSend(_7,"willChangeValueForKey:","content");
objj_msgSend(_7,"_insertItem:atIndex:",objj_msgSend(_7,"_detachedItemForObject:",_9),_a);
objj_msgSend(objj_msgSend(_7,"content"),"insertObject:atIndex:",_9,_a);
objj_msgSend(_7,"tileAfterDelay");
objj_msgSend(_7,"didChangeValueForKey:","content");
}
}),new objj_method(sel_getUid("removeObject:"),function(_b,_c,_d){
with(_b){
var _e=objj_msgSend(_b,"content"),_f=objj_msgSend(_e,"indexOfObject:",_d);
if(_f==CPNotFound){
return;
}
var _10=objj_msgSend(_b,"items"),_11=_10[_f];
objj_msgSend(_b,"willChangeValueForKey:","content");
objj_msgSend(objj_msgSend(_11,"view"),"removeFromSuperview");
objj_msgSend(_11,"setSelected:",NO);
_cachedItems.push(_11);
objj_msgSend(_e,"removeObjectAtIndex:",_f);
objj_msgSend(_10,"removeObjectAtIndex:",_f);
objj_msgSend(_b,"tileAfterDelay");
objj_msgSend(_b,"didChangeValueForKey:","content");
}
}),new objj_method(sel_getUid("_detachedItemForObject:"),function(_12,_13,_14){
with(_12){
var _15=objj_msgSend(_12,"items"),_16=objj_msgSend(_12,"content"),_17=objj_msgSend(_16,"indexOfObject:",_14);
if(_17==CPNotFound){
return objj_msgSend(_12,"newItemForRepresentedObject:",_14);
}
var _18=_15[_17];
objj_msgSend(_15,"removeObjectAtIndex:",_17);
objj_msgSend(_16,"removeObjectAtIndex:",_17);
return _18;
}
}),new objj_method(sel_getUid("_insertItem:atIndex:"),function(_19,_1a,_1b,_1c){
with(_19){
objj_msgSend(objj_msgSend(_19,"items"),"insertObject:atIndex:",_1b,_1c);
objj_msgSend(_19,"addSubview:",objj_msgSend(_1b,"view"));
if(objj_msgSend(_19,"isItemAtIndexVisible:",_1c)){
objj_msgSend(_19,"notifySubview:visibilityDidChange:",objj_msgSend(_1b,"view"),YES);
}
}
}),new objj_method(sel_getUid("tileAfterDelay"),function(_1d,_1e){
with(_1d){
objj_msgSend(_updateTimer,"invalidate");
_updateTimer=objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",0.1,_1d,sel_getUid("tile"),nil,NO);
}
}),new objj_method(sel_getUid("performKeyEquivalent:"),function(_1f,_20,_21){
with(_1f){
if(objj_msgSend(_21,"_triggersKeyEquivalent:withModifierMask:","i",(CPCommandKeyMask|CPControlKeyMask))){
if(objj_msgSend(_selectionIndexes,"count")!=0){
objj_msgSend(objj_msgSend(_items[objj_msgSend(_selectionIndexes,"firstIndex")],"view"),"_editMetadata:",_1f);
}
return YES;
}
return objj_msgSendSuper({receiver:_1f,super_class:objj_getClass("MMMediaItemCollectionView").super_class},"performKeyEquivalent:",_21);
}
})]);
p;29;Views/MMMediaItemDetailView.jt;14215;@STATIC;1.0;I;20;AppKit/CPImageView.jI;15;AppKit/CPMenu.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.ji;22;../CPDate+Formatting.ji;43;../DataSources/MMPosterMetadataDataSource.ji;41;../DataSources/MMLibraryMediaDataSource.ji;43;../DataSources/MMBannerMetadataDataSource.ji;50;../DataSources/MMBackgroundArtMetadataDataSource.ji;30;../Models/MMLibraryMediaItem.ji;11;HUDButton.ji;11;MMToolbar.jt;13814;
objj_executeFile("AppKit/CPImageView.j",NO);
objj_executeFile("AppKit/CPMenu.j",NO);
objj_executeFile("AppKit/CPTextField.j",NO);
objj_executeFile("AppKit/CPView.j",NO);
objj_executeFile("../CPDate+Formatting.j",YES);
objj_executeFile("../DataSources/MMPosterMetadataDataSource.j",YES);
objj_executeFile("../DataSources/MMLibraryMediaDataSource.j",YES);
objj_executeFile("../DataSources/MMBannerMetadataDataSource.j",YES);
objj_executeFile("../DataSources/MMBackgroundArtMetadataDataSource.j",YES);
objj_executeFile("../Models/MMLibraryMediaItem.j",YES);
objj_executeFile("HUDButton.j",YES);
objj_executeFile("MMToolbar.j",YES);
var _1=CGSizeMake(512,512);
var _2=CGSizeMake(1280,720);
var _3=objj_allocateClassPair(CPView,"MMMediaItemDetailView"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_delegate"),new objj_ivar("_titleField"),new objj_ivar("_yearField"),new objj_ivar("_taglineField"),new objj_ivar("_summaryField"),new objj_ivar("_thumbView"),new objj_ivar("_artView"),new objj_ivar("_title"),new objj_ivar("_year"),new objj_ivar("_tagline"),new objj_ivar("_summary"),new objj_ivar("_thumbImage"),new objj_ivar("_artImage"),new objj_ivar("artOverlay"),new objj_ivar("artOverlayView"),new objj_ivar("_containerView"),new objj_ivar("_childrenCollectionView")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("delegate"),function(_5,_6){
with(_5){
return _delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_7,_8,_9){
with(_7){
_delegate=_9;
}
}),new objj_method(sel_getUid("title"),function(_a,_b){
with(_a){
return _title;
}
}),new objj_method(sel_getUid("setTitle:"),function(_c,_d,_e){
with(_c){
_title=_e;
}
}),new objj_method(sel_getUid("year"),function(_f,_10){
with(_f){
return _year;
}
}),new objj_method(sel_getUid("setYear:"),function(_11,_12,_13){
with(_11){
_year=_13;
}
}),new objj_method(sel_getUid("tagline"),function(_14,_15){
with(_14){
return _tagline;
}
}),new objj_method(sel_getUid("setTagline:"),function(_16,_17,_18){
with(_16){
_tagline=_18;
}
}),new objj_method(sel_getUid("summary"),function(_19,_1a){
with(_19){
return _summary;
}
}),new objj_method(sel_getUid("setSummary:"),function(_1b,_1c,_1d){
with(_1b){
_summary=_1d;
}
}),new objj_method(sel_getUid("thumbImage"),function(_1e,_1f){
with(_1e){
return _thumbImage;
}
}),new objj_method(sel_getUid("setThumbImage:"),function(_20,_21,_22){
with(_20){
_thumbImage=_22;
}
}),new objj_method(sel_getUid("artImage"),function(_23,_24){
with(_23){
return _artImage;
}
}),new objj_method(sel_getUid("setArtImage:"),function(_25,_26,_27){
with(_25){
_artImage=_27;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_28,_29,_2a){
with(_28){
if(_28=objj_msgSendSuper({receiver:_28,super_class:objj_getClass("MMMediaItemDetailView").super_class},"initWithFrame:",_2a)){
var _2b=20,_2c=CGRectMake(0,0,CGRectGetWidth(_2a),CGRectGetHeight(_2a));
objj_msgSend(_28,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",32.5/255,1));
_artView=objj_msgSend(objj_msgSend(MMImageView,"alloc"),"initWithFrame:",_2c);
objj_msgSend(_artView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_artView,"setImageScaling:",CPScaleToFit);
objj_msgSend(_artView,"setSizeConstraint:",_2);
objj_msgSend(_artView,"bind:toObject:withKeyPath:options:","image",_28,"artImage",nil);
objj_msgSend(_artView,"addObserver:forKeyPath:options:context:",_28,"imageRect",CPKeyValueChangeNewKey,nil);
objj_msgSend(_28,"addSubview:",_artView);
artOverlayView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_2c);
objj_msgSend(artOverlayView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_28,"addSubview:",artOverlayView);
if(CPFeatureIsCompatible(CPHTMLCanvasFeature)){
artOverlay=objj_msgSend(CALayer,"layer");
objj_msgSend(artOverlay,"setDelegate:",_28);
objj_msgSend(artOverlayView,"setLayer:",artOverlay);
}else{
objj_msgSend(artOverlayView,"setAlphaValue:",0.6);
objj_msgSend(artOverlayView,"setBackgroundColor:",objj_msgSend(CPColor,"whiteColor"));
}
_containerView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_2a),objj_msgSend(_containerView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_28,"addSubview:",_containerView);
_thumbView=objj_msgSend(objj_msgSend(MMImageView,"alloc"),"initWithFrame:",CGRectMake(_2b,_2b,200,300));
objj_msgSend(_thumbView,"setHasShadow:",YES);
objj_msgSend(_thumbView,"setShadowColor:",objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",51/255,53/255,56/255,1));
objj_msgSend(_thumbView,"setShadowBlurDistance:",40);
objj_msgSend(_thumbView,"setBorderRadius:",7);
objj_msgSend(_thumbView,"setImageScaling:",CPScaleToFit);
objj_msgSend(_thumbView,"setImageAlignment:",CPImageAlignTop);
objj_msgSend(_thumbView,"setPlaceholder:",objj_msgSend(MMLibraryMediaItem,"blankThumbImage"));
objj_msgSend(_thumbView,"setSizeConstraint:",_1);
objj_msgSend(_thumbView,"addObserver:forKeyPath:options:context:",_28,"imageRect",CPKeyValueChangeNewKey,nil);
objj_msgSend(_thumbView,"bind:toObject:withKeyPath:options:","image",_28,"thumbImage",nil);
objj_msgSend(_containerView,"addSubview:",_thumbView);
_titleField=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_titleField,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",32));
objj_msgSend(_titleField,"setStringValue:","Movie Title");
objj_msgSend(_titleField,"setAutoresizingMask:",CPViewMaxXMargin);
objj_msgSend(_titleField,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(_titleField,"sizeToFit");
objj_msgSend(_titleField,"bind:toObject:withKeyPath:options:",CPValueBinding,_28,"title",nil);
objj_msgSend(_titleField,"setFrame:",CGRectMake(CGRectGetWidth(objj_msgSend(_thumbView,"frame"))+_2b*2,CGRectGetMinY(objj_msgSend(_thumbView,"frame")),CGRectGetMaxX(_2c)+_2b-CGRectGetWidth(objj_msgSend(_thumbView,"frame")),CGRectGetHeight(objj_msgSend(_titleField,"frame"))));
objj_msgSend(_containerView,"addSubview:",_titleField);
_yearField=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_yearField,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",24));
objj_msgSend(_yearField,"setStringValue:","(2010)");
objj_msgSend(_yearField,"sizeToFit");
objj_msgSend(_containerView,"addSubview:",_yearField);
_taglineField=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_taglineField,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",16));
objj_msgSend(_taglineField,"setStringValue:","Tagline");
objj_msgSend(_taglineField,"sizeToFit");
objj_msgSend(_taglineField,"bind:toObject:withKeyPath:options:",CPValueBinding,_28,"tagline",nil);
objj_msgSend(_taglineField,"setFrame:",CGRectMake(CGRectGetMinX(objj_msgSend(_titleField,"frame")),CGRectGetMaxY(objj_msgSend(_titleField,"frame")),CGRectGetMaxX(_2c)-_2b-CGRectGetMinX(objj_msgSend(_titleField,"frame")),CGRectGetHeight(objj_msgSend(_taglineField,"frame"))));
objj_msgSend(_taglineField,"setAutoresizingMask:",CPViewMaxXMargin);
objj_msgSend(_taglineField,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(_containerView,"addSubview:",_taglineField);
_summaryField=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(CGRectGetMinX(objj_msgSend(_taglineField,"frame")),CGRectGetMaxY(objj_msgSend(_taglineField,"frame")),CGRectGetMaxX(_2c)-_2b-CGRectGetMinX(objj_msgSend(_taglineField,"frame")),CGRectGetMaxY(_2c)-_2b-CGRectGetMaxY(objj_msgSend(_taglineField,"frame"))));
objj_msgSend(_summaryField,"bind:toObject:withKeyPath:options:",CPValueBinding,_28,"summary",nil);
objj_msgSend(_summaryField,"setLineBreakMode:",CPLineBreakByWordWrapping);
objj_msgSend(_summaryField,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_containerView,"addSubview:",_summaryField);
var _2d=205;
_childrenCollectionView=objj_msgSend(objj_msgSend(MMCollectionView,"alloc"),"initWithFrame:",CGRectMake(0,CGRectGetHeight(objj_msgSend(_28,"frame"))-_2d,CGRectGetWidth(objj_msgSend(_28,"frame")),_2d));
objj_msgSend(_childrenCollectionView,"setAutoresizingMask:",CPViewWidthSizable|CPViewMinYMargin);
objj_msgSend(_childrenCollectionView,"setDelegate:",_28);
objj_msgSend(_containerView,"addSubview:",_childrenCollectionView);
}
return _28;
}
}),new objj_method(sel_getUid("setTitle:"),function(_2e,_2f,_30){
with(_2e){
if(_title===_30){
return;
}
_title=_30;
objj_msgSend(_2e,"setNeedsLayout");
}
}),new objj_method(sel_getUid("setYear:"),function(_31,_32,_33){
with(_31){
if(_year===_33){
return;
}
_year=_33;
objj_msgSend(_yearField,"setStringValue:",_33?objj_msgSend(CPString,"stringWithFormat:","(%@)",_33):nil);
objj_msgSend(_31,"setNeedsLayout");
}
}),new objj_method(sel_getUid("setThumbImage:"),function(_34,_35,_36){
with(_34){
if(objj_msgSend(_thumbImage,"filename")===objj_msgSend(_36,"filename")){
return;
}
_thumbImage=_36;
objj_msgSend(_34,"setNeedsLayout");
}
}),new objj_method(sel_getUid("setArtImage:"),function(_37,_38,_39){
with(_37){
if(objj_msgSend(_artImage,"filename")===objj_msgSend(_39,"filename")){
return;
}
_artImage=_39;
objj_msgSend(_37,"setNeedsLayout");
}
}),new objj_method(sel_getUid("contentHidden"),function(_3a,_3b){
with(_3a){
return objj_msgSend(_containerView,"isHidden");
}
}),new objj_method(sel_getUid("setContentHidden:"),function(_3c,_3d,_3e){
with(_3c){
objj_msgSend(_containerView,"setHidden:",_3e);
}
}),new objj_method(sel_getUid("backgroundHidden"),function(_3f,_40){
with(_3f){
return objj_msgSend(artOverlayView,"isHidden");
}
}),new objj_method(sel_getUid("setBackgroundHidden:"),function(_41,_42,_43){
with(_41){
objj_msgSend(artOverlayView,"setHidden:",_43);
}
}),new objj_method(sel_getUid("drawLayer:inContext:"),function(_44,_45,_46,_47){
with(_44){
if(objj_msgSend(_44,"backgroundHidden")){
return;
}
var _48=5,_49=objj_msgSend(_44,"bounds");
CGContextBeginPath(_47);
CGContextSetFillColor(_47,objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",1,0.6));
CGContextMoveToPoint(_47,CGRectGetMinX(_49),CGRectGetMinY(_49));
CGContextAddLineToPoint(_47,CGRectGetMaxX(_49),CGRectGetMinY(_49));
CGContextAddLineToPoint(_47,CGRectGetMaxX(_49),CGRectGetMaxY(_49));
CGContextAddLineToPoint(_47,CGRectGetMinX(_49),CGRectGetMaxY(_49));
CGContextAddLineToPoint(_47,CGRectGetMinX(_49),CGRectGetMinY(_49));
CGContextClosePath(_47);
CGContextFillPath(_47);
var _4a;
var _4b;
var _4c=2;
var _4d=[0,0.5];
var _4e=[237/255,237/255,237/255,0,237/255,237/255,237/255,1];
_4b=CGColorSpaceCreateDeviceRGB();
_4a=CGGradientCreateWithColorComponents(_4b,_4e,_4d,_4c);
var _4f=CGPointMake(0,CGRectGetMidY(_49)),_50=CGPointMake(1,CGRectGetMaxY(_49));
CGContextClip(_47);
CGContextDrawLinearGradient(_47,_4a,_4f,_50,0);
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_51,_52){
with(_51){
objj_msgSend(_51,"layoutArtView");
objj_msgSend(_51,"layoutThumbView");
objj_msgSend(_51,"refreshView");
objj_msgSendSuper({receiver:_51,super_class:objj_getClass("MMMediaItemDetailView").super_class},"layoutSubviews");
}
}),new objj_method(sel_getUid("layoutArtView"),function(_53,_54){
with(_53){
if(!objj_msgSend(_artView,"image")){
return;
}
var _55=objj_msgSend(objj_msgSend(_artView,"image"),"size"),_56=objj_msgSend(_53,"bounds"),_57=CGRectGetWidth(_56),_58=CGRectGetHeight(_56);
if(!_55||(_55.width==-1&&_55.height==-1)){
return;
}
var _59=_55.width/_55.height,_5a=_57/_58;
if(_5a>_59){
var _5b=ROUND(_55.height*_57/_55.width),_5c=_5b-_58;
objj_msgSend(_artView,"setFrame:",CGRectMake(0,-ROUND(_5c/2),_57,_5b));
}else{
var _5d=ROUND(_55.width*_58/_55.height),_5e=_5d-_57;
objj_msgSend(_artView,"setFrame:",CGRectMake(-ROUND(_5e/2),0,_5d,_58));
}
}
}),new objj_method(sel_getUid("layoutThumbView"),function(_5f,_60){
with(_5f){
if(!_thumbImage){
return;
}
var _61=objj_msgSend(objj_msgSend(_thumbView,"image"),"size"),_62=CGRectGetWidth(objj_msgSend(_thumbView,"bounds")),_63=_61.height*_62/_61.width;
if(CGSizeEqualToSize(_61,CPImageUnspecifiedSize)){
return;
}
objj_msgSend(_thumbView,"setFrameSize:",CGSizeMake(_62,_63));
}
}),new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"),function(_64,_65,_66,_67,_68,_69){
with(_64){
if(_66=="imageRect"&&_67==_thumbView){
objj_msgSend(_64,"setNeedsLayout");
}else{
if(_66=="imageRect"&&_67==_artView){
objj_msgSend(_64,"layoutArtView");
}
}
}
}),new objj_method(sel_getUid("setChildItemPrototype:"),function(_6a,_6b,_6c){
with(_6a){
objj_msgSend(_childrenCollectionView,"setItemPrototype:",_6c);
if(_6c){
objj_msgSend(_childrenCollectionView,"setMinItemSize:",objj_msgSend(objj_msgSend(_6c,"view"),"frame").size);
objj_msgSend(_childrenCollectionView,"setMaxItemSize:",objj_msgSend(objj_msgSend(_6c,"view"),"frame").size);
}
}
}),new objj_method(sel_getUid("setChildrenController:"),function(_6d,_6e,_6f){
with(_6d){
if(_6f){
objj_msgSend(_childrenCollectionView,"bind:toObject:withKeyPath:options:","content",_6f,"arrangedObjects",nil);
}else{
objj_msgSend(_childrenCollectionView,"unbind:","content");
}
}
}),new objj_method(sel_getUid("refreshView"),function(_70,_71){
with(_70){
objj_msgSend(_titleField,"sizeToFit");
if(_year){
objj_msgSend(_yearField,"sizeToFit");
objj_msgSend(_yearField,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(_titleField,"frame"))+5,CGRectGetMidY(objj_msgSend(_titleField,"frame"))-CGRectGetHeight(objj_msgSend(_yearField,"frame"))/2));
objj_msgSend(_yearField,"setHidden:",NO);
}else{
objj_msgSend(_yearField,"setHidden:",YES);
}
}
}),new objj_method(sel_getUid("collectionView:didDoubleClickOnItemAtIndex:"),function(_72,_73,_74,_75){
with(_72){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("mediaItemDetailView:didSelectChild:"))){
objj_msgSend(_delegate,"mediaItemDetailView:didSelectChild:",_72,objj_msgSend(objj_msgSend(_74,"content"),"objectAtIndex:",_75));
}
}
})]);
p;28;Views/MMMediaTypeTableCell.jt;2999;@STATIC;1.0;I;20;AppKit/CPTableView.jI;20;AppKit/CPTextField.ji;13;MMImageView.jt;2912;
objj_executeFile("AppKit/CPTableView.j",NO);
objj_executeFile("AppKit/CPTextField.j",NO);
objj_executeFile("MMImageView.j",YES);
var _1=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","SourceIconMovies.png"),CGSizeMake(16,16));
var _2=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","SourceIconTVShows.png"),CGSizeMake(16,16));
var _3=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","SourceIconMusic.png"),CGSizeMake(16,16));
var _4="MMMediaTypeTableCellRefreshingViewKey";
var _5=objj_allocateClassPair(CPControl,"MMMediaTypeTableCell"),_6=_5.isa;
class_addIvars(_5,[new objj_ivar("_typeIcon")]);
objj_registerClassPair(_5);
class_addMethods(_5,[new objj_method(sel_getUid("initWithFrame:"),function(_7,_8,_9){
with(_7){
if(_7=objj_msgSendSuper({receiver:_7,super_class:objj_getClass("MMMediaTypeTableCell").super_class},"initWithFrame:",_9)){
_typeIcon=objj_msgSend(objj_msgSend(MMImageView,"alloc"),"initWithFrame:",CGRectMake(0,0,objj_msgSend(_1,"size").width,objj_msgSend(_1,"size").height));
objj_msgSend(_7,"addSubview:",_typeIcon);
}
return _7;
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_a,_b){
with(_a){
objj_msgSend(_typeIcon,"setFrameOrigin:",CGPointMake(CGRectGetWidth(objj_msgSend(_a,"frame"))-CGRectGetWidth(objj_msgSend(_typeIcon,"frame")),(CGRectGetHeight(objj_msgSend(_a,"frame"))-CGRectGetHeight(objj_msgSend(_typeIcon,"frame")))/2));
}
}),new objj_method(sel_getUid("drawRect:"),function(_c,_d,_e){
with(_c){
objj_msgSendSuper({receiver:_c,super_class:objj_getClass("MMMediaTypeTableCell").super_class},"drawRect:",_e);
switch(objj_msgSend(_c,"objectValue")){
case MMLibraryMediaItemTypeMovie:
objj_msgSend(_typeIcon,"setImage:",_1);
break;
case MMLibraryMediaItemTypeShow:
objj_msgSend(_typeIcon,"setImage:",_2);
break;
case MMLibraryMediaItemTypeArtist:
objj_msgSend(_typeIcon,"setImage:",_3);
break;
default:
objj_msgSend(_typeIcon,"setImage:",nil);
break;
}
}
})]);
var _5=objj_getClass("MMMediaTypeTableCell");
if(!_5){
throw new SyntaxError("*** Could not find definition for class \"MMMediaTypeTableCell\"");
}
var _6=_5.isa;
class_addMethods(_5,[new objj_method(sel_getUid("encodeWithCoder:"),function(_f,_10,_11){
with(_f){
objj_msgSendSuper({receiver:_f,super_class:objj_getClass("MMMediaTypeTableCell").super_class},"encodeWithCoder:",_11);
objj_msgSend(_11,"encodeObject:forKey:",_typeIcon,_4);
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_12,_13,_14){
with(_12){
if(_12=objj_msgSendSuper({receiver:_12,super_class:objj_getClass("MMMediaTypeTableCell").super_class},"initWithCoder:",_14)){
_typeIcon=objj_msgSend(_14,"decodeObjectForKey:",_4);
}
return _12;
}
})]);
p;26;Views/MMPreferencesPanel.jt;16669;@STATIC;1.0;I;26;AppKit/CPKeyValueBinding.jI;20;AppKit/CPResponder.jI;15;AppKit/CPView.ji;42;../Frameworks/LPKit/LPMultiLineTextField.ji;34;../Controllers/MMPrefsController.ji;18;../Models/MMPref.jt;16464;
objj_executeFile("AppKit/CPKeyValueBinding.j",NO);
objj_executeFile("AppKit/CPResponder.j",NO);
objj_executeFile("AppKit/CPView.j",NO);
objj_executeFile("../Frameworks/LPKit/LPMultiLineTextField.j",YES);
objj_executeFile("../Controllers/MMPrefsController.j",YES);
objj_executeFile("../Models/MMPref.j",YES);
var _1=nil;
var _2=objj_allocateClassPair(CPView,"MMPreferencesPanel"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_sheetPanel"),new objj_ivar("_initialFirstResponder"),new objj_ivar("_minHeight"),new objj_ivar("_sectionViewsByIdentifier"),new objj_ivar("_selectedView")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithFrame:"),function(_4,_5,_6){
with(_4){
if(_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("MMPreferencesPanel").super_class},"initWithFrame:",_6)){
var _7=objj_msgSend(objj_msgSend(CPToolbar,"alloc"),"init");
objj_msgSend(_7,"setDelegate:",_4);
objj_msgSend(_7,"setDisplayMode:",CPToolbarDisplayModeIconAndLabel);
var _8=objj_msgSend(_7,"_toolbarView");
objj_msgSend(_8,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_4,"frame")),CGRectGetHeight(objj_msgSend(_8,"frame"))));
objj_msgSend(_4,"addSubview:",_8);
var _9=objj_msgSend(objj_msgSend(CPBox,"alloc"),"initWithFrame:",CGRectMake(0,CGRectGetMaxY(objj_msgSend(_8,"frame")),CGRectGetWidth(objj_msgSend(_4,"frame")),1));
objj_msgSend(_9,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_4,"addSubview:",_9);
var _a=objj_msgSend(_4,"valueForThemeAttribute:","content-inset"),_b=CGRectOffset(CGRectInset(objj_msgSend(_4,"bounds"),_a.left,_a.top),0,CGRectGetHeight(objj_msgSend(_8,"frame")));
_sectionViewsByIdentifier=objj_msgSend(CPDictionary,"dictionary");
var _c=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_b);
objj_msgSend(_4,"addSubview:positioned:relativeTo:",_c,CPWindowBelow,_8);
objj_msgSend(_sectionViewsByIdentifier,"setObject:forKey:",_c,"General");
var _d=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Friendly name:","Friendly name label")),_e=objj_msgSend(CPTextField,"textFieldWithStringValue:placeholder:width:","","",CGRectGetWidth(objj_msgSend(_c,"frame"))-CGRectGetWidth(objj_msgSend(_d,"frame"))),_f=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("This name will be used to identify this media server to other computers "+"on your network. If you leave it blank, your computer's "+"name will be used instead.","Summary info for friendly name"));
_initialFirstResponder=_e;
objj_msgSend(_e,"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.FriendlyName",nil);
objj_msgSend(_e,"setFrameOrigin:",CGPointMake(CGRectGetWidth(objj_msgSend(_d,"frame")),0));
objj_msgSend(_d,"setFrameOrigin:",CGPointMake(0,(CGRectGetHeight(objj_msgSend(_e,"frame"))-CGRectGetHeight(objj_msgSend(_d,"frame")))/2));
objj_msgSend(_f,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_e,"frame")),CGRectGetMaxY(objj_msgSend(_e,"frame"))));
var _10=objj_msgSend(CPPlatformString,"sizeOfString:withFont:forWidth:",objj_msgSend(_f,"stringValue"),objj_msgSend(_f,"font"),CGRectGetWidth(objj_msgSend(_e,"frame")));
objj_msgSend(_f,"setFrameSize:",_10);
objj_msgSend(_f,"setLineBreakMode:",CPLineBreakByWordWrapping);
objj_msgSend(_f,"setAutoresizingMask:",CPViewMaxXMargin);
objj_msgSend(_f,"sizeToFit");
objj_msgSend(_c,"addSubview:",_e);
objj_msgSend(_c,"addSubview:",_d);
objj_msgSend(_c,"addSubview:",_f);
var _11=objj_msgSend(objj_msgSend(CPBox,"alloc"),"initWithFrame:",CGRectMake(0,CGRectGetMaxY(objj_msgSend(_f,"frame"))+10,CGRectGetWidth(objj_msgSend(_c,"frame")),5));
objj_msgSend(_11,"setBorderColor:",objj_msgSend(CPColor,"colorWithWhite:alpha:",137/255,1));
objj_msgSend(_11,"setBoxType:",CPBoxSeparator);
objj_msgSend(_c,"addSubview:",_11);
var _12=objj_msgSend(CPCheckBox,"checkBoxWithTitle:",CPLocalizedString("Send anonymous usage data to Plex","Send anonymous usage data to Plex"));
objj_msgSend(_12,"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.collectUsageData",nil);
objj_msgSend(_12,"sizeToFit");
objj_msgSend(_12,"setFrameOrigin:",CGPointMake(0,CGRectGetMaxY(objj_msgSend(_11,"frame"))+10));
objj_msgSend(_c,"addSubview:",_12);
var _13=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("This helps us improve your experience (for example, to help us match movies and TV shows).","Summary info for collecting usage data"));
objj_msgSend(_13,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",11));
objj_msgSend(_13,"setFrameOrigin:",CGPointMake(17,CGRectGetMaxY(objj_msgSend(_12,"frame"))));
var _14=objj_msgSend(CPPlatformString,"sizeOfString:withFont:forWidth:",objj_msgSend(_13,"stringValue"),objj_msgSend(_13,"font"),CGRectGetWidth(objj_msgSend(_c,"frame"))-17);
objj_msgSend(_13,"setFrameSize:",_14);
objj_msgSend(_13,"setLineBreakMode:",CPLineBreakByWordWrapping);
objj_msgSend(_13,"setAutoresizingMask:",CPViewMaxXMargin);
objj_msgSend(_13,"sizeToFit");
objj_msgSend(_c,"addSubview:",_13);
objj_msgSend(_c,"sizeToFit");
var _15=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_b);
objj_msgSend(_4,"addSubview:positioned:relativeTo:",_15,CPWindowBelow,_8);
objj_msgSend(_sectionViewsByIdentifier,"setObject:forKey:",_15,"Library");
var _16=objj_msgSend(CPCheckBox,"checkBoxWithTitle:",CPLocalizedString("Update my library when changes to my folders are detected","Preference window setting"));
objj_msgSend(_16,"sizeToFit");
objj_msgSend(_16,"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.FSEventLibraryUpdatesEnabled",nil);
objj_msgSend(_15,"addSubview:",_16);
var _17=objj_msgSend(CPCheckBox,"checkBoxWithTitle:",CPLocalizedString("Update my library","Preference window setting - will have frequencies after it e.g. Update my library every two hours"));
objj_msgSend(_17,"sizeToFit");
objj_msgSend(_17,"setFrameOrigin:",CGPointMake(0,CGRectGetMaxY(objj_msgSend(_16,"frame"))+10));
objj_msgSend(_17,"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.ScheduledLibraryUpdatesEnabled",nil);
objj_msgSend(_15,"addSubview:",_17);
var _18=objj_msgSend(CPPopUpButton,"buttonWithTitle:",nil),_19=objj_msgSend(_4,"_periodTitles"),_1a=objj_msgSend(_4,"_periodValues");
for(var i=0,_1b=objj_msgSend(_19,"count");i<_1b;i++){
var _1c=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",_19[i],nil,nil);
objj_msgSend(_1c,"setTag:",_1a[i]);
objj_msgSend(_18,"addItem:",_1c);
}
objj_msgSend(_18,"sizeToFit");
objj_msgSend(_18,"setFrame:",CGRectMake(CGRectGetMaxX(objj_msgSend(_17,"frame"))+5,CGRectGetMinY(objj_msgSend(_17,"frame"))+(CGRectGetHeight(objj_msgSend(_17,"frame"))-CGRectGetHeight(objj_msgSend(_18,"frame")))/2,140,CGRectGetHeight(objj_msgSend(_18,"frame"))));
objj_msgSend(_18,"bind:toObject:withKeyPath:options:","enabled",objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.ScheduledLibraryUpdatesEnabled",nil);
objj_msgSend(_18,"bind:toObject:withKeyPath:options:","selectedTag",objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.ScheduledLibraryUpdateInterval",nil);
objj_msgSend(_15,"addSubview:",_18);
var _1d=objj_msgSend(CPCheckBox,"checkBoxWithTitle:",CPLocalizedString("Include music sections in automatic updates","Preference window setting"));
objj_msgSend(_1d,"sizeToFit");
objj_msgSend(_1d,"setFrameOrigin:",CGPointMake(0,CGRectGetMaxY(objj_msgSend(_17,"frame"))+10));
objj_msgSend(_1d,"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.autoScanMusicSections",nil);
objj_msgSend(_15,"addSubview:",_1d);
var _1e=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Large music sections may take a long time to scan","Preference window setting"));
objj_msgSend(_1e,"setFrameOrigin:",CGPointMake(17,CGRectGetMaxY(objj_msgSend(_1d,"frame"))));
objj_msgSend(_15,"addSubview:",_1e);
objj_msgSend(_15,"sizeToFit");
if(OPERATING_SYSTEM==CPMacOperatingSystem){
var _1f=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_b);
objj_msgSend(_4,"addSubview:positioned:relativeTo:",_1f,CPWindowBelow,_8);
objj_msgSend(_sectionViewsByIdentifier,"setObject:forKey:",_1f,"Sharing");
var _20=objj_msgSend(CPCheckBox,"checkBoxWithTitle:",CPLocalizedString("iTunes Sharing Enabled","Preference window setting"));
objj_msgSend(_20,"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.iTunesSharingEnabled",nil);
objj_msgSend(_1f,"addSubview:",_20);
var _21=objj_msgSend(CPCheckBox,"checkBoxWithTitle:",CPLocalizedString("iPhoto Sharing Enabled","Preference window setting"));
objj_msgSend(_21,"setFrameOrigin:",CGPointMake(0,CGRectGetMaxY(objj_msgSend(_20,"frame"))+10));
objj_msgSend(_21,"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.iPhotoSharingEnabled",nil);
objj_msgSend(_1f,"addSubview:",_21);
var _22=objj_msgSend(CPCheckBox,"checkBoxWithTitle:",CPLocalizedString("Aperture Sharing Enabled","Preference window setting"));
objj_msgSend(_22,"setFrameOrigin:",CGPointMake(0,CGRectGetMaxY(objj_msgSend(_21,"frame"))+10));
objj_msgSend(_22,"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.ApertureSharingEnabled",nil);
objj_msgSend(_1f,"addSubview:",_22);
objj_msgSend(_1f,"sizeToFit");
}
var _23=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_b);
objj_msgSend(_4,"addSubview:positioned:relativeTo:",_23,CPWindowBelow,_8);
objj_msgSend(_sectionViewsByIdentifier,"setObject:forKey:",_23,"Transcoding");
var _24=objj_msgSend(CPCheckBox,"checkBoxWithTitle:",CPLocalizedString("Offer higher bitrates over 3G connections","Preference window setting"));
objj_msgSend(_24,"sizeToFit");
objj_msgSend(_24,"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.higherBitrate3G",nil);
objj_msgSend(_23,"addSubview:",_24);
objj_msgSend(_23,"sizeToFit");
var _25=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_b);
objj_msgSend(_4,"addSubview:positioned:relativeTo:",_25,CPWindowBelow,_8);
objj_msgSend(_sectionViewsByIdentifier,"setObject:forKey:",_25,"Advanced");
var _26=objj_msgSend(CPCheckBox,"checkBoxWithTitle:","Disable capability checking");
objj_msgSend(_26,"sizeToFit");
objj_msgSend(_26,"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.disableCapabilityChecking",nil);
objj_msgSend(_25,"addSubview:",_26);
var _27=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Capability checking ensures that plug-ins that are incompatible with this version of the server or the current client application you are using are hidden. Disabling capability checking is useful during development, but will enable access to plug-ins that may perform unreliably with certain client applications.","Preference window setting detail"));
var _28=objj_msgSend(objj_msgSend(_27,"stringValue"),"sizeWithFont:inWidth:",objj_msgSend(_27,"font"),CGRectGetWidth(objj_msgSend(_25,"frame"))-CGRectGetMinX(objj_msgSend(_27,"frame")));
_28.height+=5;
objj_msgSend(_27,"setLineBreakMode:",CPLineBreakByWordWrapping);
objj_msgSend(_27,"setFrameOrigin:",CGPointMake(17,CGRectGetMaxY(objj_msgSend(_26,"frame"))));
objj_msgSend(_27,"setFrameSize:",_28);
objj_msgSend(_25,"addSubview:",_27);
objj_msgSend(_25,"sizeToFit");
var _29=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Done","Done"));
objj_msgSend(_29,"setKeyEquivalent:",CPEscapeFunctionKey);
objj_msgSend(_29,"setFrameOrigin:",CGPointMake(CGRectGetWidth(objj_msgSend(_4,"frame"))-_a.right-CGRectGetWidth(objj_msgSend(_29,"frame")),CGRectGetHeight(objj_msgSend(_4,"frame"))-_a.bottom-CGRectGetHeight(objj_msgSend(_29,"frame"))));
objj_msgSend(_29,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin);
objj_msgSend(_29,"setTarget:",_4);
objj_msgSend(_29,"setAction:",sel_getUid("dismissSheet"));
objj_msgSend(_4,"addSubview:",_29);
objj_msgSend(_4,"selectViewForIdentifier:","General");
}
return _4;
}
}),new objj_method(sel_getUid("_periodTitles"),function(_2a,_2b){
with(_2a){
return [CPLocalizedString("every 15 minutes","Library scan interval (i.e. Update my library every 15 minutes)"),CPLocalizedString("every 30 minutes","Library scan interval (i.e. Update my library every 30 minutes)"),CPLocalizedString("hourly","Library scan interval (i.e. Update my library hourly)"),CPLocalizedString("every 2 hours","Library scan interval (i.e. Update my library every 2 hours)"),CPLocalizedString("every 6 hours","Library scan interval (i.e. Update my library every 6 hours)"),CPLocalizedString("every 12 hours","Library scan interval (i.e. Update my library every 12 hours)"),CPLocalizedString("daily","Library scan interval (i.e. Update my library daily")];
}
}),new objj_method(sel_getUid("_periodValues"),function(_2c,_2d){
with(_2c){
return [15*60,30*60,60*60,2*60*60,6*60*60,12*60*60,24*60*60];
}
}),new objj_method(sel_getUid("presentSheetInWindow:"),function(_2e,_2f,_30){
with(_2e){
if(_sheetPanel){
return;
}
_sheetPanel=objj_msgSend(objj_msgSend(CPPanel,"alloc"),"initWithContentRect:styleMask:",objj_msgSend(_2e,"bounds"),CPDocModalWindowMask);
objj_msgSend(_sheetPanel,"setInitialFirstResponder:",_initialFirstResponder);
objj_msgSend(_sheetPanel,"setContentView:",_2e);
objj_msgSend(CPApp,"beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:",_sheetPanel,_30,nil,nil,nil);
}
}),new objj_method(sel_getUid("dismissSheet"),function(_31,_32){
with(_31){
if(!_sheetPanel){
return;
}
objj_msgSend(CPApp,"endSheet:returnCode:",_sheetPanel,0),_sheetPanel=nil;
}
}),new objj_method(sel_getUid("toolbarDefaultItemIdentifiers:"),function(_33,_34,_35){
with(_33){
var _36=["General","Library","Transcoding","Advanced"];
if(OPERATING_SYSTEM==CPMacOperatingSystem){
objj_msgSend(_36,"insertObject:atIndex:","Sharing",2);
}
return _36;
}
}),new objj_method(sel_getUid("toolbar:itemForItemIdentifier:willBeInsertedIntoToolbar:"),function(_37,_38,_39,_3a,_3b){
with(_37){
var _3c=objj_msgSend(objj_msgSend(CPToolbarItem,"alloc"),"initWithItemIdentifier:",_3a);
objj_msgSend(_3c,"setImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initByReferencingFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:",_3a+".png"),CGSizeMake(32,32)));
objj_msgSend(_3c,"setLabel:",objj_msgSend(_37,"localizedSectionNameForToolbar:itemIdentifier:",_39,_3a));
objj_msgSend(_3c,"setAction:",sel_getUid("toolbarItemWasSelected:"));
objj_msgSend(_3c,"setTarget:",_37);
return _3c;
}
}),new objj_method(sel_getUid("toolbarItemWasSelected:"),function(_3d,_3e,_3f){
with(_3d){
objj_msgSend(_3d,"selectViewForIdentifier:",objj_msgSend(_3f,"itemIdentifier"));
}
}),new objj_method(sel_getUid("selectViewForIdentifier:"),function(_40,_41,_42){
with(_40){
var _43=objj_msgSend(_sectionViewsByIdentifier,"objectForKey:",_42);
if(_selectedView){
objj_msgSend(_40,"transitionFromSubview:toSubview:",_selectedView,_43);
}else{
objj_msgSend(_40,"willTransitionFromSubview:toSubview:",nil,_43);
objj_msgSend(_40,"didTransitionFromSubview:toSubview:",nil,_43);
}
}
}),new objj_method(sel_getUid("didTransitionFromSubview:toSubview:"),function(_44,_45,_46,_47){
with(_44){
var _48=objj_msgSend(_sectionViewsByIdentifier,"objectEnumerator"),_49=null;
while(_49=objj_msgSend(_48,"nextObject")){
objj_msgSend(_49,"setHidden:",YES);
}
objj_msgSend(_47,"setHidden:",NO);
_selectedView=_47;
}
}),new objj_method(sel_getUid("localizedSectionNameForToolbar:itemIdentifier:"),function(_4a,_4b,_4c,_4d){
with(_4a){
if(!_1){
var _4e=[CPLocalizedString("General","General"),CPLocalizedString("Library","Library"),CPLocalizedString("Transcoding","Transcoding"),CPLocalizedString("Advanced","Advanced")];
if(OPERATING_SYSTEM==CPMacOperatingSystem){
objj_msgSend(_4e,"insertObject:atIndex:",CPLocalizedString("Sharing","Sharing"),2);
}
_1=objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",_4e,objj_msgSend(_4a,"toolbarDefaultItemIdentifiers:",_4c));
}
return objj_msgSend(_1,"objectForKey:",_4d);
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("themeAttributes"),function(_4f,_50){
with(_4f){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[CGInsetMake(15,15,15,15)],["content-inset"]);
}
})]);
p;22;Views/MMScrollButton.jt;4156;@STATIC;1.0;I;18;AppKit/CPControl.jt;4114;
objj_executeFile("AppKit/CPControl.j",NO);
MMScrollButtonDirectionLeft="MMScrollButtonDirectionLeft";
MMScrollButtonDirectionRight="MMScrollButtonDirectionRight";
var _1=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","scrollLeft.png"));
var _2=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","scrollRight.png"));
var _3=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","scrollLeftBackground.png")));
var _4=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","scrollRightBackground.png")));
var _5=objj_allocateClassPair(CPControl,"MMScrollButton"),_6=_5.isa;
class_addIvars(_5,[new objj_ivar("_direction"),new objj_ivar("_arrow")]);
objj_registerClassPair(_5);
class_addMethods(_5,[new objj_method(sel_getUid("direction"),function(_7,_8){
with(_7){
return _direction;
}
}),new objj_method(sel_getUid("setDirection:"),function(_9,_a,_b){
with(_9){
_direction=_b;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_c,_d,_e){
with(_c){
if(_c=objj_msgSendSuper({receiver:_c,super_class:objj_getClass("MMScrollButton").super_class},"initWithFrame:",_e)){
_arrow=objj_msgSend(objj_msgSend(MMImageView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_c,"addSubview:",_arrow);
}
return _c;
}
}),new objj_method(sel_getUid("setDirection:"),function(_f,_10,_11){
with(_f){
if(_direction==_11){
return;
}
switch(_11){
case MMScrollButtonDirectionLeft:
objj_msgSend(_f,"setBackgroundColor:",_3);
objj_msgSend(_arrow,"setImage:",_1);
break;
case MMScrollButtonDirectionRight:
objj_msgSend(_f,"setBackgroundColor:",_4);
objj_msgSend(_arrow,"setImage:",_2);
break;
default:
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(CPString,"stringWithFormat:","direction must be one of the MMScrollButtonDirection values, got %@",_11));
break;
}
_direction=_11;
objj_msgSend(_f,"setNeedsLayout");
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_12,_13){
with(_12){
objj_msgSendSuper({receiver:_12,super_class:objj_getClass("MMScrollButton").super_class},"layoutSubviews");
var _14=CGSizeMake(23,35);
switch(_direction){
case MMScrollButtonDirectionLeft:
objj_msgSend(_arrow,"setFrame:",CGRectMake(15,(CGRectGetHeight(objj_msgSend(_12,"frame"))-_14.height)/2,_14.width,_14.height));
break;
case MMScrollButtonDirectionRight:
objj_msgSend(_arrow,"setFrame:",CGRectMake(CGRectGetWidth(objj_msgSend(_12,"frame"))-15-_14.width,(CGRectGetHeight(objj_msgSend(_12,"frame"))-_14.height)/2,_14.width,_14.height));
break;
}
}
}),new objj_method(sel_getUid("hitTest:"),function(_15,_16,_17){
with(_15){
var _18=objj_msgSendSuper({receiver:_15,super_class:objj_getClass("MMScrollButton").super_class},"hitTest:",_17);
if(_18!=_15){
return _18;
}
var _19=objj_msgSend(_15,"convertPoint:fromView:",_17,nil);
switch(_direction){
case MMScrollButtonDirectionLeft:
return (_19.x>CGRectGetMaxX(objj_msgSend(_arrow,"frame")))?nil:_15;
case MMScrollButtonDirectionRight:
return (_19.x<CGRectGetMinX(objj_msgSend(_arrow,"frame")))?nil:_15;
}
return _15;
}
})]);
class_addMethods(_6,[new objj_method(sel_getUid("leftScrollButton"),function(_1a,_1b){
with(_1a){
var _1c=objj_msgSend(objj_msgSend(_1a,"alloc"),"initWithFrame:",CGRectMake(0,0,objj_msgSend(objj_msgSend(_3,"patternImage"),"size").width,objj_msgSend(_1,"size").height*2));
objj_msgSend(_1c,"setDirection:",MMScrollButtonDirectionLeft);
return _1c;
}
}),new objj_method(sel_getUid("rightScrollButton"),function(_1d,_1e){
with(_1d){
var _1f=objj_msgSend(objj_msgSend(_1d,"alloc"),"initWithFrame:",CGRectMake(0,0,objj_msgSend(objj_msgSend(_4,"patternImage"),"size").width,objj_msgSend(_2,"size").height*2));
objj_msgSend(_1f,"setDirection:",MMScrollButtonDirectionRight);
return _1f;
}
})]);
p;20;Views/MMScrollView.jt;1374;@STATIC;1.0;I;21;AppKit/CPScrollView.ji;12;MMClipView.jt;1312;
objj_executeFile("AppKit/CPScrollView.j",NO);
objj_executeFile("MMClipView.j",YES);
var _1=objj_allocateClassPair(CPScrollView,"MMScrollView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_lastClipViewScrollPoint")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("scrollPoint"),function(_3,_4){
with(_3){
return _lastClipViewScrollPoint;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_5,_6,_7){
with(_5){
if(_5=objj_msgSendSuper({receiver:_5,super_class:objj_getClass("MMScrollView").super_class},"initWithFrame:",_7)){
objj_msgSend(_5,"setContentView:",objj_msgSend(objj_msgSend(MMClipView,"alloc"),"init"));
objj_msgSend(objj_msgSend(_5,"contentView"),"setDelegate:",_5);
objj_msgSend(_5,"setAutohidesScrollers:",YES);
}
return _5;
}
}),new objj_method(sel_getUid("clipView:didScrollToPoint:"),function(_8,_9,_a,_b){
with(_8){
if(_lastClipViewScrollPoint&&CGPointEqualToPoint(_lastClipViewScrollPoint,_b)){
return;
}
objj_msgSend(_8,"willChangeValueForKey:","scrollPoint");
_lastClipViewScrollPoint=_b;
objj_msgSend(_8,"didChangeValueForKey:","scrollPoint");
if(objj_msgSend(objj_msgSend(_8,"documentView"),"respondsToSelector:",sel_getUid("clipView:didScrollToPoint:"))){
objj_msgSend(objj_msgSend(_8,"documentView"),"clipView:didScrollToPoint:",_a,_b);
}
}
})]);
p;20;Views/MMSeasonCell.jt;1811;@STATIC;1.0;i;26;MMCollectionViewItemCell.jt;1761;
objj_executeFile("MMCollectionViewItemCell.j",YES);
var _1=CGSizeMake(128,128);
var _2=objj_allocateClassPair(MMCollectionViewItemCell,"MMSeasonCell"),_3=_2.isa;
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("loadView"),function(_4,_5){
with(_4){
objj_msgSendSuper({receiver:_4,super_class:objj_getClass("MMSeasonCell").super_class},"loadView");
_thumbSize=_1;
_thumbMargin=5;
_allowsSelection=NO;
objj_msgSend(_4,"bind:toObject:withKeyPath:options:","image",_4,"representedObject.thumbImage",nil);
objj_msgSend(objj_msgSend(_4,"titleLabel"),"bind:toObject:withKeyPath:options:",CPValueBinding,_4,"representedObject.displayTitle",nil);
objj_msgSend(objj_msgSend(_4,"titleLabel"),"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",14));
objj_msgSend(objj_msgSend(_4,"subtitleLabel"),"bind:toObject:withKeyPath:options:",CPValueBinding,_4,"subtitle",nil);
objj_msgSend(objj_msgSend(_4,"subtitleLabel"),"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",13));
}
}),new objj_method(sel_getUid("_subtitle"),function(_6,_7){
with(_6){
switch(objj_msgSend(objj_msgSend(_6,"representedObject"),"leafCount")){
case 0:
return CPLocalizedString("no episodes","Subtitle for a season thumbnail on a TV Show detail view");
case 1:
return CPLocalizedString("1 episode","Subtitle for a season thumbnail on a TV Show detail view");
default:
return objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("%d episodes","Subtitle for a season thumbnail on a TV Show detail view"),objj_msgSend(objj_msgSend(_6,"representedObject"),"leafCount"));
}
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("keyPathsForValuesAffectingSubtitle"),function(_8,_9){
with(_8){
return objj_msgSend(CPSet,"setWithObject:","representedObject");
}
})]);
p;26;Views/MMSeasonDetailView.jt;5967;@STATIC;1.0;I;15;AppKit/CPView.jt;5928;
objj_executeFile("AppKit/CPView.j",NO);
var _1=objj_allocateClassPair(CPView,"MMSeasonDetailView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_title"),new objj_ivar("_subtitle"),new objj_ivar("_thumbImage"),new objj_ivar("_childrenCollectionView"),new objj_ivar("_delegate")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("title"),function(_3,_4){
with(_3){
return _title;
}
}),new objj_method(sel_getUid("setTitle:"),function(_5,_6,_7){
with(_5){
_title=_7;
}
}),new objj_method(sel_getUid("subtitle"),function(_8,_9){
with(_8){
return _subtitle;
}
}),new objj_method(sel_getUid("setSubtitle:"),function(_a,_b,_c){
with(_a){
_subtitle=_c;
}
}),new objj_method(sel_getUid("thumbImage"),function(_d,_e){
with(_d){
return _thumbImage;
}
}),new objj_method(sel_getUid("setThumbImage:"),function(_f,_10,_11){
with(_f){
_thumbImage=_11;
}
}),new objj_method(sel_getUid("delegate"),function(_12,_13){
with(_12){
return _delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_14,_15,_16){
with(_14){
_delegate=_16;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_17,_18,_19){
with(_17){
if(_17=objj_msgSendSuper({receiver:_17,super_class:objj_getClass("MMSeasonDetailView").super_class},"initWithFrame:",_19)){
var _1a=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_19);
objj_msgSend(_1a,"setBackgroundColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_1a,"setAlphaValue:",0.4);
objj_msgSend(_1a,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_17,"addSubview:",_1a);
var _1b=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,CGRectGetWidth(_19),90));
objj_msgSend(_1b,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","seasonHeaderBackground.png"))));
objj_msgSend(_1b,"setAlphaValue:",0.9);
objj_msgSend(_1b,"setAutoresizingMask:",CPViewWidthSizable);
_thumbView=objj_msgSend(objj_msgSend(MMImageView,"alloc"),"initWithFrame:",CGRectMake(17,12,50,70));
objj_msgSend(_thumbView,"setShadowBlurDistance:",8);
objj_msgSend(_thumbView,"setHasShadow:",YES);
objj_msgSend(_thumbView,"setBorderRadius:",2);
objj_msgSend(_thumbView,"setSizeConstraint:",objj_msgSend(_thumbView,"frame").size);
objj_msgSend(_thumbView,"bind:toObject:withKeyPath:options:",CPValueBinding,_17,"thumbImage",nil);
objj_msgSend(_1b,"addSubview:",_thumbView);
_titleLabel=objj_msgSend(CPTextField,"labelWithTitle:","Season 1");
objj_msgSend(_titleLabel,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",28));
objj_msgSend(_titleLabel,"sizeToFit");
objj_msgSend(_titleLabel,"setFrameOrigin:",CGPointMake(80,18));
objj_msgSend(_titleLabel,"bind:toObject:withKeyPath:options:",CPValueBinding,_17,"title",nil);
objj_msgSend(_1b,"addSubview:",_titleLabel);
_subtitleLabel=objj_msgSend(CPTextField,"labelWithTitle:","10 episodes");
objj_msgSend(_subtitleLabel,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",14));
objj_msgSend(_subtitleLabel,"sizeToFit");
objj_msgSend(_subtitleLabel,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_titleLabel,"frame")),CGRectGetMaxY(objj_msgSend(_titleLabel,"frame"))));
objj_msgSend(_subtitleLabel,"bind:toObject:withKeyPath:options:",CPValueBinding,_17,"subtitle",nil);
objj_msgSend(_1b,"addSubview:",_subtitleLabel);
objj_msgSend(_17,"addSubview:",_1b);
var _1c=objj_msgSend(objj_msgSend(MMScrollView,"alloc"),"initWithFrame:",CGRectMake(0,CGRectGetMaxY(objj_msgSend(_1b,"frame")),CGRectGetWidth(objj_msgSend(_1b,"frame")),CGRectGetHeight(_19)-CGRectGetMaxY(objj_msgSend(_1b,"frame"))));
objj_msgSend(objj_msgSend(_1c,"contentView"),"setBackgroundColor:",nil);
objj_msgSend(_1c,"setHasHorizontalScroller:",NO);
objj_msgSend(_1c,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
_childrenCollectionView=objj_msgSend(objj_msgSend(MMCollectionView,"alloc"),"initWithFrame:",objj_msgSend(objj_msgSend(_1c,"contentView"),"bounds"));
objj_msgSend(_childrenCollectionView,"setMaxNumberOfColumns:",1);
objj_msgSend(_childrenCollectionView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_childrenCollectionView,"setDelegate:",_17);
objj_msgSend(_1c,"setDocumentView:",_childrenCollectionView);
objj_msgSend(_17,"addSubview:",_1c);
}
return _17;
}
}),new objj_method(sel_getUid("setTitle:"),function(_1d,_1e,_1f){
with(_1d){
_title=_1f;
objj_msgSend(_1d,"setNeedsLayout");
}
}),new objj_method(sel_getUid("setSubtitle:"),function(_20,_21,_22){
with(_20){
_subtitle=_22;
objj_msgSend(_20,"setNeedsLayout");
}
}),new objj_method(sel_getUid("setChildItemPrototype:"),function(_23,_24,_25){
with(_23){
objj_msgSend(_childrenCollectionView,"setItemPrototype:",_25);
if(_25){
var _26=CGRectGetHeight(objj_msgSend(objj_msgSend(_25,"view"),"frame"));
objj_msgSend(_childrenCollectionView,"setMinItemSize:",CGSizeMake(500,_26));
objj_msgSend(_childrenCollectionView,"setMaxItemSize:",CGSizeMake(100000,_26));
}
}
}),new objj_method(sel_getUid("setChildrenController:"),function(_27,_28,_29){
with(_27){
if(_29){
objj_msgSend(_childrenCollectionView,"bind:toObject:withKeyPath:options:","content",_29,"arrangedObjects",nil);
}else{
objj_msgSend(_childrenCollectionView,"unbind:","content");
}
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_2a,_2b){
with(_2a){
objj_msgSendSuper({receiver:_2a,super_class:objj_getClass("MMSeasonDetailView").super_class},"layoutSubviews");
objj_msgSend(_titleLabel,"sizeToFit");
objj_msgSend(_subtitleLabel,"sizeToFit");
}
}),new objj_method(sel_getUid("collectionView:didDoubleClickOnItemAtIndex:"),function(_2c,_2d,_2e,_2f){
with(_2c){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("mediaItemDetailView:didSelectChild:"))){
objj_msgSend(_delegate,"mediaItemDetailView:didSelectChild:",_2c,objj_msgSend(objj_msgSend(_2e,"content"),"objectAtIndex:",_2f));
}
}
})]);
p;30;Views/MMSectionSettingsSheet.jt;30621;@STATIC;1.0;I;15;AppKit/CPView.ji;16;MMFileListView.ji;34;../DataSources/MMAgentDataSource.ji;34;../Views/MMDirectoryBrowserSheet.jt;30482;
objj_executeFile("AppKit/CPView.j",NO);
objj_executeFile("MMFileListView.j",YES);
objj_executeFile("../DataSources/MMAgentDataSource.j",YES);
objj_executeFile("../Views/MMDirectoryBrowserSheet.j",YES);
MMSectionSettingsSheetReturnSuccess=0;
MMSectionSettingsSheetReturnCancel=1;
var _1=objj_msgSend(CPArray,"arrayWithObjects:","movie","show","artist");
var _2;
var _3=0;
var _4=1;
var _5=24;
var _6=objj_allocateClassPair(CPView,"MMSectionSettingsSheet"),_7=_6.isa;
class_addIvars(_6,[new objj_ivar("_settingsPanel"),new objj_ivar("_sectionPopUp"),new objj_ivar("_sectionNameField"),new objj_ivar("_mediaScannerPopUp"),new objj_ivar("_agentPopUp"),new objj_ivar("_languagePopUp"),new objj_ivar("_sourceFolderView"),new objj_ivar("_confirmButton"),new objj_ivar("_cancelButton"),new objj_ivar("_didEndSelector"),new objj_ivar("_modalDelegate"),new objj_ivar("_librarySectionsDataSource"),new objj_ivar("_selectedSectionTypeIndex"),new objj_ivar("_selectedAgentIndex"),new objj_ivar("_agentDataSource"),new objj_ivar("_agents"),new objj_ivar("_directoryBrowserSheet"),new objj_ivar("_plusMinusSegments")]);
objj_registerClassPair(_6);
class_addMethods(_6,[new objj_method(sel_getUid("initWithDataSource:"),function(_8,_9,_a){
with(_8){
if(_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("MMSectionSettingsSheet").super_class},"init")){
_settingsPanel=nil;
_selectedSectionTypeIndex=CPNotFound;
_selectedAgentIndex=CPNotFound;
_agentDataSource=objj_msgSend(objj_msgSend(MMAgentDataSource,"alloc"),"initWithDelegate:",_8);
_librarySectionsDataSource=_a;
CPLog.debug("[MMSectionSettingsSheet -initWithDataSource:] observing %@",_librarySectionsDataSource);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_8,sel_getUid("dataSourceDidCreateRecord:"),MMDataSourceDidCreateRecord,_librarySectionsDataSource);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_8,sel_getUid("dataSourceDidFailToCreateRecord:"),MMDataSourceDidFailToCreateRecord,_librarySectionsDataSource);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_8,sel_getUid("dataSourceDidUpdateRecord:"),MMDataSourceDidUpdateRecord,_librarySectionsDataSource);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_8,sel_getUid("dataSourceDidFailToUpdateRecord:"),MMDataSourceDidFailToUpdateRecord,_librarySectionsDataSource);
}
return _8;
}
}),new objj_method(sel_getUid("sectionName"),function(_b,_c){
with(_b){
return objj_msgSend(_sectionNameField,"stringValue");
}
}),new objj_method(sel_getUid("sectionType"),function(_d,_e){
with(_d){
return objj_msgSend(objj_msgSend(_sectionPopUp,"selectedItem"),"tag");
}
}),new objj_method(sel_getUid("sectionScanner"),function(_f,_10){
with(_f){
return objj_msgSend(objj_msgSend(_mediaScannerPopUp,"selectedItem"),"title");
}
}),new objj_method(sel_getUid("sectionAgent"),function(_11,_12){
with(_11){
return objj_msgSend(objj_msgSend(_agents,"objectAtIndex:",objj_msgSend(_agentPopUp,"indexOfSelectedItem")),"identifier");
}
}),new objj_method(sel_getUid("layoutPanel"),function(_13,_14){
with(_13){
if(!_settingsPanel){
objj_msgSend(_13,"_createPanel");
}
}
}),new objj_method(sel_getUid("_createPanel"),function(_15,_16){
with(_15){
var _17=16;
_settingsPanel=objj_msgSend(objj_msgSend(CPPanel,"alloc"),"initWithContentRect:styleMask:",CGRectMake(0,0,435,496),CPDocModalWindowMask);
var _18=objj_msgSend(_settingsPanel,"contentView");
_sectionPopUp=objj_msgSend(objj_msgSend(CPPopUpButton,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_sectionPopUp,"sizeToFit");
objj_msgSend(_sectionPopUp,"setFrame:",CGRectMake(161,_17,CGRectGetWidth(objj_msgSend(_18,"frame"))-161-_17,CGRectGetHeight(objj_msgSend(_sectionPopUp,"frame"))));
objj_msgSend(_sectionPopUp,"addItemsWithTitles:",objj_msgSend(CPArray,"arrayWithObjects:",CPLocalizedString("Movies","Movies"),CPLocalizedString("TV Shows","TV Shows"),CPLocalizedString("Music","Music")));
objj_msgSend(_sectionPopUp,"setTarget:",_15);
objj_msgSend(_sectionPopUp,"setAction:",sel_getUid("_sectionTypeWasClicked"));
objj_msgSend(_sectionPopUp,"setAutoresizingMask:",CPViewMinXMargin);
objj_msgSend(_18,"addSubview:",_sectionPopUp);
var _19=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_19,"setStringValue:",CPLocalizedString("Section type:","Section type label"));
objj_msgSend(_19,"sizeToFit");
objj_msgSend(_19,"setFrameOrigin:",CGPointMake(_17,CGRectGetMinY(objj_msgSend(_sectionPopUp,"frame"))+ROUND((CGRectGetHeight(objj_msgSend(_sectionPopUp,"frame"))-CGRectGetHeight(objj_msgSend(_19,"frame")))/2)));
objj_msgSend(_18,"addSubview:",_19);
_sectionNameField=objj_msgSend(CPTextField,"textFieldWithStringValue:placeholder:width:","","",CGRectGetWidth(objj_msgSend(_sectionPopUp,"frame")));
objj_msgSend(_settingsPanel,"setInitialFirstResponder:",_sectionNameField);
objj_msgSend(_sectionNameField,"setFrameOrigin:",CGPointMake(161,CGRectGetMaxY(objj_msgSend(_sectionPopUp,"frame"))+4));
objj_msgSend(_sectionNameField,"setAutoresizingMask:",CPViewMinXMargin);
objj_msgSend(_18,"addSubview:",_sectionNameField);
var _1a=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_1a,"setStringValue:",CPLocalizedString("Section name:","Section name label"));
objj_msgSend(_1a,"sizeToFit");
objj_msgSend(_1a,"setFrameOrigin:",CGPointMake(_17,CGRectGetMinY(objj_msgSend(_sectionNameField,"frame"))+ROUND((CGRectGetHeight(objj_msgSend(_sectionPopUp,"frame"))-CGRectGetHeight(objj_msgSend(_1a,"frame")))/2)));
objj_msgSend(_18,"addSubview:",_1a);
var _1b=objj_msgSend(objj_msgSend(CPBox,"alloc"),"initWithFrame:",CGRectMake(_17-4,CGRectGetMaxY(objj_msgSend(_sectionNameField,"frame"))+8,CGRectGetWidth(objj_msgSend(_18,"frame"))-(_17-4)*2,1));
objj_msgSend(_18,"addSubview:",_1b);
_mediaScannerPopUp=objj_msgSend(objj_msgSend(CPPopUpButton,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_mediaScannerPopUp,"sizeToFit");
objj_msgSend(_mediaScannerPopUp,"setFrame:",CGRectMake(161,CGRectGetMaxY(objj_msgSend(_1b,"frame"))+8,CGRectGetWidth(objj_msgSend(_18,"frame"))-161-_17,CGRectGetHeight(objj_msgSend(_mediaScannerPopUp,"frame"))));
objj_msgSend(_mediaScannerPopUp,"setAutoresizingMask:",CPViewMinXMargin);
objj_msgSend(_18,"addSubview:",_mediaScannerPopUp);
var _1c=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_1c,"setStringValue:",CPLocalizedString("Media scanner:","Media scanner label"));
objj_msgSend(_1c,"sizeToFit");
objj_msgSend(_1c,"setFrameOrigin:",CGPointMake(_17,CGRectGetMinY(objj_msgSend(_mediaScannerPopUp,"frame"))+ROUND((CGRectGetHeight(objj_msgSend(_mediaScannerPopUp,"frame"))-CGRectGetHeight(objj_msgSend(_1c,"frame")))/2)));
objj_msgSend(_18,"addSubview:",_1c);
_agentPopUp=objj_msgSend(objj_msgSend(CPPopUpButton,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_agentPopUp,"sizeToFit");
objj_msgSend(_agentPopUp,"setFrame:",CGRectMake(161,CGRectGetMaxY(objj_msgSend(_mediaScannerPopUp,"frame"))+6,CGRectGetWidth(objj_msgSend(_18,"frame"))-161-_17,CGRectGetHeight(objj_msgSend(_agentPopUp,"frame"))));
objj_msgSend(_agentPopUp,"setAutoresizingMask:",CPViewMinXMargin);
objj_msgSend(_agentPopUp,"setTarget:",_15);
objj_msgSend(_agentPopUp,"setAction:",sel_getUid("_agentWasClicked"));
objj_msgSend(_18,"addSubview:",_agentPopUp);
var _1d=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_1d,"setStringValue:",CPLocalizedString("Primary metadata agent:","Primary metadata agent label"));
objj_msgSend(_1d,"sizeToFit");
objj_msgSend(_1d,"setFrameOrigin:",CGPointMake(_17,CGRectGetMinY(objj_msgSend(_agentPopUp,"frame"))+ROUND((CGRectGetHeight(objj_msgSend(_agentPopUp,"frame"))-CGRectGetHeight(objj_msgSend(_1d,"frame")))/2)));
objj_msgSend(_18,"addSubview:",_1d);
_languagePopUp=objj_msgSend(objj_msgSend(CPPopUpButton,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_languagePopUp,"sizeToFit");
objj_msgSend(_languagePopUp,"setFrame:",CGRectMake(161,CGRectGetMaxY(objj_msgSend(_agentPopUp,"frame"))+6,CGRectGetWidth(objj_msgSend(_18,"frame"))-161-_17,CGRectGetHeight(objj_msgSend(_languagePopUp,"frame"))));
objj_msgSend(_languagePopUp,"setAutoresizingMask:",CPViewMinXMargin);
objj_msgSend(_18,"addSubview:",_languagePopUp);
var _1e=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_1e,"setStringValue:",CPLocalizedString("Language:","Language label"));
objj_msgSend(_1e,"sizeToFit");
objj_msgSend(_1e,"setFrameOrigin:",CGPointMake(_17,CGRectGetMinY(objj_msgSend(_languagePopUp,"frame"))+ROUND((CGRectGetHeight(objj_msgSend(_languagePopUp,"frame"))-CGRectGetHeight(objj_msgSend(_1e,"frame")))/2)));
objj_msgSend(_18,"addSubview:",_1e);
var _1f=objj_msgSend(objj_msgSend(CPBox,"alloc"),"initWithFrame:",CGRectMake(_17-4,CGRectGetMaxY(objj_msgSend(_languagePopUp,"frame"))+8,CGRectGetWidth(objj_msgSend(_18,"frame"))-(_17-4)*2,1));
objj_msgSend(_18,"addSubview:",_1f);
var _20=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_20,"setLineBreakMode:",CPLineBreakByWordWrapping);
objj_msgSend(_20,"setStringValue:",CPLocalizedString("Add the folders containing media for this section below. Any media files found inside these folders will be scanned into your library using the above settings.","Section settings primary informative text"));
objj_msgSend(_20,"setFrameOrigin:",CGPointMake(_17,CGRectGetMaxY(objj_msgSend(_1f,"frame"))+8));
var _21=objj_msgSend(objj_msgSend(_20,"stringValue"),"sizeWithFont:inWidth:",objj_msgSend(_20,"font"),CGRectGetWidth(objj_msgSend(_18,"frame"))-_17*2);
_21.height+=5;
objj_msgSend(_20,"setFrameSize:",_21);
objj_msgSend(_18,"addSubview:",_20);
var _22=objj_msgSend(objj_msgSend(CPBox,"alloc"),"initWithFrame:",CGRectMake(_17-4,CGRectGetMaxY(objj_msgSend(_20,"frame"))+8,CGRectGetWidth(objj_msgSend(_18,"frame"))-(_17-4)*2,1));
objj_msgSend(_18,"addSubview:",_22);
var _23=objj_msgSend(objj_msgSend(CPScrollView,"alloc"),"initWithFrame:",CGRectMake(_17,CGRectGetMaxY(objj_msgSend(_22,"frame"))+8,CGRectGetWidth(objj_msgSend(_18,"frame"))-_17*2,150));
objj_msgSend(_23,"setBorderType:",CPLineBorder);
objj_msgSend(_23,"setHasHorizontalScroller:",NO);
objj_msgSend(_23,"setAutohidesScrollers:",YES);
objj_msgSend(_18,"addSubview:",_23);
_sourceFolderView=objj_msgSend(objj_msgSend(MMFileListView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_sourceFolderView,"setFrameSize:",objj_msgSend(_23,"contentSize"));
objj_msgSend(_sourceFolderView,"setAutoresizingMask:",CPViewWidthSizable|CPViewMaxYMargin);
objj_msgSend(_sourceFolderView,"addObserver:forKeyPath:options:context:",_15,"selectionIndexes",CPKeyValueChangeNewKey,nil);
objj_msgSend(_23,"setDocumentView:",_sourceFolderView);
_plusMinusSegments=objj_msgSend(objj_msgSend(CPSegmentedControl,"alloc"),"initWithFrame:",CGRectMake(_17,CGRectGetMaxY(objj_msgSend(_23,"frame"))+6,0,_5));
objj_msgSend(_plusMinusSegments,"setTarget:",_15);
objj_msgSend(_plusMinusSegments,"setAction:",sel_getUid("addOrRemoveDirectory:"));
objj_msgSend(_plusMinusSegments,"setTrackingMode:",CPSegmentSwitchTrackingMomentary);
objj_msgSend(_plusMinusSegments,"setSegmentCount:",2);
objj_msgSend(_plusMinusSegments,"setImage:forSegment:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initByReferencingFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","plus.png"),CGSizeMake(8,8)),_3);
objj_msgSend(_plusMinusSegments,"setWidth:forSegment:",30,_3);
objj_msgSend(_plusMinusSegments,"setImage:forSegment:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initByReferencingFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","minus.png"),CGSizeMake(8,8)),_4);
objj_msgSend(_plusMinusSegments,"setWidth:forSegment:",30,_4);
objj_msgSend(_plusMinusSegments,"setEnabled:forSegment:",NO,_4);
objj_msgSend(_18,"addSubview:",_plusMinusSegments);
var _24=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_24,"setStringValue:",CPLocalizedString("Drag folders into the list, or click the '+' button to browse.","Section settings secondary informative text"));
objj_msgSend(_24,"setFrame:",CGRectMake(CGRectGetMaxX(objj_msgSend(_plusMinusSegments,"frame"))+4,CGRectGetMinY(objj_msgSend(_plusMinusSegments,"frame")),CGRectGetMaxX(objj_msgSend(_18,"frame"))-CGRectGetMaxX(objj_msgSend(_plusMinusSegments,"frame"))+4,CGRectGetHeight(objj_msgSend(_plusMinusSegments,"frame"))));
objj_msgSend(_24,"setVerticalAlignment:",CPCenterTextAlignment);
objj_msgSend(_18,"addSubview:",_24);
var _25=objj_msgSend(objj_msgSend(CPBox,"alloc"),"initWithFrame:",CGRectMake(_17-4,CGRectGetMaxY(objj_msgSend(_plusMinusSegments,"frame"))+8,CGRectGetWidth(objj_msgSend(_18,"frame"))-(_17-4)*2,1));
objj_msgSend(_18,"addSubview:",_25);
_confirmButton=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Add Section","Add section confirm button text"));
objj_msgSend(_confirmButton,"setTag:",MMSectionSettingsSheetReturnSuccess);
objj_msgSend(_confirmButton,"setKeyEquivalent:",CPCarriageReturnCharacter);
objj_msgSend(_confirmButton,"setTarget:",_15);
objj_msgSend(_confirmButton,"setAction:",sel_getUid("_confirmButtonClicked:"));
objj_msgSend(_confirmButton,"sizeToFit");
objj_msgSend(_confirmButton,"setFrameOrigin:",CGPointMake(CGRectGetWidth(objj_msgSend(_18,"frame"))-CGRectGetWidth(objj_msgSend(_confirmButton,"frame"))-_17,CGRectGetMaxY(objj_msgSend(_25,"frame"))+8));
objj_msgSend(_18,"addSubview:",_confirmButton);
_cancelButton=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Cancel","Cancel"));
objj_msgSend(_cancelButton,"setTag:",MMSectionSettingsSheetReturnCancel);
objj_msgSend(_cancelButton,"setKeyEquivalent:",CPEscapeFunctionKey);
objj_msgSend(_cancelButton,"setTarget:",_15);
objj_msgSend(_cancelButton,"setAction:",sel_getUid("_cancelButtonClicked:"));
objj_msgSend(_cancelButton,"sizeToFit");
objj_msgSend(_cancelButton,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_confirmButton,"frame"))-CGRectGetWidth(objj_msgSend(_cancelButton,"frame"))-4,CGRectGetMinY(objj_msgSend(_confirmButton,"frame"))));
objj_msgSend(_18,"addSubview:",_cancelButton);
objj_msgSend(_settingsPanel,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_settingsPanel,"frame")),CGRectGetMaxY(objj_msgSend(_cancelButton,"frame"))+_17));
objj_msgSend(_15,"_sectionTypeWasClicked");
}
}),new objj_method(sel_getUid("_setConfirmButtonTitle:"),function(_26,_27,_28){
with(_26){
var _29=CGRectGetMaxX(objj_msgSend(_confirmButton,"frame")),_2a=CGRectGetWidth(objj_msgSend(_confirmButton,"frame"));
objj_msgSend(_confirmButton,"setTitle:",_28);
objj_msgSend(_confirmButton,"sizeToFit");
var _2b=CGRectGetWidth(objj_msgSend(_confirmButton,"frame")),_2c=_2b-_2a;
objj_msgSend(_confirmButton,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_confirmButton,"frame"))-_2c,CGRectGetMinY(objj_msgSend(_confirmButton,"frame"))));
objj_msgSend(_cancelButton,"sizeToFit");
objj_msgSend(_cancelButton,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_cancelButton,"frame"))-_2c,CGRectGetMinY(objj_msgSend(_cancelButton,"frame"))));
}
}),new objj_method(sel_getUid("_selectedSectionType"),function(_2d,_2e){
with(_2d){
return objj_msgSend(_1,"objectAtIndex:",objj_msgSend(_sectionPopUp,"indexOfSelectedItem"));
}
}),new objj_method(sel_getUid("_setSelectedSectionType:"),function(_2f,_30,_31){
with(_2f){
CPLog.trace("[%@ -_setSelectedSectionType:] START",objj_msgSend(_2f,"class"));
objj_msgSend(_sectionPopUp,"selectItemAtIndex:",objj_msgSend(_1,"indexOfObject:",_31));
CPLog.trace("[%@ -_setSelectedSectionType:] END",objj_msgSend(_2f,"class"));
}
}),new objj_method(sel_getUid("_selectedScanner"),function(_32,_33){
with(_32){
return objj_msgSend(_2[objj_msgSend(_32,"_selectedSectionType")].scanners,"objectAtIndex:",objj_msgSend(_mediaScannerPopUp,"indexOfSelectedItem"));
}
}),new objj_method(sel_getUid("_setSelectedScanner:"),function(_34,_35,_36){
with(_34){
CPLog.trace("[%@ -_setSelectedScanner:] START",objj_msgSend(_34,"class"));
objj_msgSend(_mediaScannerPopUp,"selectItemAtIndex:",objj_msgSend(_2[objj_msgSend(_34,"_selectedSectionType")].scanners,"indexOfObject:",_36));
CPLog.trace("[%@ -_setSelectedScanner:] END",objj_msgSend(_34,"class"));
}
}),new objj_method(sel_getUid("_selectedAgent"),function(_37,_38){
with(_37){
return objj_msgSend(_agents,"objectAtIndex:",objj_msgSend(_agentPopUp,"indexOfSelectedItem"));
}
}),new objj_method(sel_getUid("_setSelectedAgent:"),function(_39,_3a,_3b){
with(_39){
CPLog.trace("[%@ -_setSelectedAgent:] START",objj_msgSend(_39,"class"));
for(var i=0,_3c=objj_msgSend(_agents,"count");i<_3c;i++){
var _3d=objj_msgSend(_agents,"objectAtIndex:",i);
if(objj_msgSend(_3d,"isEqual:",_3b)||objj_msgSend(objj_msgSend(_3d,"identifier"),"isEqual:",_3b)){
objj_msgSend(_agentPopUp,"selectItemAtIndex:",i);
break;
}
}
CPLog.trace("[%@ -_setSelectedAgent:] END",objj_msgSend(_39,"class"));
}
}),new objj_method(sel_getUid("_selectDefaultAgent"),function(_3e,_3f){
with(_3e){
switch(objj_msgSend(_3e,"_selectedSectionType")){
case MMLibrarySectionTypeMovies:
objj_msgSend(_3e,"_setSelectedAgent:",MMLibrarySectionDefaultMoviesAgent);
break;
case MMLibrarySectionTypeTV:
objj_msgSend(_3e,"_setSelectedAgent:",MMLibrarySectionDefaultTVAgent);
break;
case MMLibrarySectionTypeArtist:
objj_msgSend(_3e,"_setSelectedAgent:",MMLibrarySectionDefaultArtistAgent);
break;
}
}
}),new objj_method(sel_getUid("_selectedLanguage"),function(_40,_41){
with(_40){
var _42=objj_msgSend(objj_msgSend(_40,"_selectedAgent"),"languages"),_43=objj_msgSend(_languagePopUp,"indexOfSelectedItem");
if(_43==CPNotFound){
return nil;
}
if(_43>=0&&_43<objj_msgSend(_42,"count")){
CPLog.warn("[%@ -_selectedLanguage] index of selected language (%D) out of bounds for languages %@",objj_msgSend(_40,"class"),_43,_42);
return nil;
}
return objj_msgSend(_42,"objectAtIndex:",_43);
}
}),new objj_method(sel_getUid("_setSelectedLanguage:"),function(_44,_45,_46){
with(_44){
CPLog.trace("[%@ -_setSelectedLanguage:] START",objj_msgSend(_44,"class"));
var _47=objj_msgSend(objj_msgSend(_44,"_selectedAgent"),"languages"),_48=objj_msgSend(_47,"indexOfObject:",_46);
if(_48==CPNotFound){
CPLog.warn("[%@ -_setSelectedLanguage:] unable to find language %@ in %@",objj_msgSend(_44,"class"),_46,_47);
}else{
CPLog.debug("[%@ -_setSelectedLanguage:] selecting language %@ at index %d",objj_msgSend(_44,"class"),_46,_48);
objj_msgSend(_languagePopUp,"selectItemAtIndex:",_48);
}
CPLog.trace("[%@ -_setSelectedLanguage:] END",objj_msgSend(_44,"class"));
}
}),new objj_method(sel_getUid("_sectionLocations"),function(_49,_4a){
with(_49){
return objj_msgSend(_sourceFolderView,"files");
}
}),new objj_method(sel_getUid("_setSectionLocations:"),function(_4b,_4c,_4d){
with(_4b){
objj_msgSend(_sourceFolderView,"setFiles:",_4d);
}
}),new objj_method(sel_getUid("_sectionTypeWasClicked"),function(_4e,_4f){
with(_4e){
CPLog.trace("[%@ -_sectionTypeWasClicked] START",objj_msgSend(_4e,"class"));
if(objj_msgSend(_sectionPopUp,"indexOfSelectedItem")==_selectedSectionTypeIndex){
CPLog.debug("[%@ -_sectionTypeWasClicked] ignoring, section type unchanged (index=%d)",objj_msgSend(_4e,"class"),_selectedSectionTypeIndex);
return;
}
_selectedSectionTypeIndex=objj_msgSend(_sectionPopUp,"indexOfSelectedItem");
objj_msgSend(_mediaScannerPopUp,"removeAllItems");
objj_msgSend(_agentPopUp,"removeAllItems");
var _50=objj_msgSend(_4e,"_selectedSectionType"),_51=_2[_50];
CPLog.debug("[%@ -_sectionTypeWasClicked] activating name placeholder text: %@",objj_msgSend(_4e,"class"),_51.namePlaceholder);
objj_msgSend(_sectionNameField,"setPlaceholderString:",_51.namePlaceholder);
CPLog.debug("[%@ -_sectionTypeWasClicked] activating scanner options: %@",objj_msgSend(_4e,"class"),_51.scanners);
objj_msgSend(_mediaScannerPopUp,"addItemsWithTitles:",_51.scanners);
objj_msgSend(_agentDataSource,"refreshRecordsWithContextInfo:",_50);
CPLog.trace("[%@ -_sectionTypeWasClicked] END",objj_msgSend(_4e,"class"));
}
}),new objj_method(sel_getUid("_agentWasClicked"),function(_52,_53){
with(_52){
CPLog.trace("[%@ -_agentWasClicked] START",objj_msgSend(_52,"class"));
if(objj_msgSend(_agentPopUp,"indexOfSelectedItem")==_selectedAgentIndex){
return;
}
_selectedAgentIndex=objj_msgSend(_agentPopUp,"indexOfSelectedItem");
objj_msgSend(_languagePopUp,"removeAllItems");
var _54=objj_msgSend(_agents,"objectAtIndex:",_selectedAgentIndex),_55=objj_msgSend(_54,"languages");
CPLog.debug("[%@ -_agentWasClicked] activating language options: %@",objj_msgSend(_52,"class"),_55);
for(var i=0;i<objj_msgSend(_55,"count");i++){
objj_msgSend(_languagePopUp,"addItemWithTitle:",objj_msgSend(objj_msgSend(_55,"objectAtIndex:",i),"name"));
}
if(objj_msgSend(_librarySection,"language")){
objj_msgSend(_52,"_setSelectedLanguage:",objj_msgSend(_librarySection,"language"));
}
CPLog.trace("[%@ -_agentWasClicked] END",objj_msgSend(_52,"class"));
}
}),new objj_method(sel_getUid("dataSource:didReceiveRecords:contextInfo:"),function(_56,_57,_58,_59,_5a){
with(_56){
if(!objj_msgSend(_58,"isEqual:",_agentDataSource)){
return;
}
if(!objj_msgSend(_5a,"isEqual:",objj_msgSend(_56,"_selectedSectionType"))){
CPLog.debug("[%@ -dataSource:didReceiveRecords:contextInfo:] ignoring agent response for deselected section type %@ (selected is %@)",objj_msgSend(_56,"class"),_5a,objj_msgSend(_56,"_selectedSectionType"));
return;
}
_agents=_59;
objj_msgSend(_agentPopUp,"removeAllItems");
CPLog.debug("[%@ -dataSource:didReceiveRecords:contextInfo:] activating agent options: %@",objj_msgSend(_56,"class"),_agents);
for(var i=0;i<objj_msgSend(_agents,"count");i++){
objj_msgSend(_agentPopUp,"addItemWithTitle:",objj_msgSend(objj_msgSend(_agents,"objectAtIndex:",i),"name"));
}
if(objj_msgSend(_librarySection,"agent")){
objj_msgSend(_56,"_setSelectedAgent:",objj_msgSend(_librarySection,"agent"));
}else{
objj_msgSend(_56,"_selectDefaultAgent");
}
objj_msgSend(_56,"_agentWasClicked");
}
}),new objj_method(sel_getUid("dataSourceDidCreateRecord:"),function(_5b,_5c,_5d){
with(_5b){
objj_msgSend(_5b,"_dismissPanelWithReturnCode:",MMSectionSettingsSheetReturnSuccess);
}
}),new objj_method(sel_getUid("dataSourceDidFailToCreateRecord:"),function(_5e,_5f,_60){
with(_5e){
var _61=objj_msgSend(objj_msgSend(_60,"userInfo"),"objectForKey:","error"),_62=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(_62,"setAlertStyle:",CPCriticalAlertStyle);
objj_msgSend(_62,"setTitle:",CPLocalizedString("Unable to create library section","Unable to create library section"));
objj_msgSend(_62,"setMessageText:",objj_msgSend(CPString,"stringWithFormat:",_61));
objj_msgSend(_62,"runModal");
}
}),new objj_method(sel_getUid("dataSourceDidUpdateRecord:"),function(_63,_64,_65){
with(_63){
objj_msgSend(_63,"_dismissPanelWithReturnCode:",MMSectionSettingsSheetReturnSuccess);
}
}),new objj_method(sel_getUid("dataSourceDidFailToUpdateRecord:"),function(_66,_67,_68){
with(_66){
var _69=objj_msgSend(objj_msgSend(_68,"userInfo"),"objectForKey:","error"),_6a=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(_6a,"setAlertStyle:",CPCriticalAlertStyle);
objj_msgSend(_6a,"setTitle:",CPLocalizedString("Unable to update library section","Unable to update library section"));
objj_msgSend(_6a,"setMessageText:",objj_msgSend(CPString,"stringWithFormat:",_69));
objj_msgSend(_6a,"runModal");
}
}),new objj_method(sel_getUid("runModal"),function(_6b,_6c){
with(_6b){
objj_msgSend(_6b,"layoutPanel");
objj_msgSend(CPApp,"runModalForWindow:",_settingsPanel);
}
}),new objj_method(sel_getUid("beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:"),function(_6d,_6e,_6f,_70,_71,_72){
with(_6d){
objj_msgSend(_6d,"layoutPanel");
_didEndSelector=_71;
_modalDelegate=_70;
_librarySection=_72;
if(_librarySection){
objj_msgSend(_sectionNameField,"setStringValue:",objj_msgSend(_librarySection,"title"));
if(objj_msgSend(_librarySection,"type")){
objj_msgSend(_6d,"_setSelectedSectionType:",objj_msgSend(_librarySection,"type"));
objj_msgSend(_6d,"_sectionTypeWasClicked");
}
if(objj_msgSend(_librarySection,"scanner")){
objj_msgSend(_6d,"_setSelectedScanner:",objj_msgSend(_librarySection,"scanner"));
}
if(objj_msgSend(_librarySection,"agent")){
objj_msgSend(_6d,"_setSelectedAgent:",objj_msgSend(_librarySection,"agent"));
}
if(objj_msgSend(_librarySection,"language")){
objj_msgSend(_6d,"_setSelectedLanguage:",objj_msgSend(_librarySection,"language"));
}
if(objj_msgSend(objj_msgSend(_librarySection,"locations"),"count")){
objj_msgSend(_6d,"_setSectionLocations:",objj_msgSend(_librarySection,"locations"));
}
objj_msgSend(_6d,"_setConfirmButtonTitle:",objj_msgSend(_librarySection,"isNewRecord")?CPLocalizedString("Add Section","Add section confirm button text"):CPLocalizedString("Update Section","Update section confirm button text"));
}
objj_msgSend(CPApp,"beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:",_settingsPanel,_6f,_6d,sel_getUid("_editDidEnd:returnCode:contextInfo:"),_72);
}
}),new objj_method(sel_getUid("beginSheetModalForWindow:"),function(_73,_74,_75){
with(_73){
objj_msgSend(_73,"layoutPanel");
_didEndSelector=nil;
_modalDelegate=nil;
_librarySection=nil;
objj_msgSend(CPApp,"beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:",_settingsPanel,_75,_73,sel_getUid("_editDidEnd:returnCode:contextInfo:"),nil);
}
}),new objj_method(sel_getUid("_editDidEnd:returnCode:contextInfo:"),function(_76,_77,_78,_79,_7a){
with(_76){
if(_didEndSelector){
objj_msgSend(_modalDelegate,_didEndSelector,_76,_79,_7a);
}
_didEndSelector=nil;
_modalDelegate=nil;
_librarySection=nil;
}
}),new objj_method(sel_getUid("_confirmButtonClicked:"),function(_7b,_7c,_7d){
with(_7b){
var _7e=objj_msgSend(_agents,"objectAtIndex:",objj_msgSend(_agentPopUp,"indexOfSelectedItem")),_7f=objj_msgSend(objj_msgSend(_7e,"languages"),"objectAtIndex:",objj_msgSend(_languagePopUp,"indexOfSelectedItem"));
objj_msgSend(_librarySection,"setTitle:",objj_msgSend(_sectionNameField,"stringValue"));
objj_msgSend(_librarySection,"setScanner:",objj_msgSend(_7b,"_selectedScanner"));
objj_msgSend(_librarySection,"setAgent:",_7e);
objj_msgSend(_librarySection,"setType:",objj_msgSend(_7b,"_selectedSectionType"));
objj_msgSend(_librarySection,"setLocations:",objj_msgSend(_7b,"_sectionLocations"));
objj_msgSend(_librarySection,"setLanguage:",_7f);
if(objj_msgSend(_librarySection,"isNewRecord")){
objj_msgSend(_librarySectionsDataSource,"createRecord:",_librarySection);
}else{
objj_msgSend(_librarySectionsDataSource,"updateRecord:",_librarySection);
}
}
}),new objj_method(sel_getUid("_cancelButtonClicked:"),function(_80,_81,_82){
with(_80){
objj_msgSend(_80,"_dismissPanelWithReturnCode:",objj_msgSend(_82,"tag"));
}
}),new objj_method(sel_getUid("_dismissPanelWithReturnCode:"),function(_83,_84,_85){
with(_83){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_83,MMDataSourceDidCreateRecord,_librarySectionsDataSource);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_83,MMDataSourceDidFailToCreateRecord,_librarySectionsDataSource);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_83,MMDataSourceDidUpdateRecord,_librarySectionsDataSource);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_83,MMDataSourceDidFailToUpdateRecord,_librarySectionsDataSource);
if(objj_msgSend(_settingsPanel,"isSheet")){
objj_msgSend(CPApp,"endSheet:returnCode:",_settingsPanel,_85);
}else{
objj_msgSend(CPApp,"abortModal");
objj_msgSend(_settingsPanel,"close");
objj_msgSend(_83,"_editDidEnd:returnCode:contextInfo:",nil,_85,_librarySection);
}
}
}),new objj_method(sel_getUid("addOrRemoveDirectory:"),function(_86,_87,_88){
with(_86){
switch(objj_msgSend(_88,"selectedSegment")){
case _3:
if(!_directoryBrowserSheet){
_directoryBrowserSheet=objj_msgSend(objj_msgSend(MMDirectoryBrowserSheet,"alloc"),"initWithContentRect:styleMask:",CGRectMake(0,0,400,300),CPDocModalWindowMask);
}
objj_msgSend(_directoryBrowserSheet,"setTitle:",CPLocalizedString("Select a directory for this section:","Directory-browser title when adding/editing sections"));
objj_msgSend(_directoryBrowserSheet,"setDelegate:",_86);
objj_msgSend(CPApp,"beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:",_directoryBrowserSheet,_settingsPanel,nil,nil,nil);
break;
case _4:
objj_msgSend(_sourceFolderView,"removeFilesAtIndexes:",objj_msgSend(_sourceFolderView,"selectionIndexes"));
break;
}
}
}),new objj_method(sel_getUid("directoryBrowserSheet:didChooseDirectory:"),function(_89,_8a,_8b,_8c){
with(_89){
objj_msgSend(_sourceFolderView,"addFileWithPath:",objj_msgSend(_8c,"path"));
objj_msgSend(CPApp,"endSheet:returnCode:",_8b,0);
}
}),new objj_method(sel_getUid("directoryBrowserSheetDidCancel:"),function(_8d,_8e,_8f){
with(_8d){
objj_msgSend(CPApp,"endSheet:returnCode:",_8f,1);
}
}),new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"),function(_90,_91,_92,_93,_94,_95){
with(_90){
if(_93==_sourceFolderView&&_92=="selectionIndexes"){
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",0,_90,sel_getUid("_syncRemoveButtonEnabled"),nil,NO);
}
}
}),new objj_method(sel_getUid("_syncRemoveButtonEnabled"),function(_96,_97){
with(_96){
objj_msgSend(_plusMinusSegments,"setEnabled:forSegment:",(objj_msgSend(objj_msgSend(_sourceFolderView,"selectionIndexes"),"count")!=0),_4);
}
})]);
class_addMethods(_7,[new objj_method(sel_getUid("initialize"),function(_98,_99){
with(_98){
_2={movie:{namePlaceholder:CPLocalizedString("My Movies","Movie section name placeholder"),scanners:objj_msgSend(CPArray,"arrayWithObjects:","Plex Movie Scanner")},show:{namePlaceholder:CPLocalizedString("My TV Shows","TV Shows section name placeholder"),scanners:objj_msgSend(CPArray,"arrayWithObjects:","Plex Series Scanner")},artist:{namePlaceholder:CPLocalizedString("My Music","Music section name placeholder"),scanners:objj_msgSend(CPArray,"arrayWithObjects:","Plex Music Scanner")}};
}
}),new objj_method(sel_getUid("_menuItemWithTitle:tag:"),function(_9a,_9b,_9c,tag){
with(_9a){
var _9d=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",_9c,nil,nil);
objj_msgSend(_9d,"setTag:",tag);
return _9d;
}
})]);
p;23;Views/MMSelectionView.jt;7803;@STATIC;1.0;i;13;MMImageView.jt;7766;
objj_executeFile("MMImageView.j",YES);
MMSelectionViewDefaultSelectionBorderRadius=4;
MMSelectionViewDefaultGradientStartColor=objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",225/255,170/255,84/255,1);
MMSelectionViewDefaultGradientEndColor=objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",121/255,69/255,30/255,1);
var _1=objj_allocateClassPair(CPView,"MMSelectionView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_selected"),new objj_ivar("_selectionBorderLayer"),new objj_ivar("_selectionBorderRadius"),new objj_ivar("_selectableView"),new objj_ivar("_autoresizeToFitSelectableView"),new objj_ivar("_originalHasShadowValue"),new objj_ivar("_gradientStartColor"),new objj_ivar("_gradientEndColor")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("isSelected"),function(_3,_4){
with(_3){
return _selected;
}
}),new objj_method(sel_getUid("setSelected:"),function(_5,_6,_7){
with(_5){
_selected=_7;
}
}),new objj_method(sel_getUid("selectionBorderRadius"),function(_8,_9){
with(_8){
return _selectionBorderRadius;
}
}),new objj_method(sel_getUid("setSelectionBorderRadius:"),function(_a,_b,_c){
with(_a){
_selectionBorderRadius=_c;
}
}),new objj_method(sel_getUid("selectableView"),function(_d,_e){
with(_d){
return _selectableView;
}
}),new objj_method(sel_getUid("setSelectableView:"),function(_f,_10,_11){
with(_f){
_selectableView=_11;
}
}),new objj_method(sel_getUid("shouldAutoresizeToFitSelectableView"),function(_12,_13){
with(_12){
return _autoresizeToFitSelectableView;
}
}),new objj_method(sel_getUid("setAutoresizesToFitSelectableView:"),function(_14,_15,_16){
with(_14){
_autoresizeToFitSelectableView=_16;
}
}),new objj_method(sel_getUid("gradientStartColor"),function(_17,_18){
with(_17){
return _gradientStartColor;
}
}),new objj_method(sel_getUid("setGradientStartColor:"),function(_19,_1a,_1b){
with(_19){
_gradientStartColor=_1b;
}
}),new objj_method(sel_getUid("gradientEndColor"),function(_1c,_1d){
with(_1c){
return _gradientEndColor;
}
}),new objj_method(sel_getUid("setGradientEndColor:"),function(_1e,_1f,_20){
with(_1e){
_gradientEndColor=_20;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_21,_22,_23){
with(_21){
if(_21=objj_msgSend(_21,"initWithFrame:borderRadius:",_23,MMSelectionViewDefaultSelectionBorderRadius)){
return _21;
}
}
}),new objj_method(sel_getUid("initWithFrame:borderRadius:"),function(_24,_25,_26,_27){
with(_24){
if(_24=objj_msgSendSuper({receiver:_24,super_class:objj_getClass("MMSelectionView").super_class},"initWithFrame:",_26)){
_selected=NO;
_selectionBorderRadius=_27;
_gradientStartColor=MMSelectionViewDefaultGradientStartColor;
_gradientEndColor=MMSelectionViewDefaultGradientEndColor;
_autoresizeToFitSelectableView=YES;
}
return _24;
}
}),new objj_method(sel_getUid("isSelected"),function(_28,_29){
with(_28){
return _selected;
}
}),new objj_method(sel_getUid("setSelected:"),function(_2a,_2b,_2c){
with(_2a){
if(_selected==_2c){
return;
}
_selected=_2c;
if(_2c&&!_selectionBorderLayer){
_selectionBorderLayer=objj_msgSend(CALayer,"layer");
objj_msgSend(_selectionBorderLayer,"setDelegate:",_2a);
objj_msgSend(_2a,"setLayer:",_selectionBorderLayer);
}
objj_msgSend(_2a,"setHidden:",!_2c);
}
}),new objj_method(sel_getUid("shouldAutoresizeToFitSelectableView"),function(_2d,_2e){
with(_2d){
return _autoresizeToFitSelectableView;
}
}),new objj_method(sel_getUid("setAutoresizesToFitSelectableView:"),function(_2f,_30,_31){
with(_2f){
if(_31==_autoresizeToFitSelectableView){
return;
}
if(!_31&&_selectableView){
objj_msgSend(_2f,"_stopObservingSelectableViewFrameChanges");
}else{
if(_31&&_selectableView){
objj_msgSend(_2f,"_startObservingSelectableViewFrameChanges");
}
}
}
}),new objj_method(sel_getUid("setSelectableView:"),function(_32,_33,_34){
with(_32){
if(objj_msgSend(_selectableView,"isEqual:",_34)){
return;
}
if(_selectableView&&_autoresizeToFitSelectableView){
objj_msgSend(_32,"_stopObservingSelectableViewFrameChanges");
}
_selectableView=_34;
if(_selectableView&&_autoresizeToFitSelectableView){
objj_msgSend(_32,"_startObservingSelectableViewFrameChanges");
}
if(objj_msgSend(_selectableView,"isKindOfClass:",CPImageView)){
_originalHasShadowValue=objj_msgSend(_selectableView,"hasShadow");
}
}
}),new objj_method(sel_getUid("_startObservingSelectableViewFrameChanges"),function(_35,_36){
with(_35){
if(objj_msgSend(_selectableView,"isKindOfClass:",MMImageView)){
objj_msgSend(_35,"bind:toObject:withKeyPath:options:","imageRect",_selectableView,"imageRect",nil);
}else{
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_35,sel_getUid("_selectableViewFrameDidChange:"),CPViewFrameDidChangeNotification,_selectableView);
objj_msgSend(_selectableView,"setPostsFrameChangedNotifications:",YES);
}
}
}),new objj_method(sel_getUid("_stopObservingSelectableViewFrameChanges"),function(_37,_38){
with(_37){
if(objj_msgSend(_selectableView,"isKindOfClass:",MMImageView)){
objj_msgSend(_37,"unbind:","imageRect");
}else{
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_37,CPViewFrameDidChangeNotification,_selectableView);
objj_msgSend(_selectableView,"setPostsFrameChangedNotifications:",NO);
}
}
}),new objj_method(sel_getUid("setImageRect:"),function(_39,_3a,_3b){
with(_39){
objj_msgSend(_39,"_selectableViewFrameDidChange:",nil);
}
}),new objj_method(sel_getUid("_selectableViewFrameDidChange:"),function(_3c,_3d,_3e){
with(_3c){
objj_msgSend(_3c,"setFrame:",objj_msgSend(objj_msgSend(_3c,"class"),"containerFrameForSelectableView:selectionBorderRadius:",_selectableView,_selectionBorderRadius));
}
}),new objj_method(sel_getUid("drawLayer:inContext:"),function(_3f,_40,_41,_42){
with(_3f){
var _43=_selectionBorderRadius,_44=objj_msgSend(_3f,"bounds");
CGContextSetFillColor(_42,_gradientStartColor);
CGContextFillRoundedRectangleInRect(_42,_44,_43,YES,YES,YES,YES);
if(!CPFeatureIsCompatible(CPHTMLCanvasFeature)){
return;
}
var _45;
var _46;
var _47=2;
var _48=[0,0.5];
var _49=[objj_msgSend(_gradientStartColor,"redComponent"),objj_msgSend(_gradientStartColor,"greenComponent"),objj_msgSend(_gradientStartColor,"blueComponent"),objj_msgSend(_gradientStartColor,"alphaComponent"),objj_msgSend(_gradientEndColor,"redComponent"),objj_msgSend(_gradientEndColor,"greenComponent"),objj_msgSend(_gradientEndColor,"blueComponent"),objj_msgSend(_gradientEndColor,"alphaComponent")];
_46=CGColorSpaceCreateDeviceRGB();
_45=CGGradientCreateWithColorComponents(_46,_49,_48,_47);
var _4a=CGPointMake(0,CGRectGetMinY(_44)),_4b=CGPointMake(1,CGRectGetMaxY(_44));
CGContextClip(_42);
CGContextDrawLinearGradient(_42,_45,_4a,_4b,0);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("selectionViewForView:"),function(_4c,_4d,_4e){
with(_4c){
return objj_msgSend(_4c,"selectionViewForView:selectionBorderRadius:",_4e,MMSelectionViewDefaultSelectionBorderRadius);
}
}),new objj_method(sel_getUid("selectionViewForView:selectionBorderRadius:"),function(_4f,_50,_51,_52){
with(_4f){
var _53=objj_msgSend(_4f,"containerFrameForSelectableView:selectionBorderRadius:",_51,_52),_54=objj_msgSend(objj_msgSend(_4f,"alloc"),"initWithFrame:borderRadius:",_53,_52);
objj_msgSend(_54,"setSelectableView:",_51);
objj_msgSend(objj_msgSend(_51,"superview"),"addSubview:positioned:relativeTo:",_54,CPWindowBelow,_51);
return _54;
}
}),new objj_method(sel_getUid("containerFrameForSelectableView:selectionBorderRadius:"),function(_55,_56,_57,_58){
with(_55){
var _59;
if(objj_msgSend(_57,"isKindOfClass:",CPImageView)){
if(_59=objj_msgSend(_57,"imageRect")){
_59=CGRectOffset(_59,CGRectGetMinX(objj_msgSend(_57,"frame")),CGRectGetMinY(objj_msgSend(_57,"frame")));
}
}
if(!_59){
_59=objj_msgSend(_57,"frame");
}
_59=CGRectInset(_59,-_58,-_58);
return _59;
}
})]);
p;24;Views/MMSheetContainer.jt;324;@STATIC;1.0;t;306;
var _1=objj_allocateClassPair(CPView,"MMSheetContainer"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("themeAttributes"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",CGInsetMake(15,15,15,15),"content-inset");
}
})]);
p;26;Views/MMSpinnerTableCell.jt;3198;@STATIC;1.0;I;20;AppKit/CPTableView.jI;20;AppKit/CPTextField.ji;13;MMImageView.jt;3111;
objj_executeFile("AppKit/CPTableView.j",NO);
objj_executeFile("AppKit/CPTextField.j",NO);
objj_executeFile("MMImageView.j",YES);
var _1=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","spinnerSelectedBackground.gif"),CGSizeMake(16,16));
var _2=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","spinnerDeselectedBackground.gif"),CGSizeMake(16,16));
var _3="MMSpinnerTableCellRefreshingViewKey";
var _4=objj_allocateClassPair(CPControl,"MMSpinnerTableCell"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_spinner")]);
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("initWithFrame:"),function(_6,_7,_8){
with(_6){
if(_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("MMSpinnerTableCell").super_class},"initWithFrame:",_8)){
_spinner=objj_msgSend(objj_msgSend(MMImageView,"alloc"),"initWithFrame:",CGRectMake(0,0,objj_msgSend(_2,"size").width,objj_msgSend(_2,"size").height));
objj_msgSend(_spinner,"setImage:",_2);
objj_msgSend(_6,"addSubview:",_spinner);
}
return _6;
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_9,_a){
with(_9){
objj_msgSend(_spinner,"setFrameOrigin:",CGPointMake((CGRectGetWidth(objj_msgSend(_9,"frame"))-CGRectGetWidth(objj_msgSend(_spinner,"frame")))/2,(CGRectGetHeight(objj_msgSend(_9,"frame"))-CGRectGetHeight(objj_msgSend(_spinner,"frame")))/2));
}
}),new objj_method(sel_getUid("drawRect:"),function(_b,_c,_d){
with(_b){
objj_msgSendSuper({receiver:_b,super_class:objj_getClass("MMSpinnerTableCell").super_class},"drawRect:",_d);
objj_msgSend(_spinner,"setHidden:",!objj_msgSend(_b,"isRefreshing"));
objj_msgSend(_spinner,"setImage:",(objj_msgSend(_b,"themeState")&CPThemeStateSelectedDataView)?_1:_2);
}
}),new objj_method(sel_getUid("setThemeState:"),function(_e,_f,_10){
with(_e){
objj_msgSendSuper({receiver:_e,super_class:objj_getClass("MMSpinnerTableCell").super_class},"setThemeState:",_10);
objj_msgSend(_e,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("isRefreshing"),function(_11,_12){
with(_11){
return objj_msgSend(_11,"objectValue");
}
}),new objj_method(sel_getUid("setRefreshing:"),function(_13,_14,_15){
with(_13){
objj_msgSend(_13,"setObjectValue:",_15);
}
})]);
var _4=objj_getClass("MMSpinnerTableCell");
if(!_4){
throw new SyntaxError("*** Could not find definition for class \"MMSpinnerTableCell\"");
}
var _5=_4.isa;
class_addMethods(_4,[new objj_method(sel_getUid("encodeWithCoder:"),function(_16,_17,_18){
with(_16){
objj_msgSendSuper({receiver:_16,super_class:objj_getClass("MMSpinnerTableCell").super_class},"encodeWithCoder:",_18);
objj_msgSend(_18,"encodeObject:forKey:",_spinner,_3);
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_19,_1a,_1b){
with(_19){
if(_19=objj_msgSendSuper({receiver:_19,super_class:objj_getClass("MMSpinnerTableCell").super_class},"initWithCoder:",_1b)){
_spinner=objj_msgSend(_1b,"decodeObjectForKey:",_3);
objj_msgSend(_spinner,"setImage:",_2);
}
return _19;
}
})]);
p;17;Views/MMToolbar.jt;5847;@STATIC;1.0;I;15;AppKit/CPView.jt;5808;
objj_executeFile("AppKit/CPView.j",NO);
MMToolbarCocoaStyleTopGradientColor=objj_msgSend(CPColor,"colorWithWhite:alpha:",245/255,1);
MMToolbarCocoaStyleBottomGradientColor=objj_msgSend(CPColor,"colorWithWhite:alpha:",155/255,1);
MMToolbarCocoaStyleTopBorderColor=objj_msgSend(CPColor,"colorWithWhite:alpha:",81/255,1);
MMToolbarCocoaStyleBottomBorderColor=objj_msgSend(CPColor,"colorWithWhite:alpha:",88/255,1);
MMToolbarHUDStyleTopGradientColor=objj_msgSend(CPColor,"colorWithWhite:alpha:",60/255,1);
MMToolbarHUDStyleBottomGradientColor=objj_msgSend(CPColor,"colorWithWhite:alpha:",0/255,1);
MMToolbarHUDStyleTopBorderColor=objj_msgSend(CPColor,"colorWithWhite:alpha:",101/255,1);
MMToolbarHUDStyleBottomBorderColor=objj_msgSend(CPColor,"colorWithWhite:alpha:",0/255,1);
MMToolbarCocoaStyle="MMToolbarCocoaStyle";
MMToolbarHUDStyle="MMToolbarHUDStyle";
var _1=objj_allocateClassPair(CPView,"MMToolbar"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_topGradientColor"),new objj_ivar("_bottomGradientColor"),new objj_ivar("_topBorderColor"),new objj_ivar("_bottomBorderColor")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("topGradientColor"),function(_3,_4){
with(_3){
return _topGradientColor;
}
}),new objj_method(sel_getUid("setTopGradientColor:"),function(_5,_6,_7){
with(_5){
_topGradientColor=_7;
}
}),new objj_method(sel_getUid("bottomGradientColor"),function(_8,_9){
with(_8){
return _bottomGradientColor;
}
}),new objj_method(sel_getUid("setBottomGradientColor:"),function(_a,_b,_c){
with(_a){
_bottomGradientColor=_c;
}
}),new objj_method(sel_getUid("topBorderColor"),function(_d,_e){
with(_d){
return _topBorderColor;
}
}),new objj_method(sel_getUid("setTopBorderColor:"),function(_f,_10,_11){
with(_f){
_topBorderColor=_11;
}
}),new objj_method(sel_getUid("bottomBorderColor"),function(_12,_13){
with(_12){
return _bottomBorderColor;
}
}),new objj_method(sel_getUid("setBottomBorderColor:"),function(_14,_15,_16){
with(_14){
_bottomBorderColor=_16;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_17,_18,_19){
with(_17){
if(_17=objj_msgSend(_17,"initWithFrame:style:",_19,MMToolbarCocoaStyle)){
}
return _17;
}
}),new objj_method(sel_getUid("initWithFrame:style:"),function(_1a,_1b,_1c,_1d){
with(_1a){
if(_1a=objj_msgSendSuper({receiver:_1a,super_class:objj_getClass("MMToolbar").super_class},"initWithFrame:",_1c)){
objj_msgSend(_1a,"setStyle:",_1d);
}
return _1a;
}
}),new objj_method(sel_getUid("setStyle:"),function(_1e,_1f,_20){
with(_1e){
switch(_20){
case MMToolbarCocoaStyle:
_topGradientColor=MMToolbarCocoaStyleTopGradientColor;
_bottomGradientColor=MMToolbarCocoaStyleBottomGradientColor;
_topBorderColor=MMToolbarCocoaStyleTopBorderColor;
_bottomBorderColor=MMToolbarCocoaStyleBottomBorderColor;
break;
case MMToolbarHUDStyle:
_topGradientColor=MMToolbarHUDStyleTopGradientColor;
_bottomGradientColor=MMToolbarHUDStyleBottomGradientColor;
_topBorderColor=MMToolbarHUDStyleTopBorderColor;
_bottomBorderColor=MMToolbarHUDStyleBottomBorderColor;
break;
default:
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(CPString,"stringWithFormat:","%@ is not a valid toolbar style",_20));
}
}
}),new objj_method(sel_getUid("setTopGradientColor:"),function(_21,_22,_23){
with(_21){
if(objj_msgSend(_23,"isEqual:",_topGradientColor)){
return;
}
_topGradientColor=_23;
objj_msgSend(_21,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("setBottomGradientColor:"),function(_24,_25,_26){
with(_24){
if(objj_msgSend(_26,"isEqual:",_bottomGradientColor)){
return;
}
_bottomGradientColor=_26;
objj_msgSend(_24,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("setTopBorderColor:"),function(_27,_28,_29){
with(_27){
if(objj_msgSend(_29,"isEqual:",_topBorderColor)){
return;
}
_topBorderColor=_29;
objj_msgSend(_27,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("setBottomBorderColor:"),function(_2a,_2b,_2c){
with(_2a){
if(objj_msgSend(_2c,"isEqual:",_bottomBorderColor)){
return;
}
_bottomBorderColor=_2c;
objj_msgSend(_2a,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("drawRect:"),function(_2d,_2e,_2f){
with(_2d){
var _30=objj_msgSend(_2d,"bounds"),_31=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
CGContextBeginPath(_31);
CGContextSetFillColor(_31,_topGradientColor);
CGContextMoveToPoint(_31,CGRectGetMinX(_30),CGRectGetMinY(_30));
CGContextAddLineToPoint(_31,CGRectGetMinX(_30),CGRectGetMaxY(_30));
CGContextAddLineToPoint(_31,CGRectGetMaxX(_30),CGRectGetMaxY(_30));
CGContextAddLineToPoint(_31,CGRectGetMaxX(_30),CGRectGetMinY(_30));
CGContextAddLineToPoint(_31,CGRectGetMinX(_30),CGRectGetMinY(_30));
CGContextClosePath(_31);
CGContextFillPath(_31);
if(CPFeatureIsCompatible(CPHTMLCanvasFeature)){
var _32;
var _33;
var _34=2;
var _35=[0,1];
var _36=[].concat(objj_msgSend(_topGradientColor,"components")).concat(objj_msgSend(_bottomGradientColor,"components"));
_33=CGColorSpaceCreateDeviceRGB();
_32=CGGradientCreateWithColorComponents(_33,_36,_35,_34);
var _37=CGPointMake(0,CGRectGetMinY(_30)),_38=CGPointMake(0,CGRectGetMaxY(_30));
CGContextClip(_31);
CGContextDrawLinearGradient(_31,_32,_37,_38,0);
CGContextBeginPath(_31);
CGContextSetStrokeColor(_31,_topBorderColor);
CGContextMoveToPoint(_31,CGRectGetMinX(_30),CGRectGetMinY(_30)+0.5);
CGContextAddLineToPoint(_31,CGRectGetMaxX(_30),CGRectGetMinY(_30)+0.5);
CGContextClosePath(_31);
CGContextStrokePath(_31);
CGContextBeginPath(_31);
CGContextSetStrokeColor(_31,_bottomBorderColor);
CGContextMoveToPoint(_31,CGRectGetMinX(_30),CGRectGetMaxY(_30)-0.5);
CGContextAddLineToPoint(_31,CGRectGetMaxX(_30),CGRectGetMaxY(_30)-0.5);
CGContextClosePath(_31);
CGContextStrokePath(_31);
}
objj_msgSendSuper({receiver:_2d,super_class:objj_getClass("MMToolbar").super_class},"drawRect:",_2f);
}
})]);
e;