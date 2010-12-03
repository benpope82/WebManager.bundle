@STATIC;1.0;p;15;AppController.jt;28549;@STATIC;1.0;I;21;Foundation/CPObject.jI;28;LPKit/LPLocationController.ji;27;CPCheckBox+ObjectValueFix.ji;29;CPURLConnection+XMLResponse.ji;49;Controllers/MMLibrarySectionTableViewController.ji;31;Controllers/MMPrefsController.ji;31;DataSources/MMAgentDataSource.ji;38;DataSources/MMLibraryMediaDataSource.ji;38;DataSources/MMMetadataItemDataSource.ji;41;DataSources/MMLibrarySectionsDataSource.ji;41;DataSources/MMLibraryTimelineDataSource.ji;23;Models/LanguageConfig.ji;23;Models/MMMetadataItem.ji;27;Views/MMActionPopUpButton.ji;24;Views/MMCollectionView.ji;19;Views/MMContainer.ji;22;Views/MMFirstRunView.ji;23;Views/MMMediaItemCell.ji;29;Views/MMMediaItemDetailView.ji;33;Views/MMMediaItemCollectionView.ji;20;Views/MMScrollView.ji;30;Views/MMSectionSettingsSheet.ji;25;Views/MMViewWithToolbar.ji;26;Views/MMPreferencesPanel.ji;17;Views/MMToolbar.jt;27689;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("LPKit/LPLocationController.j",NO);
objj_executeFile("CPCheckBox+ObjectValueFix.j",YES);
objj_executeFile("CPURLConnection+XMLResponse.j",YES);
objj_executeFile("Controllers/MMLibrarySectionTableViewController.j",YES);
objj_executeFile("Controllers/MMPrefsController.j",YES);
objj_executeFile("DataSources/MMAgentDataSource.j",YES);
objj_executeFile("DataSources/MMLibraryMediaDataSource.j",YES);
objj_executeFile("DataSources/MMMetadataItemDataSource.j",YES);
objj_executeFile("DataSources/MMLibrarySectionsDataSource.j",YES);
objj_executeFile("DataSources/MMLibraryTimelineDataSource.j",YES);
objj_executeFile("Models/LanguageConfig.j",YES);
objj_executeFile("Models/MMMetadataItem.j",YES);
objj_executeFile("Views/MMActionPopUpButton.j",YES);
objj_executeFile("Views/MMCollectionView.j",YES);
objj_executeFile("Views/MMContainer.j",YES);
objj_executeFile("Views/MMFirstRunView.j",YES);
objj_executeFile("Views/MMMediaItemCell.j",YES);
objj_executeFile("Views/MMMediaItemDetailView.j",YES);
objj_executeFile("Views/MMMediaItemCollectionView.j",YES);
objj_executeFile("Views/MMScrollView.j",YES);
objj_executeFile("Views/MMSectionSettingsSheet.j",YES);
objj_executeFile("Views/MMViewWithToolbar.j",YES);
objj_executeFile("Views/MMPreferencesPanel.j",YES);
objj_executeFile("Views/MMToolbar.j",YES);
var _1=0;
var _2=1;
var _3=24;
var _4=objj_allocateClassPair(CPObject,"AppController"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("window"),new objj_ivar("_preventUpdates"),new objj_ivar("_wantedMediaItemId"),new objj_ivar("_showingHelp"),new objj_ivar("_librarySection"),new objj_ivar("_mediaItem"),new objj_ivar("_viewWithToolbar"),new objj_ivar("_firstRunView"),new objj_ivar("_mediaItemsController"),new objj_ivar("_selectedLibrarySectionController"),new objj_ivar("_librarySectionController"),new objj_ivar("rightView"),new objj_ivar("_mediaCollectionContainer"),new objj_ivar("mediaItemsScrollView"),new objj_ivar("mediaGridView"),new objj_ivar("_librarySectionToolbar"),new objj_ivar("statusLabel"),new objj_ivar("_mediaItemView"),new objj_ivar("plusMinusSegments"),new objj_ivar("media"),new objj_ivar("librarySections"),new objj_ivar("mediaDataSource"),new objj_ivar("_librarySectionLocationHash"),new objj_ivar("_mediaItemLocationHash")]);
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("applicationDidFinishLaunching:"),function(_6,_7,_8){
with(_6){
CPLog.trace("[%@ -applicationDidFinishLaunching:] START",objj_msgSend(_6,"class"));
window=objj_msgSend(objj_msgSend(CPWindow,"alloc"),"initWithContentRect:styleMask:",CGRectMakeZero(),CPBorderlessBridgeWindowMask);
var _9=objj_msgSend(window,"contentView");
media=objj_msgSend(CPArray,"array");
librarySections=objj_msgSend(CPArray,"array");
_mediaItemsController=objj_msgSend(objj_msgSend(CPArrayController,"alloc"),"init");
objj_msgSend(_mediaItemsController,"setSortDescriptors:",objj_msgSend(CPArray,"arrayWithObject:",objj_msgSend(CPSortDescriptor,"sortDescriptorWithKey:ascending:","titleSort",YES)));
_selectedLibrarySectionController=objj_msgSend(objj_msgSend(CPObjectController,"alloc"),"init");
var _a=objj_msgSend(objj_msgSend(MMContainer,"alloc"),"initWithFrame:",CGRectMake(0,CGRectGetMaxY(objj_msgSend(_9,"bounds"))-32,CGRectGetWidth(objj_msgSend(_9,"bounds")),32));
objj_msgSend(_a,"setAutoresizingMask:",CPViewMinYMargin|CPViewWidthSizable);
objj_msgSend(_9,"addSubview:",_a);
statusLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",objj_msgSend(_a,"bounds"));
objj_msgSend(statusLabel,"setAutoresizingMask:",CPViewMinXMargin|CPViewMaxXMargin|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(statusLabel,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(statusLabel,"setVerticalAlignment:",CPCenterTextAlignment);
objj_msgSend(_a,"addSubview:",statusLabel);
plusMinusSegments=objj_msgSend(objj_msgSend(CPSegmentedControl,"alloc"),"initWithFrame:",CGRectMake(15,(CGRectGetHeight(objj_msgSend(_a,"frame"))-_3)/2,0,_3));
objj_msgSend(plusMinusSegments,"setTarget:",_6);
objj_msgSend(plusMinusSegments,"setAction:",sel_getUid("addOrRemoveSection:"));
objj_msgSend(plusMinusSegments,"setTrackingMode:",CPSegmentSwitchTrackingMomentary);
objj_msgSend(plusMinusSegments,"setSegmentCount:",2);
objj_msgSend(plusMinusSegments,"setImage:forSegment:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initByReferencingFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","plus.png"),CGSizeMake(8,8)),_1);
objj_msgSend(plusMinusSegments,"setWidth:forSegment:",30,_1);
objj_msgSend(plusMinusSegments,"setImage:forSegment:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initByReferencingFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","minus.png"),CGSizeMake(8,8)),_2);
objj_msgSend(plusMinusSegments,"setWidth:forSegment:",30,_2);
objj_msgSend(_a,"addSubview:",plusMinusSegments);
var _b=objj_msgSend(MMActionPopUpButton,"button");
objj_msgSend(_b,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(plusMinusSegments,"frame"))+5,(CGRectGetHeight(objj_msgSend(_a,"frame"))-CGRectGetHeight(objj_msgSend(plusMinusSegments,"frame")))/2));
objj_msgSend(_b,"bind:toObject:withKeyPath:options:","enabled",_selectedLibrarySectionController,"contentObject",objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",CPIsNotNilTransformerName,CPValueTransformerNameBindingOption));
objj_msgSend(objj_msgSend(_b,"menu"),"setAutoenablesItems:",NO);
var _c=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",CPLocalizedString("Edit Section","Edit Section"),sel_getUid("editSection:"),nil);
objj_msgSend(_b,"addItem:",_c);
var _d=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",CPLocalizedString("Refresh Section","Refresh Section"),sel_getUid("refreshSection:"),nil);
objj_msgSend(_b,"addItem:",_d);
var _e=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",CPLocalizedString("Refresh Section (force)","Refresh Section (force)"),sel_getUid("forceRefreshSection:"),nil);
objj_msgSend(_b,"addItem:",_e);
var _f=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",CPLocalizedString("Choose Icon","Choose Icon"),nil,nil);
objj_msgSend(_f,"setEnabled:",NO);
objj_msgSend(_b,"addItem:",_f);
var _10=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",CPLocalizedString("Choose Background Art","Choose Background Art"),nil,nil);
objj_msgSend(_10,"setEnabled:",NO);
objj_msgSend(_b,"addItem:",_10);
objj_msgSend(_b,"setTarget:",_6);
objj_msgSend(_a,"addSubview:",_b);
var _11=CGRectGetHeight(objj_msgSend(_9,"bounds"))-CGRectGetHeight(objj_msgSend(_a,"bounds"));
var _12=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,200,_11));
objj_msgSend(_12,"setAutoresizingMask:",CPViewHeightSizable);
objj_msgSend(_9,"addSubview:",_12);
_librarySectionController=objj_msgSend(objj_msgSend(MMLibrarySectionTableViewController,"alloc"),"initWithDelegate:",_6);
var _13=objj_msgSend(objj_msgSend(CPScrollView,"alloc"),"initWithFrame:",objj_msgSend(_12,"bounds"));
objj_msgSend(_13,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_13,"setAutohidesScrollers:",YES);
objj_msgSend(_13,"setDocumentView:",objj_msgSend(_librarySectionController,"view"));
objj_msgSend(_12,"addSubview:",_13);
var _14=objj_msgSend(objj_msgSend(CPBox,"alloc"),"initWithFrame:",CGRectMake(CGRectGetMaxX(objj_msgSend(_12,"frame")),0,1,_11));
objj_msgSend(_14,"setBorderColor:",objj_msgSend(CPColor,"colorWithWhite:alpha:",180/255,1));
objj_msgSend(_9,"addSubview:",_14);
rightView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(CGRectGetMaxX(objj_msgSend(_14,"frame")),0,CGRectGetWidth(objj_msgSend(_9,"bounds"))-CGRectGetMaxX(objj_msgSend(_14,"frame")),_11));
objj_msgSend(_9,"addSubview:",rightView);
_viewWithToolbar=objj_msgSend(objj_msgSend(MMViewWithToolbar,"alloc"),"initWithFrame:",objj_msgSend(rightView,"bounds"));
objj_msgSend(_viewWithToolbar,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_viewWithToolbar,"setDataSource:",_6);
objj_msgSend(rightView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(rightView,"addSubview:",_viewWithToolbar);
var _15=objj_msgSend(CPButton,"buttonWithTitle:","Settings");
objj_msgSend(_15,"setTarget:",_6);
objj_msgSend(_15,"setAction:",sel_getUid("_settingsButtonWasClicked:"));
objj_msgSend(_15,"setKeyEquivalent:",",");
objj_msgSend(_15,"setKeyEquivalentModifierMask:",CPControlKeyMask);
objj_msgSend(_15,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_viewWithToolbar,"addNavBarButton:",_15);
var _16=30;
mediaItemsScrollView=objj_msgSend(objj_msgSend(MMScrollView,"alloc"),"initWithFrame:",objj_msgSend(_viewWithToolbar,"contentRect"));
objj_msgSend(mediaItemsScrollView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(mediaItemsScrollView,"setAutohidesScrollers:",YES);
_librarySectionToolbar=objj_msgSend(objj_msgSend(MMToolbar,"alloc"),"initWithFrame:style:",objj_msgSend(_viewWithToolbar,"toolbarRect"),MMToolbarHUDStyle);
objj_msgSend(_librarySectionToolbar,"setAutoresizingMask:",CPViewMinYMargin|CPViewWidthSizable);
objj_msgSend(_viewWithToolbar,"pushContentView:toolbar:",mediaItemsScrollView,_librarySectionToolbar);
var _17=objj_msgSend(HUDButton,"buttonWithTitle:",CPLocalizedString("Edit Section","Edit Section"));
objj_msgSend(_17,"setFrameOrigin:",CGPointMake(CGRectGetWidth(objj_msgSend(_librarySectionToolbar,"frame"))-5-CGRectGetWidth(objj_msgSend(_17,"frame")),(CGRectGetHeight(objj_msgSend(_librarySectionToolbar,"frame"))-CGRectGetHeight(objj_msgSend(_17,"frame")))/2));
objj_msgSend(_17,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin|CPViewMinXMargin);
objj_msgSend(_17,"setTarget:",_6);
objj_msgSend(_17,"setAction:",sel_getUid("editSectionButtonClicked:"));
objj_msgSend(_librarySectionToolbar,"addSubview:",_17);
var _18=objj_msgSend(HUDButton,"buttonWithTitle:",CPLocalizedString("Customize Section","Customize Section"));
objj_msgSend(_18,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_17,"frame"))-5-CGRectGetWidth(objj_msgSend(_18,"frame")),CGRectGetMinY(objj_msgSend(_17,"frame"))));
objj_msgSend(_18,"setAutoresizingMask:",objj_msgSend(_17,"autoresizingMask"));
objj_msgSend(_18,"setEnabled:",NO);
objj_msgSend(_librarySectionToolbar,"addSubview:",_18);
mediaGridView=objj_msgSend(objj_msgSend(MMMediaItemCollectionView,"alloc"),"initWithFrame:",objj_msgSend(mediaItemsScrollView,"bounds"));
objj_msgSend(mediaGridView,"setDelegate:",_6);
var _19=objj_msgSend(objj_msgSend(CPCollectionViewItem,"alloc"),"init"),_1a=objj_msgSend(objj_msgSend(MMMediaItemCell,"alloc"),"initWithFrame:",CGRectMake(0,0,175,220));
objj_msgSend(_19,"setView:",_1a);
objj_msgSend(mediaGridView,"setItemPrototype:",_19);
objj_msgSend(mediaGridView,"setMinItemSize:",objj_msgSend(_1a,"frame").size);
objj_msgSend(mediaGridView,"setMaxItemSize:",objj_msgSend(_1a,"frame").size);
objj_msgSend(mediaGridView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(mediaGridView,"bind:toObject:withKeyPath:options:","librarySection",_selectedLibrarySectionController,"content",nil);
objj_msgSend(statusLabel,"bind:toObject:withKeyPath:options:",CPValueBinding,mediaGridView,"status",nil);
objj_msgSend(_6,"bind:toObject:withKeyPath:options:","librarySections",objj_msgSend(_librarySectionController,"librarySectionsController"),"selectedObjects",nil);
objj_msgSend(mediaItemsScrollView,"setDocumentView:",mediaGridView);
var _1b=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"initWithFrame:",CGRectMakeZero()),_1c=objj_msgSend(_1b,"currentValueForThemeAttribute:","help-image"),_1d=objj_msgSend(_1b,"currentValueForThemeAttribute:","help-image-pressed"),_1e=_1c?objj_msgSend(_1c,"size"):CGSizeMakeZero(),_1f=CGRectMake(CGRectGetWidth(objj_msgSend(_a,"frame"))-5-_1e.width,(CGRectGetHeight(objj_msgSend(_a,"frame"))-_1e.height)/2,_1e.width,_1e.height);
var _20=objj_msgSend(objj_msgSend(CPButton,"alloc"),"initWithFrame:",_1f);
objj_msgSend(_20,"setTarget:",_6);
objj_msgSend(_20,"setAction:",sel_getUid("help:"));
objj_msgSend(_20,"setImage:",_1c);
objj_msgSend(_20,"setAlternateImage:",_1d);
objj_msgSend(_20,"setBordered:",NO);
objj_msgSend(_20,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_a,"addSubview:",_20);
objj_msgSend(window,"orderFront:",_6);
var _21=objj_msgSend(CPNotificationCenter,"defaultCenter");
mediaDataSource=objj_msgSend(objj_msgSend(MMLibraryMediaDataSource,"alloc"),"initWithDelegate:",_6);
objj_msgSend(_21,"addObserver:selector:name:object:",_6,sel_getUid("_librarySectionsDataSourceDidFailToCreateRecord:"),MMDataSourceDidFailToCreateRecord,objj_msgSend(MMLibrarySectionsDataSource,"sharedDataSource"));
objj_msgSend(_21,"addObserver:selector:name:object:",_6,sel_getUid("_recordWasUpdated:"),MMDataSourceDidUpdateRecord,nil);
objj_msgSend(_21,"addObserver:selector:name:object:",_6,sel_getUid("_recordWasDeleted:"),MMDataSourceDidDeleteRecord,nil);
objj_msgSend(_21,"addObserver:selector:name:object:",_6,sel_getUid("_recordWasCreated:"),MMDataSourceDidCreateRecord,nil);
objj_msgSend(LanguageConfig,"initialize");
objj_msgSend(MMPrefsController,"sharedPrefsController");
objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"addObserver:selector:",_6,sel_getUid("locationDidChange:"));
CPLog.trace("[%@ -applicationDidFinishLaunching:] END",objj_msgSend(_6,"class"));
}
}),new objj_method(sel_getUid("_recordWasUpdated:"),function(_22,_23,_24){
with(_22){
var _25=objj_msgSend(_24,"userInfo"),_26=objj_msgSend(_25,"objectForKey:","record"),_27=objj_msgSend(_25,"objectForKey:","contextInfo");
if(!objj_msgSend(_26,"isKindOfClass:",MMLibraryMediaItem)||!objj_msgSend(objj_msgSend(_26,"librarySection"),"isEqual:",_librarySection)){
return;
}
var _28=objj_msgSend(objj_msgSend(mediaGridView,"content"),"indexOfObject:",_26);
if(_28==CPNotFound){
CPLog.info("[%@ _recordWasUpdated:] we haven't seen %@ before, add it",objj_msgSend(_22,"class"),_26);
objj_msgSend(_22,"_recordWasCreated:",_24);
}
}
}),new objj_method(sel_getUid("_recordWasDeleted:"),function(_29,_2a,_2b){
with(_29){
var _2c=objj_msgSend(_2b,"userInfo"),_2d=objj_msgSend(_2c,"objectForKey:","record");
if(!objj_msgSend(_2d,"isKindOfClass:",MMLibraryMediaItem)||!objj_msgSend(objj_msgSend(_2d,"librarySection"),"isEqual:",_librarySection)){
return;
}
CPLog.info("[%@ _recordWasDeleted:] removing record with id=%@",objj_msgSend(_29,"class"),objj_msgSend(_2d,"id"));
objj_msgSend(mediaGridView,"removeObject:",_2d);
}
}),new objj_method(sel_getUid("_recordWasCreated:"),function(_2e,_2f,_30){
with(_2e){
var _31=objj_msgSend(_30,"userInfo"),_32=objj_msgSend(_31,"objectForKey:","record");
if(!objj_msgSend(_32,"isKindOfClass:",MMLibraryMediaItem)||!objj_msgSend(objj_msgSend(_32,"librarySection"),"isEqual:",_librarySection)){
return;
}
CPLog.info("[%@ _recordWasCreated:] adding record %@",objj_msgSend(_2e,"class"),_32);
objj_msgSend(mediaGridView,"insertObject:inArraySortedByDescriptors:",_32,objj_msgSend(_mediaItemsController,"sortDescriptors"));
}
}),new objj_method(sel_getUid("titleForContentView:inViewWithToolbar:"),function(_33,_34,_35,_36){
with(_33){
switch(_35){
case mediaItemsScrollView:
return objj_msgSend(objj_msgSend(_33,"selectedLibrarySection"),"title")||"";
case _mediaItemView:
return objj_msgSend(objj_msgSend(_mediaItemView,"mediaItem"),"title");
default:
return nil;
}
}
}),new objj_method(sel_getUid("locationHashForContentView:inViewWithToolbar:"),function(_37,_38,_39,_3a){
with(_37){
switch(_39){
case mediaItemsScrollView:
return _librarySectionLocationHash;
case _mediaItemView:
return _mediaItemLocationHash;
default:
return nil;
}
}
}),new objj_method(sel_getUid("locationDidChange:"),function(_3b,_3c,_3d){
with(_3b){
if(_preventUpdates){
return;
}
var _3e=objj_msgSend(_librarySectionController,"librarySectionsController");
_librarySection=nil;
_mediaItem=nil;
var _3f=objj_msgSend(_3d,"componentsSeparatedByString:","/");
objj_msgSend(_3f,"removeObjectIdenticalTo:","");
if(objj_msgSend(_3f,"count")>=2&&objj_msgSend(objj_msgSend(_3f,"objectAtIndex:",0),"isEqualToString:","sections")){
var _40=objj_msgSend(_3f,"objectAtIndex:",1);
if(_40){
var _41=objj_msgSend(_3e,"arrangedObjects");
for(var i=0,_42=objj_msgSend(_41,"count");i<_42;i++){
var _43=objj_msgSend(_41,"objectAtIndex:",i);
if(objj_msgSend(objj_msgSend(_43,"id"),"isEqual:",_40)){
_librarySection=_43;
break;
}
}
objj_msgSend(_librarySectionController,"selectSectionWithId:",_40);
}
if(objj_msgSend(_3f,"count")>=4&&objj_msgSend(objj_msgSend(_3f,"objectAtIndex:",2),"isEqualToString:","media")){
var _44=objj_msgSend(_3f,"objectAtIndex:",3);
if(_44){
var _45=objj_msgSend(mediaGridView,"content");
for(var i=0,_42=objj_msgSend(_45,"count");i<_42;i++){
var _46=objj_msgSend(_45,"objectAtIndex:",i);
if(objj_msgSend(objj_msgSend(_46,"id"),"isEqual:",_44)){
_mediaItem=_46;
break;
}
}
_wantedMediaItemId=_mediaItem?nil:_44;
}
}
}
_preventUpdates=YES;
if(_mediaItem){
objj_msgSend(_3b,"presentMediaItem:",_mediaItem);
}else{
if(!_wantedMediaItemId&&_librarySection){
objj_msgSend(_3e,"setSelectedObjects:",[_librarySection]);
}
}
_preventUpdates=NO;
}
}),new objj_method(sel_getUid("setLibrarySections:"),function(_47,_48,_49){
with(_47){
var _4a=(objj_msgSend(_49,"count")>0)?objj_msgSend(_49,"objectAtIndex:",0):nil,_4b=!objj_msgSend(_librarySection,"isEqual:",_4a);
_librarySection=_4a;
objj_msgSend(plusMinusSegments,"setEnabled:forSegment:",_4a!=nil,_2);
if(_4b){
objj_msgSend(objj_msgSend(MMLibraryTimelineDataSource,"sharedDataSource"),"stopWatchingTimeline");
}
if(_4b&&_4a){
objj_msgSend(objj_msgSend(MMLibraryTimelineDataSource,"sharedDataSource"),"watchTimelineForLibrarySection:",_4a);
}
if(_4b){
objj_msgSend(mediaGridView,"setContent:",[]);
}
if(_4b){
objj_msgSend(_selectedLibrarySectionController,"setContent:",_4a);
}
if(_4a&&_4b){
objj_msgSend(mediaDataSource,"refreshRecordsWithContextInfo:",_4a);
}
_librarySectionLocationHash=_4a&&objj_msgSend(CPString,"stringWithFormat:","/sections/%@",objj_msgSend(_4a,"id"));
if(!_wantedMediaItemId&&_4a&&_4b){
objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"setLocation:",_librarySectionLocationHash);
}
if(objj_msgSend(_49,"count")!=0&&_4b){
objj_msgSend(_47,"dismissHelp");
}else{
if(objj_msgSend(_49,"count")==0&&objj_msgSend(_librarySectionController,"hasLoadedSections")){
objj_msgSend(_47,"showHelp");
}
}
if(_preventUpdates||_wantedMediaItemId){
return;
}
if(!_mediaItem){
objj_msgSend(_viewWithToolbar,"popContentViewsUntil:",mediaItemsScrollView);
objj_msgSend(_viewWithToolbar,"popToolbarsUntil:",_librarySectionToolbar);
objj_msgSend(window,"makeFirstResponder:",mediaGridView);
}
}
}),new objj_method(sel_getUid("showHelp"),function(_4c,_4d){
with(_4c){
_showingHelp=YES;
if(!_firstRunView){
_firstRunView=objj_msgSend(objj_msgSend(MMFirstRunView,"alloc"),"initWithFrame:",objj_msgSend(_viewWithToolbar,"frame"));
objj_msgSend(_firstRunView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
}
if(objj_msgSend(_firstRunView,"superview")){
return;
}
objj_msgSend(_firstRunView,"setFrame:",objj_msgSend(_viewWithToolbar,"frame"));
objj_msgSend(objj_msgSend(_viewWithToolbar,"superview"),"replaceSubview:with:",_viewWithToolbar,_firstRunView);
}
}),new objj_method(sel_getUid("dismissHelp"),function(_4e,_4f){
with(_4e){
_showingHelp=NO;
if(!objj_msgSend(_firstRunView,"superview")){
return;
}
objj_msgSend(_viewWithToolbar,"setFrame:",objj_msgSend(_firstRunView,"frame"));
objj_msgSend(objj_msgSend(_firstRunView,"superview"),"replaceSubview:with:",_firstRunView,_viewWithToolbar);
}
}),new objj_method(sel_getUid("help:"),function(_50,_51,_52){
with(_50){
if(_showingHelp){
objj_msgSend(_50,"dismissHelp");
}else{
objj_msgSend(_50,"showHelp");
}
}
}),new objj_method(sel_getUid("_librarySectionsDataSourceDidFailToCreateRecord:"),function(_53,_54,_55){
with(_53){
objj_msgSend(objj_msgSend(_53,"class"),"notifyUserOfError:withTitle:",objj_msgSend(objj_msgSend(_55,"userInfo"),"objectForKey:","error"),CPLocalizedString("Unable to create library section","Unable to create library section"));
}
}),new objj_method(sel_getUid("dataSource:didReceiveRecords:contextInfo:"),function(_56,_57,_58,_59,_5a){
with(_56){
if(_58!=mediaDataSource){
return;
}
if(!objj_msgSend(objj_msgSend(_56,"selectedLibrarySection"),"isEqual:",_5a)){
return;
}
var _5b=_5a;
objj_msgSend(mediaGridView,"scrollPoint:",CGPointMake(0,0));
objj_msgSend(mediaGridView,"setSelectionIndexes:",objj_msgSend(CPIndexSet,"indexSet"));
objj_msgSend(mediaGridView,"setContent:",_59);
objj_msgSend(objj_msgSend(MMLibraryTimelineDataSource,"sharedDataSource"),"watchTimelineForLibrarySection:",_5b);
objj_msgSend(_56,"locationDidChange:",objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"formattedHash"));
}
}),new objj_method(sel_getUid("dataSource:didFailToReceiveRecordsWithError:contextInfo:"),function(_5c,_5d,_5e,_5f,_60){
with(_5c){
objj_msgSend(objj_msgSend(_5c,"class"),"notifyUserOfConnectionError:",_5f);
}
}),new objj_method(sel_getUid("dataSource:didFailToDeleteRecord:withError:contextInfo:"),function(_61,_62,_63,_64,_65,_66){
with(_61){
var _67=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(_67,"setAlertStyle:",CPCriticalAlertStyle);
objj_msgSend(_67,"setTitle:",objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Unable to remove section \"%@\"","Error title for when we cannot remove a library section"),objj_msgSend(_64,"title")));
objj_msgSend(_67,"setMessageText:",objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Got this error: %@. Are you sure Plex Media Server is running?","Error message for when we cannot remove a library section"),_65));
objj_msgSend(_67,"runModal");
}
}),new objj_method(sel_getUid("selectedLibrarySection"),function(_68,_69){
with(_68){
return objj_msgSend(_librarySectionController,"selectedLibrarySection");
}
}),new objj_method(sel_getUid("librarySectionWasActivated:"),function(_6a,_6b,_6c){
with(_6a){
objj_msgSend(_6a,"_beginEditingSection:",_6c);
}
}),new objj_method(sel_getUid("collectionView:didDoubleClickOnItemAtIndex:"),function(_6d,_6e,_6f,_70){
with(_6d){
objj_msgSend(_6d,"presentMediaItem:",objj_msgSend(objj_msgSend(mediaGridView,"content"),"objectAtIndex:",_70));
}
}),new objj_method(sel_getUid("presentMediaItem:"),function(_71,_72,_73){
with(_71){
_mediaItem=_73;
if(!_mediaItemView){
_mediaItemView=objj_msgSend(objj_msgSend(MMMediaItemDetailView,"alloc"),"initWithFrame:",objj_msgSend(_viewWithToolbar,"contentRect"));
objj_msgSend(_mediaItemView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
}
objj_msgSend(_mediaItemView,"setMediaItem:",_73);
objj_msgSend(_viewWithToolbar,"pushContentView:toolbar:",_mediaItemView,objj_msgSend(_mediaItemView,"toolbar"));
_mediaItemLocationHash=objj_msgSend(CPString,"stringWithFormat:","/sections/%@/media/%@",objj_msgSend(objj_msgSend(_selectedLibrarySectionController,"content"),"id"),objj_msgSend(_73,"id"));
objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"setLocation:",_mediaItemLocationHash);
}
}),new objj_method(sel_getUid("addOrRemoveSection:"),function(_74,_75,_76){
with(_74){
switch(objj_msgSend(_76,"selectedSegment")){
case _1:
var _77=objj_msgSend(objj_msgSend(MMSectionSettingsSheet,"alloc"),"initWithDataSource:",objj_msgSend(MMLibrarySectionsDataSource,"sharedDataSource"));
objj_msgSend(_77,"beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:",window,_74,sel_getUid("_addDidEnd:returnCode:contextInfo:"),objj_msgSend(objj_msgSend(MMLibrarySection,"alloc"),"init"));
break;
case _2:
var _78=objj_msgSend(_74,"selectedLibrarySection"),_79=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(_79,"setAlertStyle:",CPWarningAlertStyle);
objj_msgSend(_79,"setMessageText:",objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Are you sure you want to remove the section named \"%@\"?","Confirmation message for removing a section"),objj_msgSend(_78,"title")));
objj_msgSend(_79,"setInformativeText:",CPLocalizedString("Any content in this section will no longer be available in your library. The files on your computer will not be removed.","Informative text for removing a section"));
objj_msgSend(_79,"setDelegate:",_74);
objj_msgSend(_79,"addButtonWithTitle:",CPLocalizedString("Remove Section","Remove section confirmation button"));
objj_msgSend(_79,"addButtonWithTitle:",CPLocalizedString("Cancel","Cancel"));
objj_msgSend(_79,"beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:",window,_74,sel_getUid("removeSectionConfirmationDidEnd:returnCode:contextInfo:"),_78);
break;
}
}
}),new objj_method(sel_getUid("_addDidEnd:returnCode:contextInfo:"),function(_7a,_7b,_7c,_7d,_7e){
with(_7a){
}
}),new objj_method(sel_getUid("_editDidEnd:returnCode:contextInfo:"),function(_7f,_80,_81,_82,_83){
with(_7f){
}
}),new objj_method(sel_getUid("editSection:"),function(_84,_85,_86){
with(_84){
objj_msgSend(_84,"_beginEditingSection:",objj_msgSend(_84,"selectedLibrarySection"));
}
}),new objj_method(sel_getUid("refreshSection:"),function(_87,_88,_89){
with(_87){
objj_msgSend(objj_msgSend(MMLibrarySectionsDataSource,"sharedDataSource"),"refreshSection:force:",objj_msgSend(_87,"selectedLibrarySection"),false);
}
}),new objj_method(sel_getUid("forceRefreshSection:"),function(_8a,_8b,_8c){
with(_8a){
objj_msgSend(objj_msgSend(MMLibrarySectionsDataSource,"sharedDataSource"),"refreshSection:force:",objj_msgSend(_8a,"selectedLibrarySection"),true);
}
}),new objj_method(sel_getUid("editSectionButtonClicked:"),function(_8d,_8e,_8f){
with(_8d){
objj_msgSend(_8d,"_beginEditingSection:",objj_msgSend(_8d,"selectedLibrarySection"));
}
}),new objj_method(sel_getUid("_beginEditingSection:"),function(_90,_91,_92){
with(_90){
var _93=objj_msgSend(objj_msgSend(MMSectionSettingsSheet,"alloc"),"initWithDataSource:",objj_msgSend(MMLibrarySectionsDataSource,"sharedDataSource"));
objj_msgSend(_93,"beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:",window,_90,sel_getUid("_editDidEnd:returnCode:contextInfo:"),_92);
}
}),new objj_method(sel_getUid("_settingsButtonWasClicked:"),function(_94,_95,_96){
with(_94){
var _97=objj_msgSend(objj_msgSend(MMPreferencesPanel,"alloc"),"initWithFrame:",CGRectMake(0,0,500,200));
objj_msgSend(_97,"sizeToFit");
objj_msgSend(_97,"presentSheetInWindow:",window);
}
}),new objj_method(sel_getUid("removeSectionConfirmationDidEnd:returnCode:contextInfo:"),function(_98,_99,_9a,_9b,_9c){
with(_98){
if(_9b===0){
objj_msgSend(objj_msgSend(MMLibrarySectionsDataSource,"sharedDataSource"),"deleteRecord:",_9c);
}
}
})]);
class_addMethods(_5,[new objj_method(sel_getUid("notifyUserOfError:withTitle:"),function(_9d,_9e,_9f,_a0){
with(_9d){
var _a1=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(_a1,"setAlertStyle:",CPCriticalAlertStyle);
objj_msgSend(_a1,"setTitle:",_a0);
objj_msgSend(_a1,"setMessageText:",_9f);
objj_msgSend(_a1,"runModal");
}
}),new objj_method(sel_getUid("notifyUserOfConnectionError:"),function(_a2,_a3,_a4){
with(_a2){
objj_msgSend(_a2,"notifyUserOfError:withTitle:",objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Connecting to Plex Media Server failed with this error: %@.\n\nAre you sure it's running?","Error message for when we cannot connect to PMS or when the response is invalid"),_a4),CPLocalizedString("Unable to connect to Plex Media Server","Error title for when we cannot connect to PMS or when the response is invalid"));
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
p;24;CPDictionary+URLParams.jt;1739;@STATIC;1.0;t;1720;
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
key=objj_msgSend(_13,"substringToIndex:",_15.location-1),_16=objj_msgSend(_13,"substringFromIndex:",CPMaxRange(_15));
}
objj_msgSend(_14,"addObject:forKey:",_16,key);
}
return _14;
}
})]);
p;21;CPImage+Transcoding.jt;1801;@STATIC;1.0;I;16;AppKit/CPImage.ji;15;Models/PMSURL.jt;1741;
objj_executeFile("AppKit/CPImage.j",NO);
objj_executeFile("Models/PMSURL.j",YES);
var _1=100000;
var _2="/photo/:/transcode";
var _3=objj_getClass("CPImage");
if(!_3){
throw new SyntaxError("*** Could not find definition for class \"CPImage\"");
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("constrainedToSize:"),function(_5,_6,_7){
with(_5){
return objj_msgSend(objj_msgSend(objj_msgSend(_5,"class"),"alloc"),"initByReferencingFile:size:",objj_msgSend(objj_msgSend(_5,"class"),"URLForImageAtURL:constrainedToSize:",objj_msgSend(_5,"filename"),_7),CGSizeMake(-1,-1));
}
}),new objj_method(sel_getUid("constrainedToWidth:"),function(_8,_9,_a){
with(_8){
return objj_msgSend(_8,"constrainedToSize:",CGSizeMake(_a,_1));
}
}),new objj_method(sel_getUid("constrainedToHeight:"),function(_b,_c,_d){
with(_b){
return objj_msgSend(_b,"constrainedToSize:",CGSizeMake(_1,_d));
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("URLForImageAtURL:constrainedToSize:"),function(_e,_f,_10,_11){
with(_e){
var _12=objj_msgSend(CPDictionary,"dictionary");
if(!objj_msgSend(_10,"isKindOfClass:",CPURL)){
_10=objj_msgSend(CPURL,"URLWithString:",_10);
}
if(objj_msgSend(objj_msgSend(_10,"path"),"hasPrefix:",_2)){
_12=objj_msgSend(CPDictionary,"dictionaryFromURLParams:",objj_msgSend(_10,"parameterString"));
_10=objj_msgSend(CPURL,"URLWithString:",objj_msgSend(_12,"objectForKey:","url"));
}
if(!objj_msgSend(_10,"host")){
_10=objj_msgSend(PMSURL,"URLWithPath:",objj_msgSend(_10,"absoluteString"));
}
objj_msgSend(_12,"setObject:forKey:",_10,"url");
objj_msgSend(_12,"setObject:forKey:",_11.width,"width");
objj_msgSend(_12,"setObject:forKey:",_11.height,"height");
return objj_msgSend(PMSURL,"URLWithPath:params:",_2,_12);
}
})]);
p;24;CPObject+XMLAttributes.jt;879;@STATIC;1.0;t;861;
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
}),_d=String(_9.nodeValue),_e=objj_msgSend(_7,"_modifierForKey:",_a);
if(_e){
objj_msgSend(_3,_e,_d);
continue;
}
if(objj_msgSend(_7,"accessInstanceVariablesDirectly")){
var _f=objj_msgSend(_3,"_ivarForKey:",_a);
if(_f){
objj_msgSend(_3,"willChangeValueForKey:",_a);
_3[_f]=_d;
objj_msgSend(_3,"didChangeValueForKey:",_a);
continue;
}
}
if(!_6){
objj_msgSend(_3,"setValue:forUndefinedKey:",_d,_a);
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
p;37;Controllers/MMImagePickerController.jt;11040;@STATIC;1.0;I;33;Foundation/CPNotificationCenter.jI;25;AppKit/CPViewController.ji;40;../CPValueTransformer+FunctionCallback.ji;27;../Views/MMCollectionView.ji;28;../Views/MMImagePickerCell.ji;20;../Views/MMToolbar.ji;20;../Views/HUDButton.jt;10792;
objj_executeFile("Foundation/CPNotificationCenter.j",NO);
objj_executeFile("AppKit/CPViewController.j",NO);
objj_executeFile("../CPValueTransformer+FunctionCallback.j",YES);
objj_executeFile("../Views/MMCollectionView.j",YES);
objj_executeFile("../Views/MMImagePickerCell.j",YES);
objj_executeFile("../Views/MMToolbar.j",YES);
objj_executeFile("../Views/HUDButton.j",YES);
var _1=objj_allocateClassPair(CPViewController,"MMImagePickerController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_delegate"),new objj_ivar("_mediaItem"),new objj_ivar("_imagesController"),new objj_ivar("_dataSource"),new objj_ivar("_scrollView"),new objj_ivar("_imageGridView"),new objj_ivar("_toolbar"),new objj_ivar("_itemSize")]);
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
}),new objj_method(sel_getUid("toolbar"),function(_14,_15){
with(_14){
return _toolbar;
}
}),new objj_method(sel_getUid("itemSize"),function(_16,_17){
with(_16){
return _itemSize;
}
}),new objj_method(sel_getUid("setItemSize:"),function(_18,_19,_1a){
with(_18){
_itemSize=_1a;
}
}),new objj_method(sel_getUid("init"),function(_1b,_1c){
with(_1b){
if(_1b=objj_msgSendSuper({receiver:_1b,super_class:objj_getClass("MMImagePickerController").super_class},"init")){
_imagesController=objj_msgSend(objj_msgSend(CPArrayController,"alloc"),"init");
}
return _1b;
}
}),new objj_method(sel_getUid("initWithDelegate:"),function(_1d,_1e,_1f){
with(_1d){
if(_1d=objj_msgSend(_1d,"init")){
_delegate=_1f;
}
return _1d;
}
}),new objj_method(sel_getUid("setMediaItem:"),function(_20,_21,_22){
with(_20){
if(objj_msgSend(_mediaItem,"isEqual:",_22)){
return;
}
_mediaItem=_22;
objj_msgSend(_20,"refreshImagesFromDataSource");
}
}),new objj_method(sel_getUid("setDataSource:"),function(_23,_24,_25){
with(_23){
if(_dataSource==_25){
return;
}
objj_msgSend(_dataSource,"removeArrayController:",_imagesController);
if(_dataSource){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_23,MMDataSourceDidFailToReceiveRecords,_dataSource);
}
_dataSource=_25;
objj_msgSend(_dataSource,"addArrayController:",_imagesController);
if(_dataSource){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_23,sel_getUid("_didFailToReceiveRecords:"),MMDataSourceDidFailToReceiveRecords,_dataSource);
}
objj_msgSend(_23,"refreshImagesFromDataSource");
}
}),new objj_method(sel_getUid("_didFailToReceiveRecords:"),function(_26,_27,_28){
with(_26){
objj_msgSend(AppController,"notifyUserOfConnectionError:",objj_msgSend(objj_msgSend(_28,"userInfo"),"objectForKey:","error"));
}
}),new objj_method(sel_getUid("refreshImagesFromDataSource"),function(_29,_2a){
with(_29){
if(_mediaItem){
objj_msgSend(_dataSource,"refreshRecordsWithContextInfo:",_mediaItem);
}
}
}),new objj_method(sel_getUid("viewDidMoveToSuperview"),function(_2b,_2c){
with(_2b){
objj_msgSendSuper({receiver:_2b,super_class:objj_getClass("MMImagePickerController").super_class},"viewDidMoveToSuperview");
objj_msgSend(objj_msgSend(objj_msgSend(_2b,"view"),"window"),"makeFirstResponder:",_imageGridView);
}
}),new objj_method(sel_getUid("dismissPicker"),function(_2d,_2e){
with(_2d){
var _2f=objj_msgSend(objj_msgSend(CPViewAnimation,"alloc"),"initWithViewAnimations:",objj_msgSend(CPArray,"arrayWithObjects:",objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(_2d,"view"),CPViewAnimationTargetKey,objj_msgSend(objj_msgSend(_2d,"view"),"frame"),CPViewAnimationStartFrameKey,CGRectOffset(objj_msgSend(objj_msgSend(_2d,"view"),"frame"),0,CGRectGetHeight(objj_msgSend(objj_msgSend(_2d,"view"),"frame"))),CPViewAnimationEndFrameKey)));
objj_msgSend(_2f,"setDuration:",0.25);
objj_msgSend(_2f,"setAnimationCurve:",CPAnimationEaseIn);
objj_msgSend(_2f,"startAnimation");
objj_msgSend(objj_msgSend(_toolbar,"superview"),"popToolbar:",_toolbar);
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:callback:repeats:",0.25,function(){
objj_msgSend(objj_msgSend(_2d,"view"),"removeFromSuperview");
},NO);
}
}),new objj_method(sel_getUid("loadView"),function(_30,_31){
with(_30){
_scrollView=objj_msgSend(objj_msgSend(MMScrollView,"alloc"),"initWithFrame:",CGRectMakeZero());
_imageGridView=objj_msgSend(objj_msgSend(MMCollectionView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(objj_msgSend(_scrollView,"contentView"),"setInsetShadowAlignment:",MMClipViewInsetShadowAlignTop);
objj_msgSend(objj_msgSend(_scrollView,"contentView"),"setBackgroundColor:",objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",50/255,1));
objj_msgSend(_scrollView,"setDocumentView:",_imageGridView);
objj_msgSend(_scrollView,"setAutoresizingMask:",CPViewWidthSizable|CPViewMinYMargin);
objj_msgSend(_scrollView,"setHasVerticalScroller:",NO);
var _32=objj_msgSend(objj_msgSend(CPCollectionViewItem,"alloc"),"init");
objj_msgSend(_32,"setView:",objj_msgSend(objj_msgSend(MMImagePickerCell,"alloc"),"initWithFrame:",{origin:CGPointMake(0,0),size:_itemSize}));
objj_msgSend(_imageGridView,"setDelegate:",_30);
objj_msgSend(_imageGridView,"setItemPrototype:",_32);
objj_msgSend(_imageGridView,"setMinItemSize:",objj_msgSend(objj_msgSend(_32,"view"),"frame").size);
objj_msgSend(_imageGridView,"setMaxItemSize:",objj_msgSend(objj_msgSend(_32,"view"),"frame").size);
objj_msgSend(_imageGridView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_imageGridView,"bind:toObject:withKeyPath:options:","content",_imagesController,"arrangedObjects",nil);
objj_msgSend(_imageGridView,"bind:toObject:withKeyPath:options:","selectionIndexes",_imagesController,"selectionIndexes",nil);
objj_msgSend(_30,"bind:toObject:withKeyPath:options:","content",_imagesController,"arrangedObjects",nil);
objj_msgSend(_scrollView,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_scrollView,"frame")),CGRectGetHeight(objj_msgSend(objj_msgSend(_32,"view"),"frame"))));
_toolbar=objj_msgSend(objj_msgSend(MMToolbar,"alloc"),"initWithFrame:style:",CGRectMake(0,CGRectGetMaxY(objj_msgSend(_scrollView,"frame")),CGRectGetWidth(objj_msgSend(_scrollView,"frame")),30),MMToolbarHUDStyle);
objj_msgSend(_toolbar,"setAutoresizingMask:",CPViewWidthSizable|CPViewMinYMargin);
var _33=objj_msgSend(HUDButton,"buttonWithTitle:",CPLocalizedString("Select Image","Select Image"));
objj_msgSend(_33,"setFrameOrigin:",CGPointMake(CGRectGetWidth(objj_msgSend(_toolbar,"frame"))-5-CGRectGetWidth(objj_msgSend(_33,"frame")),(CGRectGetHeight(objj_msgSend(_toolbar,"frame"))-CGRectGetHeight(objj_msgSend(_33,"frame")))/2));
objj_msgSend(_33,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin|CPViewMinXMargin);
objj_msgSend(_33,"setTarget:",_30);
objj_msgSend(_33,"setAction:",sel_getUid("selectImageButtonClicked:"));
objj_msgSend(_33,"setKeyEquivalent:",CPCarriageReturnCharacter);
objj_msgSend(_33,"bind:toObject:withKeyPath:options:","enabled",_imagesController,"selectionIndexes",objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(CPValueTransformer,"valueTransformerForFunction:",function(_34){
return objj_msgSend(_34,"count")>0;
}),CPValueTransformerBindingOption));
objj_msgSend(_toolbar,"addSubview:",_33);
var _35=objj_msgSend(HUDButton,"buttonWithTitle:",CPLocalizedString("Cancel","Cancel"));
objj_msgSend(_35,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_33,"frame"))-5-CGRectGetWidth(objj_msgSend(_35,"frame")),CGRectGetMinY(objj_msgSend(_33,"frame"))));
objj_msgSend(_35,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin|CPViewMinXMargin);
objj_msgSend(_35,"setAutoresizingMask:",objj_msgSend(_33,"autoresizingMask"));
objj_msgSend(_35,"setTarget:",_30);
objj_msgSend(_35,"setAction:",sel_getUid("cancelButtonClicked:"));
objj_msgSend(_35,"setKeyEquivalent:",CPEscapeFunctionKey);
objj_msgSend(_toolbar,"addSubview:",_35);
objj_msgSend(_30,"setView:",_scrollView);
}
}),new objj_method(sel_getUid("setContent:"),function(_36,_37,_38){
with(_36){
objj_msgSend(_imageGridView,"sizeToFitNumberOfColumns:",objj_msgSend(_38,"count"));
}
}),new objj_method(sel_getUid("selectImageButtonClicked:"),function(_39,_3a,_3b){
with(_39){
var _3c=objj_msgSend(_imagesController,"selectedObjects");
if(objj_msgSend(_3c,"count")==0){
return;
}
objj_msgSend(_39,"_updateMediaItemWithImage:",objj_msgSend(_3c,"objectAtIndex:",0));
objj_msgSend(_39,"dismissPicker");
}
}),new objj_method(sel_getUid("collectionView:didDoubleClickOnItemAtIndex:"),function(_3d,_3e,_3f,_40){
with(_3d){
objj_msgSend(_3d,"_updateMediaItemWithImage:",objj_msgSend(objj_msgSend(_3f,"content"),"objectAtIndex:",_40));
objj_msgSend(_3d,"dismissPicker");
}
}),new objj_method(sel_getUid("_updateMediaItemWithImage:"),function(_41,_42,_43){
with(_41){
objj_msgSend(_dataSource,"selectImage:forMediaItem:",_43,_mediaItem);
}
}),new objj_method(sel_getUid("cancelButtonClicked:"),function(_44,_45,_46){
with(_44){
objj_msgSend(_44,"dismissPicker");
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("presentMediaItem:inView:itemSize:withToolbarView:dataSource:"),function(_47,_48,_49,_4a,_4b,_4c,_4d){
with(_47){
var _4e=objj_msgSend(objj_msgSend(_47,"alloc"),"init");
objj_msgSend(_4e,"setItemSize:",_4b);
var _4f=CGRectMake(0,CGRectGetHeight(objj_msgSend(_4a,"bounds"))-CGRectGetHeight(objj_msgSend(objj_msgSend(_4e,"view"),"frame"))-25,CGRectGetWidth(objj_msgSend(_4a,"bounds")),CGRectGetHeight(objj_msgSend(objj_msgSend(_4e,"view"),"frame"))+25),_50=CGRectOffset(_4f,0,CGRectGetHeight(_4f));
objj_msgSend(_4a,"addSubview:",objj_msgSend(_4e,"view"));
objj_msgSend(_4c,"pushToolbar:",objj_msgSend(_4e,"toolbar"));
var _51=objj_msgSend(objj_msgSend(CPViewAnimation,"alloc"),"initWithViewAnimations:",objj_msgSend(CPArray,"arrayWithObjects:",objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(_4e,"view"),CPViewAnimationTargetKey,_50,CPViewAnimationStartFrameKey,_4f,CPViewAnimationEndFrameKey)));
objj_msgSend(_51,"setDuration:",0.25);
objj_msgSend(_51,"setAnimationCurve:",CPAnimationEaseOut);
objj_msgSend(_51,"startAnimation");
objj_msgSend(_4e,"setMediaItem:",_49);
objj_msgSend(_4e,"setDataSource:",_4d);
objj_msgSend(objj_msgSend(_4a,"window"),"makeFirstResponder:",objj_msgSend(_4e,"imageGridView"));
return _4e;
}
})]);
p;49;Controllers/MMLibrarySectionTableViewController.jt;8143;@STATIC;1.0;I;25;AppKit/CPViewController.jI;26;AppKit/CPArrayController.ji;28;../Models/MMLibrarySection.ji;44;../DataSources/MMLibrarySectionsDataSource.jt;7981;
objj_executeFile("AppKit/CPViewController.j",NO);
objj_executeFile("AppKit/CPArrayController.j",NO);
objj_executeFile("../Models/MMLibrarySection.j",YES);
objj_executeFile("../DataSources/MMLibrarySectionsDataSource.j",YES);
var _1=objj_allocateClassPair(CPViewController,"MMLibrarySectionTableViewController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_delegate"),new objj_ivar("_dataSource"),new objj_ivar("_librarySections"),new objj_ivar("_librarySectionsController"),new objj_ivar("_hasLoadedSections"),new objj_ivar("_suppressSelectionChangeNotification"),new objj_ivar("_selectedRow"),new objj_ivar("_selectedLibrarySection"),new objj_ivar("_desiredLibrarySectionIdSelection")]);
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
_selectedRow=CPNotFound;
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
objj_msgSend(_librarySectionsController,"setContent:",_2c);
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
var _39=objj_msgSend(objj_msgSend(CPTableColumn,"alloc"),"initWithIdentifier:","title");
objj_msgSend(_39,"setWidth:",100);
objj_msgSend(_39,"bind:toObject:withKeyPath:options:","value",_librarySectionsController,"arrangedObjects.title",nil);
objj_msgSend(_38,"setHeaderView:",nil);
objj_msgSend(_38,"setCornerView:",nil);
objj_msgSend(_38,"addTableColumn:",_39);
objj_msgSend(_36,"setView:",_38);
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",6,_36,sel_getUid("_reloadLibrarySections"),nil,YES);
objj_msgSend(_36,"_reloadLibrarySections");
}
}),new objj_method(sel_getUid("_reloadLibrarySections"),function(_3a,_3b){
with(_3a){
objj_msgSend(_dataSource,"refreshRecords");
}
}),new objj_method(sel_getUid("tableViewRowWasDoubleClicked:"),function(_3c,_3d,_3e){
with(_3c){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("librarySectionWasActivated:"))){
var _3f=objj_msgSend(_3e,"clickedRow");
if(objj_msgSend(objj_msgSend(_librarySectionsController,"content"),"count")>_3f&&_3f>=0){
objj_msgSend(_delegate,"librarySectionWasActivated:",objj_msgSend(objj_msgSend(_librarySectionsController,"content"),"objectAtIndex:",objj_msgSend(_3e,"clickedRow")));
}
}
}
})]);
p;37;Controllers/MMMatchPickerController.jt;26825;@STATIC;1.0;I;20;Foundation/CPArray.jI;21;Foundation/CPString.jI;22;Foundation/CPRunLoop.jI;33;Foundation/CPNotificationCenter.jI;20;AppKit/CPAnimation.jI;22;AppKit/CPApplication.jI;17;AppKit/CPButton.jI;16;AppKit/CPImage.jI;22;AppKit/CPPopUpButton.jI;21;AppKit/CPScrollView.jI;20;AppKit/CPTableView.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;25;AppKit/CPViewController.ji;30;../Models/MMLibraryMediaItem.ji;41;../DataSources/MMMediaMatchesDataSource.ji;34;../DataSources/MMAgentDataSource.jt;26321;
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
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("picker:didFailWithError:"))){
objj_msgSend(_delegate,"picker:didFailWithError:",_27,_2a);
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
objj_msgSend(_selectButton,"setAction:",sel_getUid("_selectButtonClicked:"));
objj_msgSend(_selectButton,"setKeyEquivalent:",CPCarriageReturnCharacter);
objj_msgSend(objj_msgSend(_view,"window"),"setDefaultButton:",_selectButton);
objj_msgSend(_cancelButton,"setTarget:",_3c);
objj_msgSend(_cancelButton,"setAction:",sel_getUid("_cancelButtonClicked:"));
objj_msgSend(_cancelButton,"setKeyEquivalent:",CPEscapeFunctionKey);
_searchButton=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Custom Search","Custom Search"));
objj_msgSend(_searchButton,"setTarget:",_3c);
objj_msgSend(_searchButton,"setAction:",sel_getUid("_searchButtonClicked:"));
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
objj_msgSend(_submitSearchButton,"setAction:",sel_getUid("_submitSearchButtonClicked:"));
objj_msgSend(_submitSearchButton,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(_titleField,"frame"))-CGRectGetWidth(objj_msgSend(_submitSearchButton,"frame")),CGRectGetMaxY(objj_msgSend(_yearField,"frame"))+5));
objj_msgSend(_searchFormView,"addSubview:",_submitSearchButton);
_cancelSearchButton=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Cancel","Cancel"));
objj_msgSend(_cancelSearchButton,"setTarget:",_3c);
objj_msgSend(_cancelSearchButton,"setAction:",sel_getUid("_cancelSearchButtonClicked:"));
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
if(_58&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("picker:didSelectSearchResult:"))){
objj_msgSend(_delegate,"picker:didSelectSearchResult:",_56,_58);
}
}
}),new objj_method(sel_getUid("_searchResultAtIndex:"),function(_59,_5a,_5b){
with(_59){
if(_5b==CPNotFound||_5b>=objj_msgSend(_searchResults,"count")){
return nil;
}
return objj_msgSend(_searchResults,"objectAtIndex:",_5b);
}
}),new objj_method(sel_getUid("_cancelButtonClicked:"),function(_5c,_5d,_5e){
with(_5c){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("pickerDidCancel:"))){
objj_msgSend(_delegate,"pickerDidCancel:",_5c);
}
}
}),new objj_method(sel_getUid("_selectButtonClicked:"),function(_5f,_60,_61){
with(_5f){
objj_msgSend(_5f,"_selectSearchResult:",objj_msgSend(_5f,"_searchResultAtIndex:",objj_msgSend(_matchesTableView,"selectedRow")));
}
}),new objj_method(sel_getUid("_searchButtonClicked:"),function(_62,_63,_64){
with(_62){
objj_msgSend(_62,"_transitionFromSubview:toSubview:",_resultView,_searchFormView);
}
}),new objj_method(sel_getUid("_submitSearchButtonClicked:"),function(_65,_66,_67){
with(_65){
objj_msgSend(_matchesDataSource,"refreshRecordsForMediaItem:title:agent:language:year:",_mediaItem,objj_msgSend(_titleField,"stringValue"),objj_msgSend(_65,"selectedAgent"),objj_msgSend(_65,"selectedLanguage"),objj_msgSend(_yearField,"stringValue"));
objj_msgSend(_65,"_transitionFromSubview:toSubview:",_searchFormView,_resultView);
}
}),new objj_method(sel_getUid("_cancelSearchButtonClicked:"),function(_68,_69,_6a){
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
p;40;Controllers/MMMetadataEditorController.jt;18422;@STATIC;1.0;I;25;AppKit/CPViewController.ji;22;../CPDateTransformer.ji;26;../Models/MMMetadataItem.ji;21;../CPView+sizeToFit.ji;27;../Views/MMSheetContainer.ji;23;../Views/MMLockButton.jt;18228;
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
var _12=260,_13=186,_14=122,_15=10,_16=objj_msgSend(CPFont,"boldSystemFontOfSize:",10);
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
var _37=objj_msgSend(CPTokenField,"textFieldWithStringValue:placeholder:width:","","",_12);
var _38=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Writers","Writers"));
objj_msgSend(_38,"setFont:",_16);
objj_msgSend(_38,"sizeToFit");
objj_msgSend(_38,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_2f,"frame")),CGRectGetMaxY(objj_msgSend(_2e,"frame"))+_15));
objj_msgSend(_37,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_38,"frame")),CGRectGetMaxY(objj_msgSend(_38,"frame"))));
objj_msgSend(_37,"bind:toObject:withKeyPath:options:",CPValueBinding,_10,"metadataItem.writers",nil);
objj_msgSend(_17,"addSubview:",_37);
objj_msgSend(_17,"addSubview:",_38);
var _39=objj_msgSend(MMLockButton,"buttonForField:",_37);
objj_msgSend(_39,"bind:toObject:withKeyPath:options:","locked",_10,"metadataItem.writersLocked",nil);
objj_msgSend(_17,"addSubview:",_39);
var _3a=objj_msgSend(CPTokenField,"textFieldWithStringValue:placeholder:width:","","",CGRectGetMinX(objj_msgSend(_33,"frame"))-CGRectGetMinX(objj_msgSend(_39,"frame"))-_15-CGRectGetWidth(objj_msgSend(_39,"frame")));
var _3b=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Directors","Directors"));
objj_msgSend(_3b,"setFont:",_16);
objj_msgSend(_3b,"sizeToFit");
objj_msgSend(_3b,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(_39,"frame"))+_15,CGRectGetMinY(objj_msgSend(_38,"frame"))));
objj_msgSend(_3a,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_3b,"frame")),CGRectGetMaxY(objj_msgSend(_3b,"frame"))));
objj_msgSend(_3a,"bind:toObject:withKeyPath:options:",CPValueBinding,_10,"metadataItem.directors",nil);
objj_msgSend(_17,"addSubview:",_3a);
objj_msgSend(_17,"addSubview:",_3b);
var _3c=objj_msgSend(MMLockButton,"buttonForField:",_3a);
objj_msgSend(_3c,"bind:toObject:withKeyPath:options:","locked",_10,"metadataItem.directorsLocked",nil);
objj_msgSend(_17,"addSubview:",_3c);
var _3d=objj_msgSend(CPTokenField,"textFieldWithStringValue:placeholder:width:","","",_12);
var _3e=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Genres","Genres"));
objj_msgSend(_3e,"setFont:",_16);
objj_msgSend(_3e,"sizeToFit");
objj_msgSend(_3e,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_38,"frame")),CGRectGetMaxY(objj_msgSend(_37,"frame"))+_15));
objj_msgSend(_3d,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_3e,"frame")),CGRectGetMaxY(objj_msgSend(_3e,"frame"))));
objj_msgSend(_3d,"bind:toObject:withKeyPath:options:",CPValueBinding,_10,"metadataItem.genres",nil);
objj_msgSend(_17,"addSubview:",_3d);
objj_msgSend(_17,"addSubview:",_3e);
var _3f=objj_msgSend(MMLockButton,"buttonForField:",_3d);
objj_msgSend(_3f,"bind:toObject:withKeyPath:options:","locked",_10,"metadataItem.genresLocked",nil);
objj_msgSend(_17,"addSubview:",_3f);
var _40=objj_msgSend(CPTokenField,"textFieldWithStringValue:placeholder:width:","","",CGRectGetWidth(objj_msgSend(_3a,"frame")));
var _41=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Collections","Collections"));
objj_msgSend(_41,"setFont:",_16);
objj_msgSend(_41,"sizeToFit");
objj_msgSend(_41,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(_3f,"frame"))+_15,CGRectGetMinY(objj_msgSend(_3e,"frame"))));
objj_msgSend(_40,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_41,"frame")),CGRectGetMaxY(objj_msgSend(_41,"frame"))));
objj_msgSend(_40,"bind:toObject:withKeyPath:options:",CPValueBinding,_10,"metadataItem.collections",nil);
objj_msgSend(_17,"addSubview:",_40);
objj_msgSend(_17,"addSubview:",_41);
var _42=objj_msgSend(MMLockButton,"buttonForField:",_40);
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
p;47;DataSources/MMBackgroundArtMetadataDataSource.jt;1100;@STATIC;1.0;i;27;MMImageMetadataDataSource.ji;18;../Models/PMSURL.jt;1026;
objj_executeFile("MMImageMetadataDataSource.j",YES);
objj_executeFile("../Models/PMSURL.j",YES);
var _1=objj_allocateClassPair(MMImageMetadataDataSource,"MMBackgroundArtMetadataDataSource"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("selectImage:forMediaItem:"),function(_3,_4,_5,_6){
with(_3){
objj_msgSend(_6,"setArt:",objj_msgSend(_5,"filename"));
objj_msgSendSuper({receiver:_3,super_class:objj_getClass("MMBackgroundArtMetadataDataSource").super_class},"selectImage:forMediaItem:",_5,_6);
}
}),new objj_method(sel_getUid("URLForRecordsWithContextInfo:"),function(_7,_8,_9){
with(_7){
return objj_msgSend(_7,"URLForMediaItem:withSuffix:",_9,"/arts");
}
}),new objj_method(sel_getUid("URLForUpdatedRecord:contextInfo:"),function(_a,_b,_c,_d){
with(_a){
var _e=_c,_f=_d;
return objj_msgSend(PMSURL,"URLWithPath:params:",objj_msgSend(_a,"URLForMediaItem:withSuffix:",_f,"/art"),objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(_e,"filename"),"url"));
}
})]);
p;40;DataSources/MMBannerMetadataDataSource.jt;805;@STATIC;1.0;i;27;MMImageMetadataDataSource.ji;18;../Models/PMSURL.jt;732;
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
return objj_msgSend(PMSURL,"URLWithPath:params:",objj_msgSend(_6,"URLForMediaItem:withSuffix:",_b,"/banner"),objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(_a,"filename"),"url"));
}
})]);
p;26;DataSources/MMDataSource.jt;22267;@STATIC;1.0;I;21;Foundation/CPObject.jI;18;Foundation/CPURL.ji;20;../MMURLConnection.ji;13;MMDataStore.jt;22155;
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
p;25;DataSources/MMDataStore.jt;1412;@STATIC;1.0;I;21;Foundation/CPObject.jt;1367;
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
}),new objj_method(sel_getUid("storeRecord:"),function(_c,_d,_e){
with(_c){
objj_msgSend(_records,"setObject:forKey:",_e,objj_msgSend(_c,"recordKeyWithClass:id:",objj_msgSend(_e,"class"),objj_msgSend(_e,"id")));
}
}),new objj_method(sel_getUid("recordKeyWithClass:id:"),function(_f,_10,_11,_12){
with(_f){
return [CPStringFromClass(_11),_12].join(":");
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("defaultDataStore"),function(_13,_14){
with(_13){
if(!_1){
_1=objj_msgSend(objj_msgSend(_13,"alloc"),"init");
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
p;39;DataSources/MMImageMetadataDataSource.jt;1329;@STATIC;1.0;i;14;MMDataSource.ji;18;../Models/PMSURL.jt;1268;
objj_executeFile("MMDataSource.j",YES);
objj_executeFile("../Models/PMSURL.j",YES);
var _1=objj_allocateClassPair(MMDataSource,"MMImageMetadataDataSource"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("URLForMediaItem:withSuffix:"),function(_3,_4,_5,_6){
with(_3){
return objj_msgSend(PMSURL,"URLWithPath:",objj_msgSend(CPString,"stringWithFormat:","/library/metadata/%@%@",objj_msgSend(_5,"id"),_6));
}
}),new objj_method(sel_getUid("selectImage:forMediaItem:"),function(_7,_8,_9,_a){
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
return objj_msgSend(objj_msgSend(CPImage,"alloc"),"initByReferencingFile:size:",String(_1a.getAttribute("ratingKey")),CGSizeMake(-1,-1));
}
})]);
p;38;DataSources/MMLibraryMediaDataSource.jt;1758;@STATIC;1.0;I;21;Foundation/CPObject.ji;30;../Models/MMLibraryMediaItem.ji;14;MMDataSource.ji;27;../CPObject+XMLAttributes.jt;1627;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("../Models/MMLibraryMediaItem.j",YES);
objj_executeFile("MMDataSource.j",YES);
objj_executeFile("../CPObject+XMLAttributes.j",YES);
var _1=objj_allocateClassPair(MMDataSource,"MMLibraryMediaDataSource"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("URLForRecordsWithContextInfo:"),function(_3,_4,_5){
with(_3){
return objj_msgSend(_5,"allMediaItemsURL");
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
return /^(Video|Directory|Media)$/.test(String(_14.nodeName));
}
}),new objj_method(sel_getUid("recordFromElement:contextInfo:"),function(_16,_17,_18,_19){
with(_16){
var id=objj_msgSend(MMLibraryMediaItem,"idFromKey:",String(_18.getAttribute("key"))),_1a=objj_msgSend(objj_msgSend(_16,"dataStore"),"recordWithClass:id:",MMLibraryMediaItem,id);
objj_msgSend(_1a,"setValuesForNodeAttributes:ignoreUndefinedKeys:",_18,YES);
objj_msgSend(_1a,"setLibrarySection:",_19);
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
p;41;DataSources/MMLibraryTimelineDataSource.jt;4077;@STATIC;1.0;I;19;Foundation/CPDate.jI;20;Foundation/CPTimer.ji;26;MMLibraryMediaDataSource.ji;28;../Models/MMLibrarySection.jt;3945;
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
_latestEntryTime=objj_msgSend(CPDate,"date");
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
return objj_msgSend(PMSURL,"URLWithPath:params:",objj_msgSend(CPString,"stringWithFormat:","%@/timeline",objj_msgSend(_16,"URL")),objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",FLOOR(objj_msgSend(_17,"timeIntervalSince1970")),"start"));
}
}),new objj_method(sel_getUid("didReceiveRecordsAsData:connection:contextInfo:"),function(_18,_19,_1a,_1b,_1c){
with(_18){
var _1d=objj_msgSend(_1b,"responseXML"),_1e=_1d.documentElement,_1f=objj_msgSend(_1c,"isKindOfClass:",MMLibrarySection)?_1c:objj_msgSend(_1c,"objectForKey:",MMLibrarySectionContextInfoKey);
_latestEntryTime=objj_msgSend(CPDate,"dateWithTimeIntervalSince1970:",Number(_1e.getAttribute("latestEntryTime")));
objj_msgSendSuper({receiver:_18,super_class:objj_getClass("MMLibraryTimelineDataSource").super_class},"didReceiveRecordsAsData:connection:contextInfo:",_1a,_1b,_1f);
}
}),new objj_method(sel_getUid("didReceiveRecords:connection:contextInfo:"),function(_20,_21,_22,_23,_24){
with(_20){
var _25=objj_msgSend(_24,"isKindOfClass:",MMLibrarySection)?_24:objj_msgSend(_24,"objectForKey:",MMLibrarySectionContextInfoKey);
objj_msgSendSuper({receiver:_20,super_class:objj_getClass("MMLibraryTimelineDataSource").super_class},"didReceiveRecords:connection:contextInfo:",_22,_23,_25);
for(var i=0;i<objj_msgSend(_22,"count");i++){
var _26=objj_msgSend(_22,"objectAtIndex:",i),_27=objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_24,_26],["contextInfo","record"]),_28=MMDataSourceDidUpdateRecord;
CPLog.debug("%@ changed to %d (%@)",objj_msgSend(_26,"title")||"(no title)",objj_msgSend(_26,"state"),objj_msgSend(_26,"stateString"));
switch(objj_msgSend(_26,"state")){
case MMLibraryMediaItemStateDeleted:
_28=MMDataSourceDidDeleteRecord;
break;
case MMLibraryMediaItemStateCreated:
_28=MMDataSourceDidCreateRecord;
break;
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",_28,_20,_27);
}
objj_msgSend(_20,"_scheduleTimer");
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
p;40;DataSources/MMPosterMetadataDataSource.jt;1094;@STATIC;1.0;i;27;MMImageMetadataDataSource.ji;18;../Models/PMSURL.jt;1020;
objj_executeFile("MMImageMetadataDataSource.j",YES);
objj_executeFile("../Models/PMSURL.j",YES);
var _1=objj_allocateClassPair(MMImageMetadataDataSource,"MMPosterMetadataDataSource"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("selectImage:forMediaItem:"),function(_3,_4,_5,_6){
with(_3){
objj_msgSend(_6,"setThumb:",objj_msgSend(_5,"filename"));
objj_msgSendSuper({receiver:_3,super_class:objj_getClass("MMPosterMetadataDataSource").super_class},"selectImage:forMediaItem:",_5,_6);
}
}),new objj_method(sel_getUid("URLForRecordsWithContextInfo:"),function(_7,_8,_9){
with(_7){
return objj_msgSend(_7,"URLForMediaItem:withSuffix:",_9,"/posters");
}
}),new objj_method(sel_getUid("URLForUpdatedRecord:contextInfo:"),function(_a,_b,_c,_d){
with(_a){
var _e=_c,_f=_d;
return objj_msgSend(PMSURL,"URLWithPath:params:",objj_msgSend(_a,"URLForMediaItem:withSuffix:",_f,"/poster"),objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(_e,"filename"),"url"));
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
p;20;Models/MMDirectory.jt;2533;@STATIC;1.0;I;21;Foundation/CPObject.jt;2488;
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
}),new objj_method(sel_getUid("setPath:"),function(_19,_1a,_1b){
with(_19){
objj_msgSend(_19,"willChangeValueForKey:","title");
objj_msgSend(_19,"willChangeValueForKey:","key");
title=objj_msgSend(_1b,"lastPathComponent");
key=CFData.encodeBase64String(_1b);
objj_msgSend(_19,"didChangeValueForKey:","key");
objj_msgSend(_19,"didChangeValueForKey:","title");
}
}),new objj_method(sel_getUid("setKey:"),function(_1c,_1d,_1e){
with(_1c){
objj_msgSend(_1c,"willChangeValueForKey:","title");
objj_msgSend(_1c,"willChangeValueForKey:","path");
key=_1e;
var _1f=objj_msgSend(key,"substringFromIndex:",objj_msgSend("/services/browse/","length"));
path=CFData.decodeBase64ToString(_1f);
title=objj_msgSend(path,"lastPathComponent");
objj_msgSend(_1c,"didChangeValueForKey:","path");
objj_msgSend(_1c,"didChangeValueForKey:","title");
}
}),new objj_method(sel_getUid("description"),function(_20,_21){
with(_20){
return path||objj_msgSendSuper({receiver:_20,super_class:objj_getClass("MMDirectory").super_class},"description");
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("keyPathsForValuesAffectingTitle"),function(_22,_23){
with(_22){
return objj_msgSend(CPSet,"setWithObjects:","path","key");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingKey"),function(_24,_25){
with(_24){
return objj_msgSend(CPSet,"setWithObjects:","title","path");
}
})]);
p;27;Models/MMLibraryMediaItem.jt;11119;@STATIC;1.0;I;21;Foundation/CPObject.jI;18;Foundation/CPSet.ji;10;MMRecord.ji;18;MMLibrarySection.ji;8;PMSURL.jt;11000;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("Foundation/CPSet.j",NO);
objj_executeFile("MMRecord.j",YES);
objj_executeFile("MMLibrarySection.j",YES);
objj_executeFile("PMSURL.j",YES);
var _1;
var _2=10000;
MMLibraryMediaItemStateCreated=0;
MMLibraryMediaItemStateProgress=1;
MMLibraryMediaItemStateMatching=2;
MMLibraryMediaItemStateDownloadingMetadata=3;
MMLibraryMediaItemStateLoadingMetadata=4;
MMLibraryMediaItemStateIdle=5;
MMLibraryMediaItemStateDeleted=9;
var _3=objj_allocateClassPair(MMRecord,"MMLibraryMediaItem"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_key"),new objj_ivar("_title"),new objj_ivar("_titleSort"),new objj_ivar("_originalTitle"),new objj_ivar("_tagline"),new objj_ivar("_year"),new objj_ivar("_rating"),new objj_ivar("_summary"),new objj_ivar("_studio"),new objj_ivar("_contentRating"),new objj_ivar("_originallyAvailableAt"),new objj_ivar("_thumb"),new objj_ivar("_art"),new objj_ivar("_updatedAt"),new objj_ivar("_librarySection"),new objj_ivar("_thumbImage"),new objj_ivar("_artImage"),new objj_ivar("_state"),new objj_ivar("_matching"),new objj_ivar("_idle"),new objj_ivar("_loading")]);
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
}),new objj_method(sel_getUid("summary"),function(_28,_29){
with(_28){
return _summary;
}
}),new objj_method(sel_getUid("setSummary:"),function(_2a,_2b,_2c){
with(_2a){
_summary=_2c;
}
}),new objj_method(sel_getUid("studio"),function(_2d,_2e){
with(_2d){
return _studio;
}
}),new objj_method(sel_getUid("setStudio:"),function(_2f,_30,_31){
with(_2f){
_studio=_31;
}
}),new objj_method(sel_getUid("contentRating"),function(_32,_33){
with(_32){
return _contentRating;
}
}),new objj_method(sel_getUid("setContentRating:"),function(_34,_35,_36){
with(_34){
_contentRating=_36;
}
}),new objj_method(sel_getUid("originallyAvailableAt"),function(_37,_38){
with(_37){
return _originallyAvailableAt;
}
}),new objj_method(sel_getUid("setOriginallyAvailableAt:"),function(_39,_3a,_3b){
with(_39){
_originallyAvailableAt=_3b;
}
}),new objj_method(sel_getUid("thumb"),function(_3c,_3d){
with(_3c){
return _thumb;
}
}),new objj_method(sel_getUid("setThumb:"),function(_3e,_3f,_40){
with(_3e){
_thumb=_40;
}
}),new objj_method(sel_getUid("art"),function(_41,_42){
with(_41){
return _art;
}
}),new objj_method(sel_getUid("setArt:"),function(_43,_44,_45){
with(_43){
_art=_45;
}
}),new objj_method(sel_getUid("updatedAt"),function(_46,_47){
with(_46){
return _updatedAt;
}
}),new objj_method(sel_getUid("setUpdatedAt:"),function(_48,_49,_4a){
with(_48){
_updatedAt=_4a;
}
}),new objj_method(sel_getUid("librarySection"),function(_4b,_4c){
with(_4b){
return _librarySection;
}
}),new objj_method(sel_getUid("setLibrarySection:"),function(_4d,_4e,_4f){
with(_4d){
_librarySection=_4f;
}
}),new objj_method(sel_getUid("state"),function(_50,_51){
with(_50){
return _state;
}
}),new objj_method(sel_getUid("setState:"),function(_52,_53,_54){
with(_52){
_state=_54;
}
}),new objj_method(sel_getUid("isMatching"),function(_55,_56){
with(_55){
return _matching;
}
}),new objj_method(sel_getUid("isIdle"),function(_57,_58){
with(_57){
return _idle;
}
}),new objj_method(sel_getUid("isLoading"),function(_59,_5a){
with(_59){
return _loading;
}
}),new objj_method(sel_getUid("setKey:"),function(_5b,_5c,_5d){
with(_5b){
objj_msgSend(_5b,"setId:",objj_msgSend(objj_msgSend(_5b,"class"),"idFromKey:",_5d));
}
}),new objj_method(sel_getUid("displayTitle"),function(_5e,_5f){
with(_5e){
var _60=objj_msgSend(CPString,"stringWithFormat:"," (%d)",_year);
if(objj_msgSend(_title,"hasSuffix:",_60)){
return objj_msgSend(_title,"substringToIndex:",objj_msgSend(_title,"length")-objj_msgSend(_60,"length"));
}else{
return _title;
}
}
}),new objj_method(sel_getUid("titleSort"),function(_61,_62){
with(_61){
return _titleSort||_title;
}
}),new objj_method(sel_getUid("setUpdatedAt:"),function(_63,_64,_65){
with(_63){
var _66=_65;
if(objj_msgSend(_66,"isKindOfClass:",CPString)){
_66=objj_msgSend(objj_msgSend(CPDate,"alloc"),"initWithTimeIntervalSince1970:",_66);
}
if(objj_msgSend(_updatedAt,"isEqual:",_66)){
return;
}
if(objj_msgSend(_66,"isKindOfClass:",CPDate)){
_updatedAt=_66;
}else{
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(CPString,"stringWithFormat:","updatedAt must be of type %@ (got %@)",CPDate,objj_msgSend(_65,"class")));
}
}
}),new objj_method(sel_getUid("setYear:"),function(_67,_68,_69){
with(_67){
var _6a=_69;
if(objj_msgSend(_6a,"isKindOfClass:",CPString)){
_6a=Number(_6a);
}
if(objj_msgSend(_year,"isEqual:",_6a)){
return;
}
_year=_6a;
}
}),new objj_method(sel_getUid("setRating:"),function(_6b,_6c,_6d){
with(_6b){
var _6e=_6d;
if(objj_msgSend(_6e,"isKindOfClass:",CPString)){
_6e=Number(_6e);
}
_rating=_6e;
}
}),new objj_method(sel_getUid("setOriginallyAvailableAt:"),function(_6f,_70,_71){
with(_6f){
var _72=_71;
if(objj_msgSend(_72,"isKindOfClass:",CPString)){
var _73;
if(/^\d+$/.test(_72)){
_72=objj_msgSend(objj_msgSend(CPDate,"alloc"),"initWithTimeIntervalSince1970:",Number(_72));
}else{
if(_73=_72.match(/^(\d{4})-(\d\d?)-(\d\d?)$/)){
_72=new Date(_73[1],_73[2],_73[3]);
}else{
_72=Date.parse(_72);
}
}
}
if(objj_msgSend(_originallyAvailableAt,"isEqual:",_72)){
return;
}
if(!_72||objj_msgSend(_72,"isKindOfClass:",CPDate)){
_originallyAvailableAt=_72;
}else{
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(CPString,"stringWithFormat:","originallyAvailableAt must be of type %@ (got %@)",CPDate,objj_msgSend(_71,"class")));
}
}
}),new objj_method(sel_getUid("setState:"),function(_74,_75,_76){
with(_74){
if(objj_msgSend(_76,"isKindOfClass:",CPString)){
_76=Number(_76);
}
_state=_76;
}
}),new objj_method(sel_getUid("setThumb:"),function(_77,_78,_79){
with(_77){
if(_thumb===_79){
return;
}
_thumb=_79;
_thumbImage=nil;
}
}),new objj_method(sel_getUid("thumbImage"),function(_7a,_7b){
with(_7a){
if(!_thumb){
return nil;
}
if(!_thumbImage){
_thumbImage=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initByReferencingFile:size:",objj_msgSend(_7a,"thumbURL"),CGSizeMake(-1,-1));
}
return _thumbImage;
}
}),new objj_method(sel_getUid("thumbURL"),function(_7c,_7d){
with(_7c){
if(!_thumb){
return nil;
}
return objj_msgSend(PMSURL,"URLWithPath:",_thumb);
}
}),new objj_method(sel_getUid("setArt:"),function(_7e,_7f,_80){
with(_7e){
if(_art===_80){
return;
}
_art=_80;
_artImage=nil;
}
}),new objj_method(sel_getUid("artImage"),function(_81,_82){
with(_81){
if(!_artImage){
_artImage=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initByReferencingFile:size:",objj_msgSend(_81,"artURL"),CGSizeMake(-1,-1));
}
return _artImage;
}
}),new objj_method(sel_getUid("artURL"),function(_83,_84){
with(_83){
return objj_msgSend(PMSURL,"URLWithPath:",_art);
}
}),new objj_method(sel_getUid("isMatching"),function(_85,_86){
with(_85){
return _state===MMLibraryMediaItemStateMatching;
}
}),new objj_method(sel_getUid("isIdle"),function(_87,_88){
with(_87){
return _state===MMLibraryMediaItemStateIdle;
}
}),new objj_method(sel_getUid("isLoading"),function(_89,_8a){
with(_89){
return _state===MMLibraryMediaItemStateDownloadingMetadata||_state===MMLibraryMediaItemStateLoadingMetadata;
}
}),new objj_method(sel_getUid("stateString"),function(_8b,_8c){
with(_8b){
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
}),new objj_method(sel_getUid("isEqual:"),function(_8d,_8e,_8f){
with(_8d){
return objj_msgSend(_8f,"isKindOfClass:",objj_msgSend(_8d,"class"))&&objj_msgSend(objj_msgSend(_8d,"id"),"isEqual:",objj_msgSend(_8f,"id"));
}
}),new objj_method(sel_getUid("description"),function(_90,_91){
with(_90){
return objj_msgSend(CPString,"stringWithFormat:","{%@ (%d) %@}",objj_msgSend(_90,"title"),objj_msgSend(_90,"year"),"0x"+objj_msgSend(CPString,"stringWithHash:",objj_msgSend(_90,"UID")));
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("observedAttributes"),function(_92,_93){
with(_92){
return objj_msgSend(CPSet,"setWithObjects:","title","titleSort","originalTitle","tagline","year","rating","summary","studio","contentRating","originallyAvailableAt");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingMatching"),function(_94,_95){
with(_94){
return objj_msgSend(CPSet,"setWithObject:","state");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingLoading"),function(_96,_97){
with(_96){
return objj_msgSend(CPSet,"setWithObject:","state");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingIdle"),function(_98,_99){
with(_98){
return objj_msgSend(CPSet,"setWithObject:","state");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingThumbImage"),function(_9a,_9b){
with(_9a){
return objj_msgSend(CPSet,"setWithObject:","thumb");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingArtImage"),function(_9c,_9d){
with(_9c){
return objj_msgSend(CPSet,"setWithObject:","art");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingDisplayTitle"),function(_9e,_9f){
with(_9e){
return objj_msgSend(CPSet,"setWithObject:","title");
}
}),new objj_method(sel_getUid("blankThumbImage"),function(_a0,_a1){
with(_a0){
if(!_1){
_1=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","BlankPoster.png"));
}
return objj_msgSend(_1,"copy");
}
}),new objj_method(sel_getUid("idFromKey:"),function(_a2,_a3,_a4){
with(_a2){
return _a4&&_a4.replace(/[^\d]/g,"");
}
})]);
p;25;Models/MMLibrarySection.jt;4857;@STATIC;1.0;i;10;MMRecord.ji;8;PMSURL.jt;4811;
objj_executeFile("MMRecord.j",YES);
objj_executeFile("PMSURL.j",YES);
MMLibrarySectionTypeMovies="movie";
MMLibrarySectionTypeTV="show";
MMLibrarySectionTypeArtist="artist";
var _1=objj_allocateClassPair(MMRecord,"MMLibrarySection"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_title"),new objj_ivar("_type"),new objj_ivar("_agent"),new objj_ivar("_scanner"),new objj_ivar("_language"),new objj_ivar("_locations"),new objj_ivar("_updatedAt")]);
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
}),new objj_method(sel_getUid("key"),function(_26,_27){
with(_26){
return objj_msgSend(_26,"id");
}
}),new objj_method(sel_getUid("setKey:"),function(_28,_29,_2a){
with(_28){
objj_msgSend(_28,"setId:",_2a);
}
}),new objj_method(sel_getUid("setAgent:"),function(_2b,_2c,_2d){
with(_2b){
if(objj_msgSend(_2d,"isKindOfClass:",CPString)){
_agent=objj_msgSend(objj_msgSend(MMAgent,"alloc"),"initWithIdentifier:",_2d);
}else{
if(objj_msgSend(_2d,"isKindOfClass:",MMAgent)){
_agent=_2d;
}else{
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(CPString,"stringWithFormat:","agent must be of type %@",MMAgent));
}
}
}
}),new objj_method(sel_getUid("setLanguage:"),function(_2e,_2f,_30){
with(_2e){
if(objj_msgSend(_30,"isKindOfClass:",CPString)){
_language=objj_msgSend(objj_msgSend(LanguageConfig,"alloc"),"initWithCode:",_30);
}else{
if(objj_msgSend(_30,"isKindOfClass:",LanguageConfig)){
_language=_30;
}else{
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(CPString,"stringWithFormat:","language must be of type %@",LanguageConfig));
}
}
}
}),new objj_method(sel_getUid("setUpdatedAt:"),function(_31,_32,_33){
with(_31){
var _34=_33;
if(objj_msgSend(_34,"isKindOfClass:",CPString)){
_34=objj_msgSend(objj_msgSend(CPDate,"alloc"),"initWithTimeIntervalSince1970:",_34);
}
if(objj_msgSend(_34,"isKindOfClass:",CPDate)){
_updatedAt=_34;
}else{
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(CPString,"stringWithFormat:","updatedAt must be of type %@ (got %@)",CPDate,objj_msgSend(_33,"class")));
}
}
}),new objj_method(sel_getUid("allMediaItemsURL"),function(_35,_36){
with(_35){
return objj_msgSend(PMSURL,"URLWithPath:",objj_msgSend(CPString,"stringWithFormat:","/library/sections/%@/all",objj_msgSend(_35,"key")));
}
}),new objj_method(sel_getUid("URL"),function(_37,_38){
with(_37){
return objj_msgSend(PMSURL,"URLWithPath:",objj_msgSend(CPString,"stringWithFormat:","/library/sections/%@",objj_msgSend(_37,"key")));
}
}),new objj_method(sel_getUid("isEqual:"),function(_39,_3a,_3b){
with(_39){
return objj_msgSend(_3b,"isKindOfClass:",objj_msgSend(_39,"class"))&&objj_msgSend(objj_msgSend(_39,"key"),"isEqualToString:",objj_msgSend(_3b,"key"));
}
}),new objj_method(sel_getUid("description"),function(_3c,_3d){
with(_3c){
return objj_msgSend(CPString,"stringWithFormat:","{%@ title=%@, key=%@, type=%@}",objj_msgSend(_3c,"class"),objj_msgSend(_3c,"title"),objj_msgSend(_3c,"key"),objj_msgSend(_3c,"type"));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("keyPathsForValuesAffectingKey"),function(_3e,_3f){
with(_3e){
return objj_msgSend(CPSet,"setWithObject:","id");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingId"),function(_40,_41){
with(_40){
return objj_msgSend(CPSet,"setWithObject:","key");
}
}),new objj_method(sel_getUid("keyFromURL:"),function(_42,_43,URL){
with(_42){
if(!URL){
return nil;
}
var _44=objj_msgSend(URL,"absoluteString").match(/\/library\/sections\/([^\/]+)/i);
if(!_44){
return nil;
}
return _44[1];
}
})]);
p;23;Models/MMMetadataItem.jt;6745;@STATIC;1.0;i;20;MMLibraryMediaItem.jt;6701;
objj_executeFile("MMLibraryMediaItem.j",YES);
var _1=objj_allocateClassPair(MMLibraryMediaItem,"MMMetadataItem"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_writers"),new objj_ivar("_directors"),new objj_ivar("_genres"),new objj_ivar("_collections"),new objj_ivar("_titleLocked"),new objj_ivar("_titleSortLocked"),new objj_ivar("_originalTitleLocked"),new objj_ivar("_taglineLocked"),new objj_ivar("_yearLocked"),new objj_ivar("_ratingLocked"),new objj_ivar("_summaryLocked"),new objj_ivar("_studioLocked"),new objj_ivar("_contentRatingLocked"),new objj_ivar("_originallyAvailableAtLocked"),new objj_ivar("_writersLocked"),new objj_ivar("_directorsLocked"),new objj_ivar("_genresLocked"),new objj_ivar("_collectionLocked")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("writers"),function(_3,_4){
with(_3){
return _writers;
}
}),new objj_method(sel_getUid("setWriters:"),function(_5,_6,_7){
with(_5){
_writers=_7;
}
}),new objj_method(sel_getUid("directors"),function(_8,_9){
with(_8){
return _directors;
}
}),new objj_method(sel_getUid("setDirectors:"),function(_a,_b,_c){
with(_a){
_directors=_c;
}
}),new objj_method(sel_getUid("genres"),function(_d,_e){
with(_d){
return _genres;
}
}),new objj_method(sel_getUid("setGenres:"),function(_f,_10,_11){
with(_f){
_genres=_11;
}
}),new objj_method(sel_getUid("collections"),function(_12,_13){
with(_12){
return _collections;
}
}),new objj_method(sel_getUid("setCollections:"),function(_14,_15,_16){
with(_14){
_collections=_16;
}
}),new objj_method(sel_getUid("isTitleLocked"),function(_17,_18){
with(_17){
return _titleLocked;
}
}),new objj_method(sel_getUid("setTitleLocked:"),function(_19,_1a,_1b){
with(_19){
_titleLocked=_1b;
}
}),new objj_method(sel_getUid("isTitleSortLocked"),function(_1c,_1d){
with(_1c){
return _titleSortLocked;
}
}),new objj_method(sel_getUid("setTitleSortLocked:"),function(_1e,_1f,_20){
with(_1e){
_titleSortLocked=_20;
}
}),new objj_method(sel_getUid("isOriginalTitleLocked"),function(_21,_22){
with(_21){
return _originalTitleLocked;
}
}),new objj_method(sel_getUid("setOriginalTitleLocked:"),function(_23,_24,_25){
with(_23){
_originalTitleLocked=_25;
}
}),new objj_method(sel_getUid("isTaglineLocked"),function(_26,_27){
with(_26){
return _taglineLocked;
}
}),new objj_method(sel_getUid("setTaglineLocked:"),function(_28,_29,_2a){
with(_28){
_taglineLocked=_2a;
}
}),new objj_method(sel_getUid("isYearLocked"),function(_2b,_2c){
with(_2b){
return _yearLocked;
}
}),new objj_method(sel_getUid("setYearLocked:"),function(_2d,_2e,_2f){
with(_2d){
_yearLocked=_2f;
}
}),new objj_method(sel_getUid("isRatingLocked"),function(_30,_31){
with(_30){
return _ratingLocked;
}
}),new objj_method(sel_getUid("setRatingLocked:"),function(_32,_33,_34){
with(_32){
_ratingLocked=_34;
}
}),new objj_method(sel_getUid("isSummaryLocked"),function(_35,_36){
with(_35){
return _summaryLocked;
}
}),new objj_method(sel_getUid("setSummaryLocked:"),function(_37,_38,_39){
with(_37){
_summaryLocked=_39;
}
}),new objj_method(sel_getUid("isStudioLocked"),function(_3a,_3b){
with(_3a){
return _studioLocked;
}
}),new objj_method(sel_getUid("setStudioLocked:"),function(_3c,_3d,_3e){
with(_3c){
_studioLocked=_3e;
}
}),new objj_method(sel_getUid("isContentRatingLocked"),function(_3f,_40){
with(_3f){
return _contentRatingLocked;
}
}),new objj_method(sel_getUid("setContentRatingLocked:"),function(_41,_42,_43){
with(_41){
_contentRatingLocked=_43;
}
}),new objj_method(sel_getUid("isOriginallyAvailableAtLocked"),function(_44,_45){
with(_44){
return _originallyAvailableAtLocked;
}
}),new objj_method(sel_getUid("setOriginallyAvailableAtLocked:"),function(_46,_47,_48){
with(_46){
_originallyAvailableAtLocked=_48;
}
}),new objj_method(sel_getUid("isWritersLocked"),function(_49,_4a){
with(_49){
return _writersLocked;
}
}),new objj_method(sel_getUid("setWritersLocked:"),function(_4b,_4c,_4d){
with(_4b){
_writersLocked=_4d;
}
}),new objj_method(sel_getUid("isDirectorsLocked"),function(_4e,_4f){
with(_4e){
return _directorsLocked;
}
}),new objj_method(sel_getUid("setDirectorsLocked:"),function(_50,_51,_52){
with(_50){
_directorsLocked=_52;
}
}),new objj_method(sel_getUid("isGenresLocked"),function(_53,_54){
with(_53){
return _genresLocked;
}
}),new objj_method(sel_getUid("setGenresLocked:"),function(_55,_56,_57){
with(_55){
_genresLocked=_57;
}
}),new objj_method(sel_getUid("isCollectionLocked"),function(_58,_59){
with(_58){
return _collectionLocked;
}
}),new objj_method(sel_getUid("setCollectionLocked:"),function(_5a,_5b,_5c){
with(_5a){
_collectionLocked=_5c;
}
}),new objj_method(sel_getUid("changedAttributeDictionary"),function(_5d,_5e){
with(_5d){
var _5f=objj_msgSend(CPDictionary,"dictionary"),_60=objj_msgSendSuper({receiver:_5d,super_class:objj_getClass("MMMetadataItem").super_class},"changedAttributeDictionary"),_61=objj_msgSend(_60,"keyEnumerator"),key;
while(key=objj_msgSend(_61,"nextObject")){
var _62=objj_msgSend(key,"rangeOfString:","Locked");
if(CPMaxRange(_62)==objj_msgSend(key,"length")){
objj_msgSend(_5f,"setObject:forKey:",objj_msgSend(_60,"objectForKey:",key)?"1":"0",objj_msgSend(key,"substringToIndex:",_62.location)+".locked");
}else{
if(objj_msgSend(key,"isEqualToString:","writers")||objj_msgSend(key,"isEqualToString:","genres")||objj_msgSend(key,"isEqualToString:","directors")){
var _63=objj_msgSend(_60,"objectForKey:",key),_64=objj_msgSend(key,"substringToIndex:",objj_msgSend(key,"length")-1);
for(var i=0,_65=objj_msgSend(_63,"count");i<_65;i++){
objj_msgSend(_5f,"setObject:forKey:",_63[i],objj_msgSend(CPString,"stringWithFormat:","%@[%d].tag.tag",_64,i));
}
}else{
objj_msgSend(_5f,"setObject:forKey:",objj_msgSend(_60,"objectForKey:",key),key);
}
}
}
return _5f;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("observedAttributes"),function(_66,_67){
with(_66){
return objj_msgSend(CPSet,"setWithObjects:","writers","directors","genres","collections","titleLocked","titleSortLocked","originalTitleLocked","taglineLocked","yearLocked","ratingLocked","summaryLocked","studioLocked","contentRatingLocked","originallyAvailableAtLocked","writersLocked","directorsLocked","genresLocked","collectionLocked");
}
}),new objj_method(sel_getUid("metadataItemForMediaItem:"),function(_68,_69,_6a){
with(_68){
var _6b=objj_msgSend(objj_msgSend(_6a,"dataStore"),"recordWithClass:id:",_68,objj_msgSend(_6a,"id")),_6c=objj_msgSend(objj_msgSend(objj_msgSend(_6a,"class"),"allObservedAttributes"),"objectEnumerator"),key;
while(key=objj_msgSend(_6c,"nextObject")){
objj_msgSend(_6b,"setValue:forKey:",objj_msgSend(_6a,"valueForKey:",key),key);
}
objj_msgSend(_6b,"setId:",objj_msgSend(_6a,"id"));
objj_msgSend(_6b,"acceptChangedAttributes");
return _6b;
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
p;17;Models/MMRecord.jt;2935;@STATIC;1.0;I;21;Foundation/CPObject.jt;2890;
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
_changedAttributes=objj_msgSend(CPSet,"set");
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
objj_msgSend(_changedAttributes,"addObject:",_15);
}
}),new objj_method(sel_getUid("acceptChangedAttributes"),function(_19,_1a){
with(_19){
objj_msgSend(_changedAttributes,"removeAllObjects");
}
}),new objj_method(sel_getUid("changedAttributeDictionary"),function(_1b,_1c){
with(_1b){
var _1d=objj_msgSend(CPDictionary,"dictionary"),_1e=objj_msgSend(_changedAttributes,"objectEnumerator"),key;
while(key=objj_msgSend(_1e,"nextObject")){
objj_msgSend(_1d,"setObject:forKey:",objj_msgSend(_1b,"valueForKey:",key),key);
}
return _1d;
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("observedAttributes"),function(_1f,_20){
with(_1f){
return objj_msgSend(CPSet,"set");
}
}),new objj_method(sel_getUid("allObservedAttributes"),function(_21,_22){
with(_21){
return _1[objj_msgSend(_21,"UID")];
}
}),new objj_method(sel_getUid("_loadObservedAttributes"),function(_23,_24){
with(_23){
if(objj_msgSend(_23,"allObservedAttributes")){
return;
}
var _25=objj_msgSend(objj_msgSend(_23,"observedAttributes"),"copy");
if(objj_msgSend(objj_msgSend(_23,"superclass"),"respondsToSelector:",sel_getUid("_loadObservedAttributes"))){
objj_msgSend(objj_msgSend(_23,"superclass"),"_loadObservedAttributes");
objj_msgSend(_25,"unionSet:",objj_msgSend(objj_msgSend(_23,"superclass"),"allObservedAttributes"));
}
CPLog.debug("[%@ _loadObservedAttributes] observedAttributes: %@",_23,_25);
_1[objj_msgSend(_23,"UID")]=_25;
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
p;24;Views/MMCollectionView.jt;4182;@STATIC;1.0;I;23;Foundation/CPIndexSet.jI;21;AppKit/CPScrollView.jt;4109;
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
}),new objj_method(sel_getUid("setColumnCount:"),function(_23,_24,_25){
with(_23){
objj_msgSend(_23,"sizeToFitNumberOfRows:",_25);
}
}),new objj_method(sel_getUid("sizeToFitNumberOfColumns:"),function(_26,_27,_28){
with(_26){
_28=MAX(_28,1);
var _29=_28*(_itemSize.width+_horizontalMargin),_2a=CEIL(_items.length/_28),_2b=_2a*(_itemSize.height*_verticalMargin);
objj_msgSend(_26,"setFrameSize:",CGSizeMake(_29,_2b));
objj_msgSend(_26,"_scrollToSelection");
}
}),new objj_method(sel_getUid("setRowCount:"),function(_2c,_2d,_2e){
with(_2c){
objj_msgSend(_2c,"sizeToFitNumberOfRows:",_2e);
}
}),new objj_method(sel_getUid("sizeToFitNumberOfRows:"),function(_2f,_30,_31){
with(_2f){
_31=MAX(_31,1);
var _32=_31*(_itemSize.height+_verticalMargin),_33=CEIL(_items.length/_31),_34=_33*(_itemSize.width*_horizontalMargin);
objj_msgSend(_2f,"setFrameSize:",CGSizeMake(_34,_32));
objj_msgSend(_2f,"_scrollToSelection");
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
p;22;Views/MMFileListView.jt;5041;@STATIC;1.0;I;25;AppKit/CPCollectionView.ji;20;MMFileListViewItem.jt;4967;
objj_executeFile("AppKit/CPCollectionView.j",NO);
objj_executeFile("MMFileListViewItem.j",YES);
var _1=objj_allocateClassPair(CPCollectionView,"MMFileListView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_files")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("files"),function(_3,_4){
with(_3){
return _files;
}
}),new objj_method(sel_getUid("setFiles:"),function(_5,_6,_7){
with(_5){
_files=_7;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_8,_9,_a){
with(_8){
if(_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("MMFileListView").super_class},"initWithFrame:",_a)){
var _b=objj_msgSend(objj_msgSend(CPCollectionViewItem,"alloc"),"init");
objj_msgSend(_b,"setView:",objj_msgSend(objj_msgSend(MMFileListViewItem,"alloc"),"initWithFrame:",CGRectMakeZero()));
objj_msgSend(_8,"setItemPrototype:",_b);
objj_msgSend(_8,"setMaxNumberOfColumns:",1);
objj_msgSend(_8,"setMinItemSize:",CGSizeMake(20,45));
objj_msgSend(_8,"setMaxItemSize:",CGSizeMake(1000,45));
objj_msgSend(_8,"setVerticalMargin:",0);
objj_msgSend(_8,"setBackgroundColors:",MMFileListViewItemBackgroundColors);
objj_msgSend(_8,"setBackgroundColor:",objj_msgSend(MMFileListViewItemBackgroundColors,"objectAtIndex:",0));
var _c=function(e){
e.preventDefault();
return false;
},_d=class_getMethodImplementation(objj_msgSend(_8,"class"),sel_getUid("dropPerformedWithPasteboard:")),_e=function(e){
var _f=objj_msgSend(_CPDOMDataTransferPasteboard,"DOMDataTransferPasteboard");
objj_msgSend(_f,"_setDataTransfer:",e.dataTransfer);
if(e.preventDefault){
e.preventDefault();
}
_d(_8,nil,_f);
};
if(document.attachEvent){
_DOMElement.attachEvent("ondragenter",_c);
_DOMElement.attachEvent("ondragover",_c);
_DOMElement.attachEvent("ondrop",_e);
}else{
_DOMElement.addEventListener("dragenter",_c,false);
_DOMElement.addEventListener("dragover",_c,false);
_DOMElement.addEventListener("drop",_e,false);
}
_files=objj_msgSend(CPArray,"array");
}
return _8;
}
}),new objj_method(sel_getUid("reloadContent"),function(_10,_11){
with(_10){
objj_msgSendSuper({receiver:_10,super_class:objj_getClass("MMFileListView").super_class},"reloadContent");
var _12=0,_13=objj_msgSend(_10,"backgroundColors"),_14=objj_msgSend(_13,"count"),_15=objj_msgSend(_items,"count");
if(!_14){
return;
}
CPLog.trace("[MMFileListView -reloadContent] repainting background for %d item(s) with %d background(s)",_15,_14);
for(var _16=0;_16<_15;_16++,_12++){
if(objj_msgSend(_selectionIndexes,"containsIndex:",_16)){
continue;
}
_12=_12%_14;
objj_msgSend(objj_msgSend(_items[_16],"view"),"setBackgroundColor:",_13[_12]);
}
}
}),new objj_method(sel_getUid("dropPerformedWithPasteboard:"),function(_17,_18,_19){
with(_17){
var _1a=objj_msgSend(objj_msgSend(_19,"dataForType:","text/uri-list"),"rawString");
CPLog.debug("[MMFileListView -dropPerformedWithPasteboard:] got a drop with files: %@",_1a);
if(!_1a){
return;
}
var _1b=objj_msgSend(CPString,"stringWithString:",_1a).split(/\s+/);
for(var i=0;i<objj_msgSend(_1b,"count");i++){
objj_msgSend(_17,"addFileWithURI:",objj_msgSend(_1b,"objectAtIndex:",i));
}
}
}),new objj_method(sel_getUid("addFileWithURI:"),function(_1c,_1d,uri){
with(_1c){
var _1e=objj_msgSend(CPArray,"arrayWithObjects:","file://localhost","file://"),_1f;
for(var i=0;i<objj_msgSend(_1e,"count");i++){
_1f=objj_msgSend(uri,"rangeOfString:",objj_msgSend(_1e,"objectAtIndex:",i));
if(_1f.location==0){
uri=objj_msgSend(uri,"stringByReplacingCharactersInRange:withString:",_1f,"");
}
}
objj_msgSend(_1c,"addFileWithPath:",decodeURIComponent(uri));
}
}),new objj_method(sel_getUid("addFileWithPath:"),function(_20,_21,_22){
with(_20){
objj_msgSend(_20,"addFileWithPath:reload:",_22,YES);
}
}),new objj_method(sel_getUid("addFileWithPath:reload:"),function(_23,_24,_25,_26){
with(_23){
_25=objj_msgSend(_25,"stringByReplacingOccurrencesOfString:withString:","\\","/");
if(objj_msgSend(objj_msgSend(_25,"substringFromIndex:",objj_msgSend(_25,"length")-1),"isEqualToString:","/")){
_25=objj_msgSend(_25,"substringToIndex:",objj_msgSend(_25,"length")-1);
}
if(objj_msgSend(_files,"containsObject:",_25)){
CPLog.warn("[MMFileListView -addFileWithPath:] skipping %@ since we already have it",_25);
return;
}
CPLog.debug("[MMFileListView -addFileWithPath:] adding %@",_25);
objj_msgSend(_files,"addObject:",_25);
if(_26){
objj_msgSend(_23,"reload");
}
}
}),new objj_method(sel_getUid("setFiles:"),function(_27,_28,_29){
with(_27){
_files=objj_msgSend(CPArray,"array");
for(var i=0;i<objj_msgSend(_29,"count");i++){
objj_msgSend(_27,"addFileWithPath:reload:",objj_msgSend(_29,"objectAtIndex:",i),NO);
}
objj_msgSend(_27,"reload");
}
}),new objj_method(sel_getUid("removeFilesAtIndexes:"),function(_2a,_2b,_2c){
with(_2a){
objj_msgSend(_files,"removeObjectsAtIndexes:",_2c);
objj_msgSend(_2a,"reload");
}
}),new objj_method(sel_getUid("reload"),function(_2d,_2e){
with(_2d){
objj_msgSend(_2d,"setContent:",objj_msgSend(_files,"copy"));
objj_msgSend(_2d,"needsDisplay");
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
p;22;Views/MMFirstRunView.jt;10293;@STATIC;1.0;I;15;AppKit/CPView.jI;22;LPKit/LPAnchorButton.ji;13;MMImageView.ji;17;MMSelectionView.jt;10186;
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
objj_msgSend(_e,"setAgent:","com.plexapp.agents.imdb");
objj_msgSend(_b,"addSectionWithDefaults:",_e);
}
}),new objj_method(sel_getUid("addTVSection:"),function(_f,_10,_11){
with(_f){
var _12=objj_msgSend(objj_msgSend(MMLibrarySection,"alloc"),"init");
objj_msgSend(_12,"setType:",MMLibrarySectionTypeTV);
objj_msgSend(_12,"setAgent:","com.plexapp.agents.thetvdb");
objj_msgSend(_f,"addSectionWithDefaults:",_12);
}
}),new objj_method(sel_getUid("addHomeMovieSection:"),function(_13,_14,_15){
with(_13){
var _16=objj_msgSend(objj_msgSend(MMLibrarySection,"alloc"),"init");
objj_msgSend(_16,"setType:",MMLibrarySectionTypeMovies);
objj_msgSend(_16,"setAgent:","com.plexapp.agents.none");
objj_msgSend(_13,"addSectionWithDefaults:",_16);
}
}),new objj_method(sel_getUid("addMusicSection:"),function(_17,_18,_19){
with(_17){
var _1a=objj_msgSend(objj_msgSend(MMLibrarySection,"alloc"),"init");
objj_msgSend(_1a,"setType:",MMLibrarySectionTypeArtist);
objj_msgSend(_1a,"setAgent:","com.plexapp.agents.lastfm");
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
p;25;Views/MMImagePickerCell.jt;3580;@STATIC;1.0;I;33;Foundation/CPNotificationCenter.ji;24;../CPImage+Transcoding.ji;30;../Models/MMLibraryMediaItem.ji;13;MMImageView.ji;12;MMLazyView.jt;3424;
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
objj_msgSend(_8,"setImage:",objj_msgSend(_a,"constrainedToSize:",CGSizeMake(96,128)));
objj_msgSend(_8,"setDirty:",YES);
}
}),new objj_method(sel_getUid("loadView"),function(_b,_c){
with(_b){
var _d=12;
_imageView=objj_msgSend(objj_msgSend(MMImageView,"alloc"),"initWithFrame:",CGRectMake(_d,_d,CGRectGetWidth(objj_msgSend(_b,"frame"))-_d*2,CGRectGetHeight(objj_msgSend(_b,"frame"))-_d*2));
objj_msgSend(_imageView,"setImageScaling:",CPScaleProportionally);
objj_msgSend(_imageView,"setImageAlignment:",CPImageAlignBottom);
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
p;19;Views/MMImageView.jt;499;@STATIC;1.0;I;20;AppKit/CPImageView.jt;456;
objj_executeFile("AppKit/CPImageView.j",NO);
var _1=objj_allocateClassPair(CPImageView,"MMImageView"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("layoutSubviews"),function(_3,_4){
with(_3){
objj_msgSend(_3,"willChangeValueForKey:","imageRect");
objj_msgSendSuper({receiver:_3,super_class:objj_getClass("MMImageView").super_class},"layoutSubviews");
objj_msgSend(_3,"didChangeValueForKey:","imageRect");
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
p;20;Views/MMLockButton.jt;3223;@STATIC;1.0;I;17;AppKit/CPButton.jt;3182;
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
objj_msgSend(_a,"setImage:",objj_msgSend(objj_msgSend(_a,"class"),"lockImage"));
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
objj_msgSend(_10,"setHighlighted:",_12);
}
}),new objj_method(sel_getUid("sendAction:to:"),function(_13,_14,_15,_16){
with(_13){
objj_msgSend(_13,"highlight:",YES);
objj_msgSend(_13,"willChangeValueForKey:","locked");
locked=!locked;
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
p;23;Views/MMMediaItemCell.jt;10425;@STATIC;1.0;i;40;../Controllers/MMMatchPickerController.ji;41;../DataSources/MMMediaMatchesDataSource.ji;41;../DataSources/MMMetadataItemDataSource.ji;30;../Models/MMLibraryMediaItem.ji;17;MMSelectionView.ji;12;MMLazyView.ji;13;MMImageView.jt;10176;
objj_executeFile("../Controllers/MMMatchPickerController.j",YES);
objj_executeFile("../DataSources/MMMediaMatchesDataSource.j",YES);
objj_executeFile("../DataSources/MMMetadataItemDataSource.j",YES);
objj_executeFile("../Models/MMLibraryMediaItem.j",YES);
objj_executeFile("MMSelectionView.j",YES);
objj_executeFile("MMLazyView.j",YES);
objj_executeFile("MMImageView.j",YES);
var _1=4;
var _2=CGSizeMake(148,156);
var _3=objj_allocateClassPair(MMLazyView,"MMMediaItemCell"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_mediaItem"),new objj_ivar("_image"),new objj_ivar("_displayImage"),new objj_ivar("_imageView"),new objj_ivar("_matchingImage"),new objj_ivar("_matchingImageView"),new objj_ivar("_titleLabel"),new objj_ivar("_yearLabel"),new objj_ivar("_selectionView"),new objj_ivar("_dataSource"),new objj_ivar("_editor")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("representedObject"),function(_5,_6){
with(_5){
return _mediaItem;
}
}),new objj_method(sel_getUid("setRepresentedObject:"),function(_7,_8,_9){
with(_7){
_mediaItem=_9;
}
}),new objj_method(sel_getUid("setRepresentedObject:"),function(_a,_b,_c){
with(_a){
if(_mediaItem==_c){
return;
}
if(!objj_msgSend(_mediaItem,"isEqual:",_c)){
_displayImage=nil;
}
_mediaItem=_c;
}
}),new objj_method(sel_getUid("refreshView"),function(_d,_e){
with(_d){
objj_msgSend(_matchingImageView,"setHidden:",objj_msgSend(_mediaItem,"state")!=MMLibraryMediaItemStateMatching);
}
}),new objj_method(sel_getUid("loadView"),function(_f,_10){
with(_f){
var _11=CGRectGetWidth(objj_msgSend(_f,"frame")),_12=CGRectGetHeight(objj_msgSend(_f,"frame"));
if(!_yearLabel){
_yearLabel=objj_msgSend(CPTextField,"labelWithTitle:","");
objj_msgSend(_yearLabel,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",10));
objj_msgSend(_yearLabel,"setTextColor:",objj_msgSend(CPColor,"colorWithWhite:alpha:",137/255,1));
objj_msgSend(_yearLabel,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_yearLabel,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(_yearLabel,"setFrame:",CGRectMake(0,_12-15-CGRectGetHeight(objj_msgSend(_yearLabel,"frame")),_11,CGRectGetHeight(objj_msgSend(_yearLabel,"frame"))));
objj_msgSend(_yearLabel,"bind:toObject:withKeyPath:options:",CPValueBinding,_f,"representedObject.year",nil);
objj_msgSend(_f,"addSubview:",_yearLabel);
}
if(!_titleLabel){
_titleLabel=objj_msgSend(CPTextField,"labelWithTitle:","");
objj_msgSend(_titleLabel,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",12));
objj_msgSend(_titleLabel,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_titleLabel,"setTextShadowColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(_titleLabel,"setTextShadowOffset:",CGSizeMake(1,1));
objj_msgSend(_titleLabel,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_titleLabel,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(_titleLabel,"setFrame:",CGRectMake(0,CGRectGetMinY(objj_msgSend(_yearLabel,"frame"))-CGRectGetHeight(objj_msgSend(_titleLabel,"frame")),_11,CGRectGetHeight(objj_msgSend(_yearLabel,"frame"))));
objj_msgSend(_titleLabel,"bind:toObject:withKeyPath:options:",CPValueBinding,_f,"representedObject.displayTitle",nil);
objj_msgSend(_f,"addSubview:",_titleLabel);
}
if(!_imageView){
_imageView=objj_msgSend(objj_msgSend(MMImageView,"alloc"),"initWithFrame:",CGRectMake(12,0,CGRectGetWidth(objj_msgSend(_f,"frame"))-24,CGRectGetHeight(objj_msgSend(_f,"frame"))-CGRectGetHeight(objj_msgSend(_titleLabel,"frame"))-CGRectGetHeight(objj_msgSend(_yearLabel,"frame"))-27));
objj_msgSend(_imageView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_imageView,"setImageScaling:",CPScaleProportionally);
objj_msgSend(_imageView,"setImageAlignment:",CPImageAlignBottom);
objj_msgSend(_imageView,"setHasShadow:",YES);
objj_msgSend(_f,"bind:toObject:withKeyPath:options:","image",_f,"representedObject.thumbImage",nil);
objj_msgSend(_f,"bind:toObject:withKeyPath:options:","imageRect",_imageView,"imageRect",nil);
objj_msgSend(_f,"addSubview:",_imageView);
}
if(!_matchingImageView){
_matchingImageView=objj_msgSend(objj_msgSend(MMImageView,"alloc"),"initWithFrame:",objj_msgSend(_imageView,"imageRect")||CGRectMakeZero());
objj_msgSend(_matchingImageView,"setImageScaling:",CPScaleNone);
objj_msgSend(_matchingImageView,"setImageAlignment:",CPImageAlignCenter);
objj_msgSend(_f,"bind:toObject:withKeyPath:options:","matching",_f,"representedObject.matching",nil);
objj_msgSend(_f,"bind:toObject:withKeyPath:options:","loading",_f,"representedObject.loading",nil);
objj_msgSend(_matchingImageView,"setAlphaValue:",0.6);
objj_msgSend(_matchingImageView,"setBackgroundColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(_f,"addSubview:",_matchingImageView);
}
objj_msgSend(_matchingImageView,"setHidden:",objj_msgSend(_mediaItem,"state")!=MMLibraryMediaItemStateMatching);
}
}),new objj_method(sel_getUid("setImageRect:"),function(_13,_14,_15){
with(_13){
if(_15){
objj_msgSend(_matchingImageView,"setFrame:",objj_msgSend(_13,"convertRect:fromView:",_15,_imageView));
}
}
}),new objj_method(sel_getUid("setMatching:"),function(_16,_17,_18){
with(_16){
if(!_matchingImage){
_matchingImage=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","Matching.png"));
}
objj_msgSend(_matchingImageView,"setImage:",_18?_matchingImage:nil);
objj_msgSend(_16,"showOrHideDimmer");
}
}),new objj_method(sel_getUid("setLoading:"),function(_19,_1a,_1b){
with(_19){
objj_msgSend(_19,"showOrHideDimmer");
}
}),new objj_method(sel_getUid("showOrHideDimmer"),function(_1c,_1d){
with(_1c){
objj_msgSend(_matchingImageView,"setHidden:",!objj_msgSend(_mediaItem,"isMatching")&&!objj_msgSend(_mediaItem,"isLoading"));
}
}),new objj_method(sel_getUid("imageDidLoad:"),function(_1e,_1f,_20){
with(_1e){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_1e,CPImageDidLoadNotification,objj_msgSend(_20,"object"));
_displayImage=objj_msgSend(_20,"object");
objj_msgSend(_1e,"_drawImage:",_displayImage);
}
}),new objj_method(sel_getUid("setImage:"),function(_21,_22,_23){
with(_21){
_23=objj_msgSend(_23,"constrainedToSize:",_2);
if(_23&&objj_msgSend(objj_msgSend(_image,"filename"),"isEqual:",objj_msgSend(_23,"filename"))){
return;
}
if(_image){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_21,CPImageDidLoadNotification,_image);
}
_image=_23;
if(objj_msgSend(_image,"loadStatus")==CPImageLoadStatusCompleted){
_displayImage=_image;
objj_msgSend(_21,"_drawImage:",_image);
}else{
objj_msgSend(_21,"_drawImage:",_displayImage||objj_msgSend(MMLibraryMediaItem,"blankThumbImage"));
if(_image){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_21,sel_getUid("imageDidLoad:"),CPImageDidLoadNotification,_image);
}
objj_msgSend(_image,"load");
}
}
}),new objj_method(sel_getUid("_drawImage:"),function(_24,_25,_26){
with(_24){
if(!_26){
return;
}
objj_msgSend(_imageView,"setImage:",_26);
}
}),new objj_method(sel_getUid("setSelected:"),function(_27,_28,_29){
with(_27){
if(_29&&!_selectionView&&_imageView){
_selectionView=objj_msgSend(MMSelectionView,"selectionViewForView:",_imageView);
}
objj_msgSend(_selectionView,"setSelected:",_29);
}
}),new objj_method(sel_getUid("rightMouseDown:"),function(_2a,_2b,_2c){
with(_2a){
var _2d=objj_msgSend(objj_msgSend(CPMenu,"alloc"),"initWithTitle:","");
objj_msgSend(objj_msgSend(_2d,"addItemWithTitle:action:keyEquivalent:",CPLocalizedString("Edit Metadata","Edit Metadata"),sel_getUid("_editMetadata:"),nil),"setTarget:",_2a);
objj_msgSend(objj_msgSend(_2d,"addItemWithTitle:action:keyEquivalent:",CPLocalizedString("Fix Incorrect Match...","Fix Incorrect Match..."),sel_getUid("_fixIncorrectMatch:"),nil),"setTarget:",_2a);
objj_msgSend(objj_msgSend(_2d,"addItemWithTitle:action:keyEquivalent:",CPLocalizedString("Refresh Info","Refresh Info"),sel_getUid("_refreshInfo:"),nil),"setTarget:",_2a);
objj_msgSend(CPMenu,"popUpContextMenu:withEvent:forView:",_2d,_2c,_2a);
}
}),new objj_method(sel_getUid("_editMetadata:"),function(_2e,_2f,_30){
with(_2e){
_editor=objj_msgSend(objj_msgSend(MMMetadataEditorController,"alloc"),"initWithDelegate:",_2e);
objj_msgSend(_editor,"presentMediaItem:inWindow:",_mediaItem,objj_msgSend(_2e,"window"));
}
}),new objj_method(sel_getUid("metadataEditor:didCommitMetadataItem:"),function(_31,_32,_33,_34){
with(_31){
objj_msgSend(objj_msgSend(_31,"_dataSource"),"updateRecord:",_34);
}
}),new objj_method(sel_getUid("dataSource:didUpdateRecord:contextInfo:"),function(_35,_36,_37,_38,_39){
with(_35){
objj_msgSend(_editor,"dismissSheet");
_editor=nil;
}
}),new objj_method(sel_getUid("dataSource:didFailToUpdateRecord:withError:contextInfo:"),function(_3a,_3b,_3c,_3d,_3e,_3f){
with(_3a){
objj_msgSend(AppController,"notifyUserOfError:withTitle:",_3e,"Unable to update metadata");
}
}),new objj_method(sel_getUid("_dataSource"),function(_40,_41){
with(_40){
if(!_dataSource){
_dataSource=objj_msgSend(objj_msgSend(MMMetadataItemDataSource,"alloc"),"initWithDelegate:",_40);
}
return _dataSource;
}
}),new objj_method(sel_getUid("_fixIncorrectMatch:"),function(_42,_43,_44){
with(_42){
var _45=objj_msgSend(objj_msgSend(MMMatchPickerController,"alloc"),"initWithDelegate:",_42);
objj_msgSend(_45,"setMediaItem:",_mediaItem);
objj_msgSend(_45,"presentSheetInWindow:",objj_msgSend(_42,"window"));
}
}),new objj_method(sel_getUid("picker:didSelectSearchResult:"),function(_46,_47,_48,_49){
with(_46){
CPLog.info("[%@ -picker:didSelectSearchResult:] user chose %@ as the correct match for %@",objj_msgSend(_46,"class"),_49,_mediaItem);
objj_msgSend(_48,"dismissSheet");
objj_msgSend(objj_msgSend(MMMediaMatchesDataSource,"sharedDataSource"),"selectMatch:forMediaItem:",_49,_mediaItem);
}
}),new objj_method(sel_getUid("pickerDidCancel:"),function(_4a,_4b,_4c){
with(_4a){
objj_msgSend(_4c,"dismissSheet");
}
}),new objj_method(sel_getUid("_refreshInfo:"),function(_4d,_4e,_4f){
with(_4d){
objj_msgSend(objj_msgSend(MMMediaMatchesDataSource,"sharedDataSource"),"refreshMatchForMediaItem:",_mediaItem);
}
})]);
p;33;Views/MMMediaItemCollectionView.jt;4642;@STATIC;1.0;i;18;MMCollectionView.ji;28;../Models/MMLibrarySection.jt;4567;
objj_executeFile("MMCollectionView.j",YES);
objj_executeFile("../Models/MMLibrarySection.j",YES);
var _1=objj_allocateClassPair(MMCollectionView,"MMMediaItemCollectionView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_librarySection"),new objj_ivar("_updateTimer")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("librarySection"),function(_3,_4){
with(_3){
return _librarySection;
}
}),new objj_method(sel_getUid("setLibrarySection:"),function(_5,_6,_7){
with(_5){
_librarySection=_7;
}
}),new objj_method(sel_getUid("status"),function(_8,_9){
with(_8){
if(!_librarySection){
return nil;
}
var _a=objj_msgSend(_librarySection,"type"),_b="%d "+_a,_c=objj_msgSend(objj_msgSend(_8,"content"),"count");
switch(_c){
case 0:
switch(_a){
case "movie":
_b=CPLocalizedString("no movies","Status label value for when there are no movies");
break;
case "show":
_b=CPLocalizedString("no TV shows","Status label value when there are no TV shows");
break;
case "artist":
_b=CPLocalizedString("no artists","Status label value when there are no musical artists");
break;
}
break;
case 1:
switch(_a){
case "movie":
_b=CPLocalizedString("1 movie","Status label value for when there is one movie");
break;
case "show":
_b=CPLocalizedString("1 TV show","Status label value for when there is one TV show");
break;
case "artist":
_b=CPLocalizedString("1 artist","Status label value for when there is one musical artist");
break;
}
break;
default:
switch(_a){
case "movie":
_b=CPLocalizedString("%d movies","Status label value for when there is more than one movie");
break;
case "show":
_b=CPLocalizedString("%d TV shows","Status label value for when there is more than one TV show");
break;
case "artist":
_b=CPLocalizedString("%d artists","Status label value for when there is more than one musical artist");
break;
}
break;
}
return objj_msgSend(CPString,"stringWithFormat:",_b,_c);
}
}),new objj_method(sel_getUid("insertObject:inArraySortedByDescriptors:"),function(_d,_e,_f,_10){
with(_d){
objj_msgSend(_d,"willChangeValueForKey:","content");
objj_msgSend(_d,"_insertItem:atIndex:",objj_msgSend(_d,"_detachedItemForObject:",_f),objj_msgSend(objj_msgSend(_d,"content"),"insertObject:inArraySortedByDescriptors:",_f,_10));
objj_msgSend(_d,"tileAfterDelay");
objj_msgSend(_d,"didChangeValueForKey:","content");
}
}),new objj_method(sel_getUid("insertObject:atIndex:"),function(_11,_12,_13,_14){
with(_11){
objj_msgSend(_11,"willChangeValueForKey:","content");
objj_msgSend(_11,"_insertItem:atIndex:",objj_msgSend(_11,"_detachedItemForObject:",_13),_14);
objj_msgSend(objj_msgSend(_11,"content"),"insertObject:atIndex:",_13,_14);
objj_msgSend(_11,"tileAfterDelay");
objj_msgSend(_11,"didChangeValueForKey:","content");
}
}),new objj_method(sel_getUid("removeObject:"),function(_15,_16,_17){
with(_15){
var _18=objj_msgSend(_15,"content"),_19=objj_msgSend(_18,"indexOfObject:",_17);
if(_19==CPNotFound){
return;
}
var _1a=objj_msgSend(_15,"items"),_1b=_1a[_19];
objj_msgSend(_15,"willChangeValueForKey:","content");
objj_msgSend(objj_msgSend(_1b,"view"),"removeFromSuperview");
objj_msgSend(_1b,"setSelected:",NO);
_cachedItems.push(_1b);
objj_msgSend(_18,"removeObjectAtIndex:",_19);
objj_msgSend(_1a,"removeObjectAtIndex:",_19);
objj_msgSend(_15,"tileAfterDelay");
objj_msgSend(_15,"didChangeValueForKey:","content");
}
}),new objj_method(sel_getUid("_detachedItemForObject:"),function(_1c,_1d,_1e){
with(_1c){
var _1f=objj_msgSend(_1c,"items"),_20=objj_msgSend(_1c,"content"),_21=objj_msgSend(_20,"indexOfObject:",_1e);
if(_21==CPNotFound){
return objj_msgSend(_1c,"newItemForRepresentedObject:",_1e);
}
var _22=_1f[_21];
objj_msgSend(_1f,"removeObjectAtIndex:",_21);
objj_msgSend(_20,"removeObjectAtIndex:",_21);
return _22;
}
}),new objj_method(sel_getUid("_insertItem:atIndex:"),function(_23,_24,_25,_26){
with(_23){
objj_msgSend(objj_msgSend(_23,"items"),"insertObject:atIndex:",_25,_26);
objj_msgSend(_23,"addSubview:",objj_msgSend(_25,"view"));
if(objj_msgSend(_23,"isItemAtIndexVisible:",_26)){
objj_msgSend(_23,"notifySubview:visibilityDidChange:",objj_msgSend(_25,"view"),YES);
}
}
}),new objj_method(sel_getUid("tileAfterDelay"),function(_27,_28){
with(_27){
objj_msgSend(_updateTimer,"invalidate");
_updateTimer=objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",0.1,_27,sel_getUid("tile"),nil,NO);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("keyPathsForValuesAffectingStatus"),function(_29,_2a){
with(_29){
return objj_msgSend(CPSet,"setWithObjects:","content","librarySection");
}
})]);
p;29;Views/MMMediaItemDetailView.jt;18890;@STATIC;1.0;I;20;AppKit/CPImageView.jI;15;AppKit/CPMenu.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.ji;22;../CPDate+Formatting.ji;40;../Controllers/MMImagePickerController.ji;40;../Controllers/MMMatchPickerController.ji;43;../Controllers/MMMetadataEditorController.ji;43;../DataSources/MMPosterMetadataDataSource.ji;41;../DataSources/MMLibraryMediaDataSource.ji;43;../DataSources/MMBannerMetadataDataSource.ji;50;../DataSources/MMBackgroundArtMetadataDataSource.ji;30;../Models/MMLibraryMediaItem.ji;11;HUDButton.ji;11;MMToolbar.jt;18351;
objj_executeFile("AppKit/CPImageView.j",NO);
objj_executeFile("AppKit/CPMenu.j",NO);
objj_executeFile("AppKit/CPTextField.j",NO);
objj_executeFile("AppKit/CPView.j",NO);
objj_executeFile("../CPDate+Formatting.j",YES);
objj_executeFile("../Controllers/MMImagePickerController.j",YES);
objj_executeFile("../Controllers/MMMatchPickerController.j",YES);
objj_executeFile("../Controllers/MMMetadataEditorController.j",YES);
objj_executeFile("../DataSources/MMPosterMetadataDataSource.j",YES);
objj_executeFile("../DataSources/MMLibraryMediaDataSource.j",YES);
objj_executeFile("../DataSources/MMBannerMetadataDataSource.j",YES);
objj_executeFile("../DataSources/MMBackgroundArtMetadataDataSource.j",YES);
objj_executeFile("../Models/MMLibraryMediaItem.j",YES);
objj_executeFile("HUDButton.j",YES);
objj_executeFile("MMToolbar.j",YES);
var _1=objj_allocateClassPair(CPView,"MMMediaItemDetailView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("mediaItem"),new objj_ivar("title"),new objj_ivar("year"),new objj_ivar("tagline"),new objj_ivar("summary"),new objj_ivar("mediaThumbView"),new objj_ivar("_lastUpdatedLabel"),new objj_ivar("_matchPicker"),new objj_ivar("_imagePicker"),new objj_ivar("artOverlay"),new objj_ivar("artOverlayView"),new objj_ivar("_customizeMenu"),new objj_ivar("_toolbar"),new objj_ivar("_dataSource"),new objj_ivar("_editor")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("toolbar"),function(_3,_4){
with(_3){
return _toolbar;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_5,_6,_7){
with(_5){
if(_5=objj_msgSendSuper({receiver:_5,super_class:objj_getClass("MMMediaItemDetailView").super_class},"initWithFrame:",_7)){
_dataSource=objj_msgSend(objj_msgSend(MMMetadataItemDataSource,"alloc"),"initWithDelegate:",_5);
var _8=20,_9=CGRectMake(0,0,CGRectGetWidth(_7),CGRectGetHeight(_7));
objj_msgSend(_5,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",32.5/255,1));
mediaArtView=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",_9);
objj_msgSend(mediaArtView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(mediaArtView,"setImageScaling:",CPScaleToFit);
objj_msgSend(_5,"addSubview:",mediaArtView);
artOverlayView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_9);
objj_msgSend(artOverlayView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_5,"addSubview:",artOverlayView);
if(CPFeatureIsCompatible(CPHTMLCanvasFeature)){
artOverlay=objj_msgSend(CALayer,"layer");
objj_msgSend(artOverlay,"setDelegate:",_5);
objj_msgSend(artOverlayView,"setLayer:",artOverlay);
}else{
objj_msgSend(artOverlayView,"setAlphaValue:",0.6);
objj_msgSend(artOverlayView,"setBackgroundColor:",objj_msgSend(CPColor,"whiteColor"));
}
mediaThumbView=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMake(_8,_8,200,300));
objj_msgSend(mediaThumbView,"setHasShadow:",YES);
objj_msgSend(mediaThumbView,"setImageScaling:",CPScaleToFit);
objj_msgSend(mediaThumbView,"setImageAlignment:",CPImageAlignTop);
objj_msgSend(_5,"addSubview:",mediaThumbView);
title=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(title,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",32));
objj_msgSend(title,"setStringValue:","Movie Title");
objj_msgSend(title,"setAutoresizingMask:",CPViewMaxXMargin);
objj_msgSend(title,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(title,"sizeToFit");
objj_msgSend(title,"setFrame:",CGRectMake(CGRectGetWidth(objj_msgSend(mediaThumbView,"frame"))+_8*2,CGRectGetMinY(objj_msgSend(mediaThumbView,"frame")),CGRectGetMaxX(_9)+_8-CGRectGetWidth(objj_msgSend(mediaThumbView,"frame")),CGRectGetHeight(objj_msgSend(title,"frame"))));
objj_msgSend(_5,"addSubview:",title);
year=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(year,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",24));
objj_msgSend(year,"setStringValue:","(2010)");
objj_msgSend(year,"sizeToFit");
objj_msgSend(_5,"addSubview:",year);
tagline=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(tagline,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",16));
objj_msgSend(tagline,"setStringValue:","Tagline");
objj_msgSend(tagline,"sizeToFit");
objj_msgSend(tagline,"setFrame:",CGRectMake(CGRectGetMinX(objj_msgSend(title,"frame")),CGRectGetMaxY(objj_msgSend(title,"frame")),CGRectGetMaxX(_9)-_8-CGRectGetMinX(objj_msgSend(title,"frame")),CGRectGetHeight(objj_msgSend(tagline,"frame"))));
objj_msgSend(tagline,"setAutoresizingMask:",CPViewMaxXMargin);
objj_msgSend(tagline,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(_5,"addSubview:",tagline);
summary=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(CGRectGetMinX(objj_msgSend(tagline,"frame")),CGRectGetMaxY(objj_msgSend(tagline,"frame")),CGRectGetMaxX(_9)-_8-CGRectGetMinX(objj_msgSend(tagline,"frame")),CGRectGetMaxY(_9)-_8-CGRectGetMaxY(objj_msgSend(tagline,"frame"))));
objj_msgSend(summary,"setLineBreakMode:",CPLineBreakByWordWrapping);
objj_msgSend(summary,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_5,"addSubview:",summary);
_toolbar=objj_msgSend(objj_msgSend(MMToolbar,"alloc"),"initWithFrame:style:",CGRectMake(0,CGRectGetMaxY(_9),CGRectGetWidth(_9),30),MMToolbarHUDStyle);
objj_msgSend(_toolbar,"setAutoresizingMask:",CPViewMinYMargin|CPViewWidthSizable);
_lastUpdatedLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_lastUpdatedLabel,"setStringValue:","Last refreshed today");
objj_msgSend(_lastUpdatedLabel,"sizeToFit");
objj_msgSend(_lastUpdatedLabel,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_lastUpdatedLabel,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_lastUpdatedLabel,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",10));
objj_msgSend(_lastUpdatedLabel,"setFrameOrigin:",CGPointMake(10,(CGRectGetHeight(objj_msgSend(_toolbar,"frame"))-CGRectGetHeight(objj_msgSend(_lastUpdatedLabel,"frame")))/2));
objj_msgSend(_toolbar,"addSubview:",_lastUpdatedLabel);
var _a=objj_msgSend(HUDButton,"buttonWithTitle:",CPLocalizedString("Edit Metadata","Edit Metadata"));
objj_msgSend(_a,"setFrameOrigin:",CGPointMake(CGRectGetWidth(objj_msgSend(_toolbar,"frame"))-5-CGRectGetWidth(objj_msgSend(_a,"frame")),(CGRectGetHeight(objj_msgSend(_toolbar,"frame"))-CGRectGetHeight(objj_msgSend(_a,"frame")))/2));
objj_msgSend(_a,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin|CPViewMinXMargin);
objj_msgSend(_a,"setTarget:",_5);
objj_msgSend(_a,"setAction:",sel_getUid("_editMetadataWasClicked:"));
objj_msgSend(_toolbar,"addSubview:",_a);
var _b=objj_msgSend(HUDButton,"buttonWithTitle:",CPLocalizedString("Customize","Customize"));
objj_msgSend(_b,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_a,"frame"))-5-CGRectGetWidth(objj_msgSend(_b,"frame")),(CGRectGetHeight(objj_msgSend(_toolbar,"frame"))-CGRectGetHeight(objj_msgSend(_b,"frame")))/2));
objj_msgSend(_b,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin|CPViewMinXMargin);
objj_msgSend(_b,"setTarget:",_5);
objj_msgSend(_b,"setAction:",sel_getUid("_customizeWasClicked:"));
objj_msgSend(_toolbar,"addSubview:",_b);
_customizeMenu=objj_msgSend(objj_msgSend(CPMenu,"alloc"),"initWithTitle:","");
objj_msgSend(objj_msgSend(_customizeMenu,"addItemWithTitle:action:keyEquivalent:",CPLocalizedString("Choose Poster","Choose Poster"),sel_getUid("_customizePosterWasClicked:"),nil),"setTarget:",_5);
objj_msgSend(objj_msgSend(_customizeMenu,"addItemWithTitle:action:keyEquivalent:",CPLocalizedString("Choose Banner","Choose Banner"),sel_getUid("_customizeBannerWasClicked:"),nil),"setTarget:",_5);
objj_msgSend(objj_msgSend(_customizeMenu,"addItemWithTitle:action:keyEquivalent:",CPLocalizedString("Choose Background Art","Choose Background Art"),sel_getUid("_customizeBackgroundArtWasClicked:"),nil),"setTarget:",_5);
var _c=objj_msgSend(HUDButton,"buttonWithTitle:",CPLocalizedString("Fix incorrect match","Fix incorrect match"));
objj_msgSend(_c,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_b,"frame"))-5-CGRectGetWidth(objj_msgSend(_c,"frame")),(CGRectGetHeight(objj_msgSend(_toolbar,"frame"))-CGRectGetHeight(objj_msgSend(_c,"frame")))/2));
objj_msgSend(_c,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin|CPViewMinXMargin);
objj_msgSend(_c,"setTarget:",_5);
objj_msgSend(_c,"setAction:",sel_getUid("_fixIncorrectMatchWasClicked:"));
objj_msgSend(_toolbar,"addSubview:",_c);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_5,sel_getUid("recordWasUpdated:"),MMDataSourceDidUpdateRecord,nil);
}
return _5;
}
}),new objj_method(sel_getUid("_editMetadataWasClicked:"),function(_d,_e,_f){
with(_d){
_editor=objj_msgSend(objj_msgSend(MMMetadataEditorController,"alloc"),"initWithDelegate:",_d);
objj_msgSend(_editor,"presentMediaItem:inWindow:",mediaItem,objj_msgSend(_d,"window"));
}
}),new objj_method(sel_getUid("metadataEditor:didCommitMetadataItem:"),function(_10,_11,_12,_13){
with(_10){
objj_msgSend(_dataSource,"updateRecord:",_13);
}
}),new objj_method(sel_getUid("dataSource:didUpdateRecord:contextInfo:"),function(_14,_15,_16,_17,_18){
with(_14){
objj_msgSend(_editor,"dismissSheet");
}
}),new objj_method(sel_getUid("dataSource:didFailToUpdateRecord:withError:contextInfo:"),function(_19,_1a,_1b,_1c,_1d,_1e){
with(_19){
objj_msgSend(AppController,"notifyUserOfError:withTitle:",_1d,"Unable to update metadata");
}
}),new objj_method(sel_getUid("_customizeWasClicked:"),function(_1f,_20,_21){
with(_1f){
objj_msgSend(_customizeMenu,"popUpMenuPositioningItem:atLocation:inView:callback:",objj_msgSend(objj_msgSend(_customizeMenu,"itemArray"),"objectAtIndex:",0),CGPointMake(0,0),_21,nil);
}
}),new objj_method(sel_getUid("_customizePosterWasClicked:"),function(_22,_23,_24){
with(_22){
_imagePicker=objj_msgSend(MMImagePickerController,"presentMediaItem:inView:itemSize:withToolbarView:dataSource:",mediaItem,_22,CGSizeMake(128,150),objj_msgSend(_22,"superview"),objj_msgSend(MMPosterMetadataDataSource,"sharedDataSource"));
}
}),new objj_method(sel_getUid("_customizeBannerWasClicked:"),function(_25,_26,_27){
with(_25){
_imagePicker=objj_msgSend(MMImagePickerController,"presentMediaItem:inView:itemSize:withToolbarView:dataSource:",mediaItem,_25,CGSizeMake(150,75),objj_msgSend(_25,"superview"),objj_msgSend(MMBannerMetadataDataSource,"sharedDataSource"));
}
}),new objj_method(sel_getUid("_customizeBackgroundArtWasClicked:"),function(_28,_29,_2a){
with(_28){
_imagePicker=objj_msgSend(MMImagePickerController,"presentMediaItem:inView:itemSize:withToolbarView:dataSource:",mediaItem,_28,CGSizeMake(150,75),objj_msgSend(_28,"superview"),objj_msgSend(MMBackgroundArtMetadataDataSource,"sharedDataSource"));
}
}),new objj_method(sel_getUid("removeFromSuperview"),function(_2b,_2c){
with(_2b){
objj_msgSendSuper({receiver:_2b,super_class:objj_getClass("MMMediaItemDetailView").super_class},"removeFromSuperview");
objj_msgSend(_matchPicker,"dismissSheet"),_matchPicker=nil;
objj_msgSend(_imagePicker,"dismissPicker"),_imagePicker=nil;
}
}),new objj_method(sel_getUid("_fixIncorrectMatchWasClicked:"),function(_2d,_2e,_2f){
with(_2d){
_matchPicker=objj_msgSend(objj_msgSend(MMMatchPickerController,"alloc"),"initWithDelegate:",_2d);
objj_msgSend(_matchPicker,"setMediaItem:",mediaItem);
objj_msgSend(_matchPicker,"presentSheetInWindow:",objj_msgSend(_2d,"window"));
}
}),new objj_method(sel_getUid("picker:didSelectSearchResult:"),function(_30,_31,_32,_33){
with(_30){
if(_32!==_matchPicker){
return;
}
CPLog.info("[%@ -picker:didSelectSearchResult:] user chose %@ as the correct match for %@",objj_msgSend(_30,"class"),_33,mediaItem);
objj_msgSend(_matchPicker,"dismissSheet"),_matchPicker=nil;
objj_msgSend(objj_msgSend(MMMediaMatchesDataSource,"sharedDataSource"),"selectMatch:forMediaItem:",_33,mediaItem);
}
}),new objj_method(sel_getUid("pickerDidCancel:"),function(_34,_35,_36){
with(_34){
objj_msgSend(_matchPicker,"dismissSheet"),_matchPicker=nil;
}
}),new objj_method(sel_getUid("drawLayer:inContext:"),function(_37,_38,_39,_3a){
with(_37){
var _3b=5,_3c=objj_msgSend(_37,"bounds");
CGContextBeginPath(_3a);
CGContextSetFillColor(_3a,objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",1,0.6));
CGContextMoveToPoint(_3a,CGRectGetMinX(_3c),CGRectGetMinY(_3c));
CGContextAddLineToPoint(_3a,CGRectGetMaxX(_3c),CGRectGetMinY(_3c));
CGContextAddLineToPoint(_3a,CGRectGetMaxX(_3c),CGRectGetMaxY(_3c));
CGContextAddLineToPoint(_3a,CGRectGetMinX(_3c),CGRectGetMaxY(_3c));
CGContextAddLineToPoint(_3a,CGRectGetMinX(_3c),CGRectGetMinY(_3c));
CGContextClosePath(_3a);
CGContextFillPath(_3a);
var _3d;
var _3e;
var _3f=2;
var _40=[0,0.5];
var _41=[237/255,237/255,237/255,0,237/255,237/255,237/255,1];
_3e=CGColorSpaceCreateDeviceRGB();
_3d=CGGradientCreateWithColorComponents(_3e,_41,_40,_3f);
var _42=CGPointMake(0,CGRectGetMidY(_3c)),_43=CGPointMake(1,CGRectGetMaxY(_3c));
CGContextClip(_3a);
CGContextDrawLinearGradient(_3a,_3d,_42,_43,0);
}
}),new objj_method(sel_getUid("mediaItem"),function(_44,_45){
with(_44){
return mediaItem;
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_46,_47){
with(_46){
objj_msgSend(_46,"layoutArtView");
objj_msgSendSuper({receiver:_46,super_class:objj_getClass("MMMediaItemDetailView").super_class},"layoutSubviews");
}
}),new objj_method(sel_getUid("layoutArtView"),function(_48,_49){
with(_48){
if(!objj_msgSend(mediaArtView,"image")){
return;
}
var _4a=objj_msgSend(objj_msgSend(mediaArtView,"image"),"size"),_4b=objj_msgSend(_48,"bounds"),_4c=CGRectGetWidth(_4b),_4d=CGRectGetHeight(_4b);
if(!_4a||(_4a.width==-1&&_4a.height==-1)){
return;
}
var _4e=_4a.width/_4a.height,_4f=_4c/_4d;
if(_4f>_4e){
var _50=ROUND(_4a.height*_4c/_4a.width),_51=_50-_4d;
objj_msgSend(mediaArtView,"setFrame:",CGRectMake(0,-ROUND(_51/2),_4c,_50));
}else{
var _52=ROUND(_4a.width*_4d/_4a.height),_53=_52-_4c;
objj_msgSend(mediaArtView,"setFrame:",CGRectMake(-ROUND(_53/2),0,_52,_4d));
}
}
}),new objj_method(sel_getUid("layoutThumbView"),function(_54,_55){
with(_54){
if(!objj_msgSend(mediaThumbView,"image")){
return;
}
var _56=objj_msgSend(objj_msgSend(mediaThumbView,"image"),"size"),_57=CGRectGetWidth(objj_msgSend(mediaThumbView,"bounds")),_58=_56.height*_57/_56.width;
objj_msgSend(mediaThumbView,"setFrameSize:",CGSizeMake(_57,_58));
}
}),new objj_method(sel_getUid("setMediaItem:"),function(_59,_5a,_5b){
with(_59){
if(objj_msgSend(mediaItem,"isEqual:",_5b)){
return;
}
var _5c=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(mediaItem){
objj_msgSend(_5c,"removeObserver:name:object:",_59,CPImageDidLoadNotification,objj_msgSend(mediaItem,"artImage"));
objj_msgSend(_5c,"removeObserver:name:object:",_59,CPImageDidLoadNotification,objj_msgSend(mediaItem,"thumbImage"));
}
mediaItem=_5b;
objj_msgSend(_59,"refreshView");
}
}),new objj_method(sel_getUid("refreshView"),function(_5d,_5e){
with(_5d){
var _5f=objj_msgSend(CPNotificationCenter,"defaultCenter");
objj_msgSend(title,"setStringValue:",objj_msgSend(mediaItem,"displayTitle"));
objj_msgSend(title,"sizeToFit");
if(objj_msgSend(mediaItem,"year")){
objj_msgSend(year,"setStringValue:",objj_msgSend(CPString,"stringWithFormat:","(%d)",objj_msgSend(mediaItem,"year")));
if(objj_msgSend(objj_msgSend(title,"stringValue"),"hasSuffix:",objj_msgSend(year,"stringValue"))){
objj_msgSend(title,"setStringValue:",objj_msgSend(objj_msgSend(title,"stringValue"),"substringToIndex:",objj_msgSend(objj_msgSend(title,"stringValue"),"length")-objj_msgSend(objj_msgSend(year,"stringValue"),"length")));
objj_msgSend(title,"sizeToFit");
}
objj_msgSend(year,"sizeToFit");
objj_msgSend(year,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(title,"frame"))+5,CGRectGetMidY(objj_msgSend(title,"frame"))-CGRectGetHeight(objj_msgSend(year,"frame"))/2));
objj_msgSend(year,"setHidden:",NO);
}else{
objj_msgSend(year,"setHidden:",YES);
}
objj_msgSend(tagline,"setStringValue:",objj_msgSend(mediaItem,"tagline"));
objj_msgSend(summary,"setStringValue:",objj_msgSend(mediaItem,"summary"));
var _60=objj_msgSend(objj_msgSend(mediaItem,"thumbImage"),"constrainedToSize:",CGSizeMake(512,512));
objj_msgSend(mediaThumbView,"setImage:",_60||objj_msgSend(MMLibraryMediaItem,"blankThumbImage"));
if(objj_msgSend(_60,"loadStatus")==CPImageLoadStatusCompleted){
objj_msgSend(_5d,"layoutThumbView");
}else{
objj_msgSend(_5f,"addObserver:selector:name:object:",_5d,sel_getUid("thumbDidLoad:"),CPImageDidLoadNotification,_60);
objj_msgSend(_60,"load");
}
var _61=objj_msgSend(objj_msgSend(mediaItem,"artImage"),"constrainedToSize:",CGSizeMake(1280,720));
objj_msgSend(mediaArtView,"setImage:",_61);
if(objj_msgSend(_61,"loadStatus")==CPImageLoadStatusCompleted){
objj_msgSend(_5d,"layoutArtView");
}else{
objj_msgSend(_5f,"addObserver:selector:name:object:",_5d,sel_getUid("artDidLoad:"),CPImageDidLoadNotification,_61);
objj_msgSend(_61,"load");
}
var _62=objj_msgSend(mediaItem,"updatedAt");
if(_62){
objj_msgSend(_lastUpdatedLabel,"setStringValue:",objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Last refreshed %@ at %@","Status label for media items"),objj_msgSend(_62,"relativeDate"),objj_msgSend(_62,"shortLocalTime")));
objj_msgSend(_lastUpdatedLabel,"sizeToFit");
objj_msgSend(_lastUpdatedLabel,"setFrameOrigin:",CPPointMake(CGRectGetMinX(objj_msgSend(_lastUpdatedLabel,"frame")),(CGRectGetHeight(objj_msgSend(objj_msgSend(_lastUpdatedLabel,"superview"),"frame"))-CGRectGetHeight(objj_msgSend(_lastUpdatedLabel,"frame")))/2));
}else{
objj_msgSend(_lastUpdatedLabel,"setStringValue:","");
}
}
}),new objj_method(sel_getUid("artDidLoad:"),function(_63,_64,_65){
with(_63){
objj_msgSend(_63,"layoutArtView");
}
}),new objj_method(sel_getUid("thumbDidLoad:"),function(_66,_67,_68){
with(_66){
objj_msgSend(_66,"layoutThumbView");
}
}),new objj_method(sel_getUid("recordWasUpdated:"),function(_69,_6a,_6b){
with(_69){
var _6c=objj_msgSend(objj_msgSend(_6b,"userInfo"),"objectForKey:","record");
var _6d=objj_msgSend(objj_msgSend(_6b,"userInfo"),"objectForKey:","contextInfo");
if(objj_msgSend(_6c,"isEqual:",mediaItem)){
mediaItem=_6c;
}else{
if(objj_msgSend(_6d,"isEqual:",mediaItem)){
mediaItem=_6d;
}else{
return;
}
}
objj_msgSend(_69,"refreshView");
}
})]);
p;26;Views/MMPreferencesPanel.jt;13950;@STATIC;1.0;I;26;AppKit/CPKeyValueBinding.jI;20;AppKit/CPResponder.jI;15;AppKit/CPView.ji;42;../Frameworks/LPKit/LPMultiLineTextField.ji;34;../Controllers/MMPrefsController.ji;18;../Models/MMPref.jt;13745;
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
var _17=objj_msgSend(CPCheckBox,"checkBoxWithTitle:",CPLocalizedString("Include music sections in automatic updates","Preference window setting"));
objj_msgSend(_17,"sizeToFit");
objj_msgSend(_17,"setFrameOrigin:",CGPointMake(0,CGRectGetMaxY(objj_msgSend(_16,"frame"))+10));
objj_msgSend(_17,"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.autoScanMusicSections",nil);
objj_msgSend(_15,"addSubview:",_17);
var _18=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Large music sections may take a long time to scan","Preference window setting"));
objj_msgSend(_18,"setFrameOrigin:",CGPointMake(17,CGRectGetMaxY(objj_msgSend(_17,"frame"))));
objj_msgSend(_15,"addSubview:",_18);
objj_msgSend(_15,"sizeToFit");
var _19=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_b);
objj_msgSend(_4,"addSubview:positioned:relativeTo:",_19,CPWindowBelow,_8);
objj_msgSend(_sectionViewsByIdentifier,"setObject:forKey:",_19,"Sharing");
var _1a=objj_msgSend(CPCheckBox,"checkBoxWithTitle:",CPLocalizedString("iTunes Sharing Enabled","Preference window setting"));
objj_msgSend(_1a,"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.iTunesSharingEnabled",nil);
objj_msgSend(_19,"addSubview:",_1a);
var _1b=objj_msgSend(CPCheckBox,"checkBoxWithTitle:",CPLocalizedString("iPhoto Sharing Enabled","Preference window setting"));
objj_msgSend(_1b,"setFrameOrigin:",CGPointMake(0,CGRectGetMaxY(objj_msgSend(_1a,"frame"))+10));
objj_msgSend(_1b,"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.iPhotoSharingEnabled",nil);
objj_msgSend(_19,"addSubview:",_1b);
var _1c=objj_msgSend(CPCheckBox,"checkBoxWithTitle:",CPLocalizedString("Aperture Sharing Enabled","Preference window setting"));
objj_msgSend(_1c,"setFrameOrigin:",CGPointMake(0,CGRectGetMaxY(objj_msgSend(_1b,"frame"))+10));
objj_msgSend(_1c,"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.ApertureSharingEnabled",nil);
objj_msgSend(_19,"addSubview:",_1c);
objj_msgSend(_19,"sizeToFit");
var _1d=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_b);
objj_msgSend(_4,"addSubview:positioned:relativeTo:",_1d,CPWindowBelow,_8);
objj_msgSend(_sectionViewsByIdentifier,"setObject:forKey:",_1d,"Transcoding");
var _1e=objj_msgSend(CPCheckBox,"checkBoxWithTitle:",CPLocalizedString("Offer higher bitrates over 3G connections","Preference window setting"));
objj_msgSend(_1e,"sizeToFit");
objj_msgSend(_1e,"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.higherBitrate3G",nil);
objj_msgSend(_1d,"addSubview:",_1e);
objj_msgSend(_1d,"sizeToFit");
var _1f=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_b);
objj_msgSend(_4,"addSubview:positioned:relativeTo:",_1f,CPWindowBelow,_8);
objj_msgSend(_sectionViewsByIdentifier,"setObject:forKey:",_1f,"Advanced");
var _20=objj_msgSend(CPCheckBox,"checkBoxWithTitle:","Disable capability checking");
objj_msgSend(_20,"sizeToFit");
objj_msgSend(_20,"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.disableCapabilityChecking",nil);
objj_msgSend(_1f,"addSubview:",_20);
var _21=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Capability checking ensures that plug-ins that are incompatible with this version of the server or the current client application you are using are hidden. Disabling capability checking is useful during development, but will enable access to plug-ins that may perform unreliably with certain client applications.","Preference window setting detail"));
var _22=objj_msgSend(objj_msgSend(_21,"stringValue"),"sizeWithFont:inWidth:",objj_msgSend(_21,"font"),CGRectGetWidth(objj_msgSend(_1f,"frame"))-CGRectGetMinX(objj_msgSend(_21,"frame")));
_22.height+=5;
objj_msgSend(_21,"setLineBreakMode:",CPLineBreakByWordWrapping);
objj_msgSend(_21,"setFrameOrigin:",CGPointMake(17,CGRectGetMaxY(objj_msgSend(_20,"frame"))));
objj_msgSend(_21,"setFrameSize:",_22);
objj_msgSend(_1f,"addSubview:",_21);
objj_msgSend(_1f,"sizeToFit");
var _23=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Done","Done"));
objj_msgSend(_23,"setKeyEquivalent:",CPEscapeFunctionKey);
objj_msgSend(_23,"setFrameOrigin:",CGPointMake(CGRectGetWidth(objj_msgSend(_4,"frame"))-_a.right-CGRectGetWidth(objj_msgSend(_23,"frame")),CGRectGetHeight(objj_msgSend(_4,"frame"))-_a.bottom-CGRectGetHeight(objj_msgSend(_23,"frame"))));
objj_msgSend(_23,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin);
objj_msgSend(_23,"setTarget:",_4);
objj_msgSend(_23,"setAction:",sel_getUid("dismissSheet"));
objj_msgSend(_4,"addSubview:",_23);
objj_msgSend(_4,"selectViewForIdentifier:","General");
}
return _4;
}
}),new objj_method(sel_getUid("presentSheetInWindow:"),function(_24,_25,_26){
with(_24){
if(_sheetPanel){
return;
}
_sheetPanel=objj_msgSend(objj_msgSend(CPPanel,"alloc"),"initWithContentRect:styleMask:",objj_msgSend(_24,"bounds"),CPDocModalWindowMask);
objj_msgSend(_sheetPanel,"setInitialFirstResponder:",_initialFirstResponder);
objj_msgSend(_sheetPanel,"setContentView:",_24);
objj_msgSend(CPApp,"beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:",_sheetPanel,_26,nil,nil,nil);
}
}),new objj_method(sel_getUid("dismissSheet"),function(_27,_28){
with(_27){
if(!_sheetPanel){
return;
}
objj_msgSend(CPApp,"endSheet:returnCode:",_sheetPanel,0),_sheetPanel=nil;
}
}),new objj_method(sel_getUid("toolbarDefaultItemIdentifiers:"),function(_29,_2a,_2b){
with(_29){
return ["General","Library","Sharing","Transcoding","Advanced"];
}
}),new objj_method(sel_getUid("toolbar:itemForItemIdentifier:willBeInsertedIntoToolbar:"),function(_2c,_2d,_2e,_2f,_30){
with(_2c){
var _31=objj_msgSend(objj_msgSend(CPToolbarItem,"alloc"),"initWithItemIdentifier:",_2f);
objj_msgSend(_31,"setImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initByReferencingFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:",_2f+".png"),CGSizeMake(32,32)));
objj_msgSend(_31,"setLabel:",objj_msgSend(_2c,"localizedSectionNameForToolbar:itemIdentifier:",_2e,_2f));
objj_msgSend(_31,"setAction:",sel_getUid("toolbarItemWasSelected:"));
objj_msgSend(_31,"setTarget:",_2c);
return _31;
}
}),new objj_method(sel_getUid("toolbarItemWasSelected:"),function(_32,_33,_34){
with(_32){
objj_msgSend(_32,"selectViewForIdentifier:",objj_msgSend(_34,"itemIdentifier"));
}
}),new objj_method(sel_getUid("selectViewForIdentifier:"),function(_35,_36,_37){
with(_35){
var _38=objj_msgSend(_sectionViewsByIdentifier,"objectForKey:",_37);
if(_selectedView){
objj_msgSend(_35,"transitionFromSubview:toSubview:",_selectedView,_38);
}else{
objj_msgSend(_35,"willTransitionFromSubview:toSubview:",nil,_38);
objj_msgSend(_35,"didTransitionFromSubview:toSubview:",nil,_38);
}
}
}),new objj_method(sel_getUid("didTransitionFromSubview:toSubview:"),function(_39,_3a,_3b,_3c){
with(_39){
var _3d=objj_msgSend(_sectionViewsByIdentifier,"objectEnumerator"),_3e=null;
while(_3e=objj_msgSend(_3d,"nextObject")){
objj_msgSend(_3e,"setHidden:",YES);
}
objj_msgSend(_3c,"setHidden:",NO);
_selectedView=_3c;
}
}),new objj_method(sel_getUid("localizedSectionNameForToolbar:itemIdentifier:"),function(_3f,_40,_41,_42){
with(_3f){
if(!_1){
_1=objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[CPLocalizedString("General","General"),CPLocalizedString("Library","Library"),CPLocalizedString("Sharing","Sharing"),CPLocalizedString("Transcoding","Transcoding"),CPLocalizedString("Advanced","Advanced")],objj_msgSend(_3f,"toolbarDefaultItemIdentifiers:",_41));
}
return objj_msgSend(_1,"objectForKey:",_42);
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("themeAttributes"),function(_43,_44){
with(_43){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[CGInsetMake(15,15,15,15)],["content-inset"]);
}
})]);
p;20;Views/MMScrollView.jt;1154;@STATIC;1.0;I;21;AppKit/CPScrollView.ji;12;MMClipView.jt;1092;
objj_executeFile("AppKit/CPScrollView.j",NO);
objj_executeFile("MMClipView.j",YES);
var _1=objj_allocateClassPair(CPScrollView,"MMScrollView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_lastClipViewScrollPoint")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("MMScrollView").super_class},"initWithFrame:",_5)){
objj_msgSend(_3,"setContentView:",objj_msgSend(objj_msgSend(MMClipView,"alloc"),"init"));
objj_msgSend(objj_msgSend(_3,"contentView"),"setDelegate:",_3);
objj_msgSend(_3,"setAutohidesScrollers:",YES);
}
return _3;
}
}),new objj_method(sel_getUid("clipView:didScrollToPoint:"),function(_6,_7,_8,_9){
with(_6){
if(_lastClipViewScrollPoint&&CGPointEqualToPoint(_lastClipViewScrollPoint,_9)){
return;
}
_lastClipViewScrollPoint=_9;
if(objj_msgSend(objj_msgSend(_6,"documentView"),"respondsToSelector:",sel_getUid("clipView:didScrollToPoint:"))){
objj_msgSend(objj_msgSend(_6,"documentView"),"clipView:didScrollToPoint:",_8,_9);
}
}
})]);
p;30;Views/MMSectionSettingsSheet.jt;28961;@STATIC;1.0;I;15;AppKit/CPView.ji;16;MMFileListView.ji;34;../DataSources/MMAgentDataSource.ji;34;../Views/MMDirectoryBrowserSheet.jt;28822;
objj_executeFile("AppKit/CPView.j",NO);
objj_executeFile("MMFileListView.j",YES);
objj_executeFile("../DataSources/MMAgentDataSource.j",YES);
objj_executeFile("../Views/MMDirectoryBrowserSheet.j",YES);
MMSectionSettingsSheetReturnSuccess=0;
MMSectionSettingsSheetReturnCancel=1;
var _1=objj_msgSend(CPArray,"arrayWithObjects:","movie","show","artist");
var _2;
var _3=objj_allocateClassPair(CPView,"MMSectionSettingsSheet"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_settingsPanel"),new objj_ivar("_sectionPopUp"),new objj_ivar("_sectionNameField"),new objj_ivar("_mediaScannerPopUp"),new objj_ivar("_agentPopUp"),new objj_ivar("_languagePopUp"),new objj_ivar("_sourceFolderView"),new objj_ivar("_confirmButton"),new objj_ivar("_cancelButton"),new objj_ivar("_didEndSelector"),new objj_ivar("_modalDelegate"),new objj_ivar("_librarySectionsDataSource"),new objj_ivar("_selectedSectionTypeIndex"),new objj_ivar("_selectedAgentIndex"),new objj_ivar("_agentDataSource"),new objj_ivar("_agents"),new objj_ivar("_directoryBrowserSheet")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("initWithDataSource:"),function(_5,_6,_7){
with(_5){
if(_5=objj_msgSendSuper({receiver:_5,super_class:objj_getClass("MMSectionSettingsSheet").super_class},"init")){
_settingsPanel=nil;
_selectedSectionTypeIndex=CPNotFound;
_selectedAgentIndex=CPNotFound;
_agentDataSource=objj_msgSend(objj_msgSend(MMAgentDataSource,"alloc"),"initWithDelegate:",_5);
_librarySectionsDataSource=_7;
CPLog.debug("[MMSectionSettingsSheet -initWithDataSource:] observing %@",_librarySectionsDataSource);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_5,sel_getUid("dataSourceDidCreateRecord:"),MMDataSourceDidCreateRecord,_librarySectionsDataSource);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_5,sel_getUid("dataSourceDidFailToCreateRecord:"),MMDataSourceDidFailToCreateRecord,_librarySectionsDataSource);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_5,sel_getUid("dataSourceDidUpdateRecord:"),MMDataSourceDidUpdateRecord,_librarySectionsDataSource);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_5,sel_getUid("dataSourceDidFailToUpdateRecord:"),MMDataSourceDidFailToUpdateRecord,_librarySectionsDataSource);
}
return _5;
}
}),new objj_method(sel_getUid("sectionName"),function(_8,_9){
with(_8){
return objj_msgSend(_sectionNameField,"stringValue");
}
}),new objj_method(sel_getUid("sectionType"),function(_a,_b){
with(_a){
return objj_msgSend(objj_msgSend(_sectionPopUp,"selectedItem"),"tag");
}
}),new objj_method(sel_getUid("sectionScanner"),function(_c,_d){
with(_c){
return objj_msgSend(objj_msgSend(_mediaScannerPopUp,"selectedItem"),"title");
}
}),new objj_method(sel_getUid("sectionAgent"),function(_e,_f){
with(_e){
return objj_msgSend(objj_msgSend(_agents,"objectAtIndex:",objj_msgSend(_agentPopUp,"indexOfSelectedItem")),"identifier");
}
}),new objj_method(sel_getUid("layoutPanel"),function(_10,_11){
with(_10){
if(!_settingsPanel){
objj_msgSend(_10,"_createPanel");
}
}
}),new objj_method(sel_getUid("_createPanel"),function(_12,_13){
with(_12){
var _14=16;
_settingsPanel=objj_msgSend(objj_msgSend(CPPanel,"alloc"),"initWithContentRect:styleMask:",CGRectMake(0,0,435,496),CPDocModalWindowMask);
var _15=objj_msgSend(_settingsPanel,"contentView");
_sectionPopUp=objj_msgSend(objj_msgSend(CPPopUpButton,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_sectionPopUp,"sizeToFit");
objj_msgSend(_sectionPopUp,"setFrame:",CGRectMake(161,_14,CGRectGetWidth(objj_msgSend(_15,"frame"))-161-_14,CGRectGetHeight(objj_msgSend(_sectionPopUp,"frame"))));
objj_msgSend(_sectionPopUp,"addItemsWithTitles:",objj_msgSend(CPArray,"arrayWithObjects:",CPLocalizedString("Movies","Movies"),CPLocalizedString("TV Shows","TV Shows"),CPLocalizedString("Music","Music")));
objj_msgSend(_sectionPopUp,"setTarget:",_12);
objj_msgSend(_sectionPopUp,"setAction:",sel_getUid("_sectionTypeWasClicked"));
objj_msgSend(_sectionPopUp,"setAutoresizingMask:",CPViewMinXMargin);
objj_msgSend(_15,"addSubview:",_sectionPopUp);
var _16=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_16,"setStringValue:",CPLocalizedString("Section type:","Section type label"));
objj_msgSend(_16,"sizeToFit");
objj_msgSend(_16,"setFrameOrigin:",CGPointMake(_14,CGRectGetMinY(objj_msgSend(_sectionPopUp,"frame"))+ROUND((CGRectGetHeight(objj_msgSend(_sectionPopUp,"frame"))-CGRectGetHeight(objj_msgSend(_16,"frame")))/2)));
objj_msgSend(_15,"addSubview:",_16);
_sectionNameField=objj_msgSend(CPTextField,"textFieldWithStringValue:placeholder:width:","","",CGRectGetWidth(objj_msgSend(_sectionPopUp,"frame")));
objj_msgSend(_settingsPanel,"setInitialFirstResponder:",_sectionNameField);
objj_msgSend(_sectionNameField,"setFrameOrigin:",CGPointMake(161,CGRectGetMaxY(objj_msgSend(_sectionPopUp,"frame"))+4));
objj_msgSend(_sectionNameField,"setAutoresizingMask:",CPViewMinXMargin);
objj_msgSend(_15,"addSubview:",_sectionNameField);
var _17=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_17,"setStringValue:",CPLocalizedString("Section name:","Section name label"));
objj_msgSend(_17,"sizeToFit");
objj_msgSend(_17,"setFrameOrigin:",CGPointMake(_14,CGRectGetMinY(objj_msgSend(_sectionNameField,"frame"))+ROUND((CGRectGetHeight(objj_msgSend(_sectionPopUp,"frame"))-CGRectGetHeight(objj_msgSend(_17,"frame")))/2)));
objj_msgSend(_15,"addSubview:",_17);
var _18=objj_msgSend(objj_msgSend(CPBox,"alloc"),"initWithFrame:",CGRectMake(_14-4,CGRectGetMaxY(objj_msgSend(_sectionNameField,"frame"))+8,CGRectGetWidth(objj_msgSend(_15,"frame"))-(_14-4)*2,1));
objj_msgSend(_15,"addSubview:",_18);
_mediaScannerPopUp=objj_msgSend(objj_msgSend(CPPopUpButton,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_mediaScannerPopUp,"sizeToFit");
objj_msgSend(_mediaScannerPopUp,"setFrame:",CGRectMake(161,CGRectGetMaxY(objj_msgSend(_18,"frame"))+8,CGRectGetWidth(objj_msgSend(_15,"frame"))-161-_14,CGRectGetHeight(objj_msgSend(_mediaScannerPopUp,"frame"))));
objj_msgSend(_mediaScannerPopUp,"setAutoresizingMask:",CPViewMinXMargin);
objj_msgSend(_15,"addSubview:",_mediaScannerPopUp);
var _19=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_19,"setStringValue:",CPLocalizedString("Media scanner:","Media scanner label"));
objj_msgSend(_19,"sizeToFit");
objj_msgSend(_19,"setFrameOrigin:",CGPointMake(_14,CGRectGetMinY(objj_msgSend(_mediaScannerPopUp,"frame"))+ROUND((CGRectGetHeight(objj_msgSend(_mediaScannerPopUp,"frame"))-CGRectGetHeight(objj_msgSend(_19,"frame")))/2)));
objj_msgSend(_15,"addSubview:",_19);
_agentPopUp=objj_msgSend(objj_msgSend(CPPopUpButton,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_agentPopUp,"sizeToFit");
objj_msgSend(_agentPopUp,"setFrame:",CGRectMake(161,CGRectGetMaxY(objj_msgSend(_mediaScannerPopUp,"frame"))+6,CGRectGetWidth(objj_msgSend(_15,"frame"))-161-_14,CGRectGetHeight(objj_msgSend(_agentPopUp,"frame"))));
objj_msgSend(_agentPopUp,"setAutoresizingMask:",CPViewMinXMargin);
objj_msgSend(_agentPopUp,"setTarget:",_12);
objj_msgSend(_agentPopUp,"setAction:",sel_getUid("_agentWasClicked"));
objj_msgSend(_15,"addSubview:",_agentPopUp);
var _1a=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_1a,"setStringValue:",CPLocalizedString("Primary metadata agent:","Primary metadata agent label"));
objj_msgSend(_1a,"sizeToFit");
objj_msgSend(_1a,"setFrameOrigin:",CGPointMake(_14,CGRectGetMinY(objj_msgSend(_agentPopUp,"frame"))+ROUND((CGRectGetHeight(objj_msgSend(_agentPopUp,"frame"))-CGRectGetHeight(objj_msgSend(_1a,"frame")))/2)));
objj_msgSend(_15,"addSubview:",_1a);
_languagePopUp=objj_msgSend(objj_msgSend(CPPopUpButton,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_languagePopUp,"sizeToFit");
objj_msgSend(_languagePopUp,"setFrame:",CGRectMake(161,CGRectGetMaxY(objj_msgSend(_agentPopUp,"frame"))+6,CGRectGetWidth(objj_msgSend(_15,"frame"))-161-_14,CGRectGetHeight(objj_msgSend(_languagePopUp,"frame"))));
objj_msgSend(_languagePopUp,"setAutoresizingMask:",CPViewMinXMargin);
objj_msgSend(_15,"addSubview:",_languagePopUp);
var _1b=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_1b,"setStringValue:",CPLocalizedString("Language:","Language label"));
objj_msgSend(_1b,"sizeToFit");
objj_msgSend(_1b,"setFrameOrigin:",CGPointMake(_14,CGRectGetMinY(objj_msgSend(_languagePopUp,"frame"))+ROUND((CGRectGetHeight(objj_msgSend(_languagePopUp,"frame"))-CGRectGetHeight(objj_msgSend(_1b,"frame")))/2)));
objj_msgSend(_15,"addSubview:",_1b);
var _1c=objj_msgSend(objj_msgSend(CPBox,"alloc"),"initWithFrame:",CGRectMake(_14-4,CGRectGetMaxY(objj_msgSend(_languagePopUp,"frame"))+8,CGRectGetWidth(objj_msgSend(_15,"frame"))-(_14-4)*2,1));
objj_msgSend(_15,"addSubview:",_1c);
var _1d=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_1d,"setLineBreakMode:",CPLineBreakByWordWrapping);
objj_msgSend(_1d,"setStringValue:",CPLocalizedString("Add the folders containing media for this section below. Any media files found inside these folders will be scanned into your library using the above settings.","Section settings primary informative text"));
objj_msgSend(_1d,"setFrameOrigin:",CGPointMake(_14,CGRectGetMaxY(objj_msgSend(_1c,"frame"))+8));
var _1e=objj_msgSend(objj_msgSend(_1d,"stringValue"),"sizeWithFont:inWidth:",objj_msgSend(_1d,"font"),CGRectGetWidth(objj_msgSend(_15,"frame"))-_14*2);
_1e.height+=5;
objj_msgSend(_1d,"setFrameSize:",_1e);
objj_msgSend(_15,"addSubview:",_1d);
var _1f=objj_msgSend(objj_msgSend(CPBox,"alloc"),"initWithFrame:",CGRectMake(_14-4,CGRectGetMaxY(objj_msgSend(_1d,"frame"))+8,CGRectGetWidth(objj_msgSend(_15,"frame"))-(_14-4)*2,1));
objj_msgSend(_15,"addSubview:",_1f);
var _20=objj_msgSend(objj_msgSend(CPScrollView,"alloc"),"initWithFrame:",CGRectMake(_14,CGRectGetMaxY(objj_msgSend(_1f,"frame"))+8,CGRectGetWidth(objj_msgSend(_15,"frame"))-_14*2,150));
objj_msgSend(_20,"setBorderType:",CPLineBorder);
objj_msgSend(_20,"setHasHorizontalScroller:",NO);
objj_msgSend(_20,"setAutohidesScrollers:",YES);
objj_msgSend(_15,"addSubview:",_20);
_sourceFolderView=objj_msgSend(objj_msgSend(MMFileListView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_sourceFolderView,"setFrameSize:",objj_msgSend(_20,"contentSize"));
objj_msgSend(_sourceFolderView,"setAutoresizingMask:",CPViewWidthSizable|CPViewMaxYMargin);
objj_msgSend(_20,"setDocumentView:",_sourceFolderView);
var _21=objj_msgSend(CPButton,"buttonWithTitle:","+");
objj_msgSend(_21,"setFrame:",CGRectMake(_14,CGRectGetMaxY(objj_msgSend(_20,"frame"))+6,23,CGRectGetHeight(objj_msgSend(_21,"frame"))));
objj_msgSend(_21,"setTarget:",_12);
objj_msgSend(_21,"setAction:",sel_getUid("_addSourceFolder:"));
objj_msgSend(_15,"addSubview:",_21);
var _22=objj_msgSend(CPButton,"buttonWithTitle:","–");
objj_msgSend(_22,"setFrame:",CGRectMake(CGRectGetMaxX(objj_msgSend(_21,"frame"))+2,CGRectGetMinY(objj_msgSend(_21,"frame")),23,CGRectGetHeight(objj_msgSend(_22,"frame"))));
objj_msgSend(_22,"setTarget:",_12);
objj_msgSend(_22,"setAction:",sel_getUid("_removeSelectedSourceFolders"));
objj_msgSend(_15,"addSubview:",_22);
var _23=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_23,"setStringValue:",CPLocalizedString("Drag folders into the list, or click the '+' button to browse.","Section settings secondary informative text"));
objj_msgSend(_23,"setFrame:",CGRectMake(CGRectGetMaxX(objj_msgSend(_22,"frame"))+4,CGRectGetMinY(objj_msgSend(_22,"frame")),CGRectGetMaxX(objj_msgSend(_15,"frame"))-CGRectGetMaxX(objj_msgSend(_22,"frame"))+4,CGRectGetHeight(objj_msgSend(_22,"frame"))));
objj_msgSend(_23,"setVerticalAlignment:",CPCenterTextAlignment);
objj_msgSend(_15,"addSubview:",_23);
var _24=objj_msgSend(objj_msgSend(CPBox,"alloc"),"initWithFrame:",CGRectMake(_14-4,CGRectGetMaxY(objj_msgSend(_22,"frame"))+8,CGRectGetWidth(objj_msgSend(_15,"frame"))-(_14-4)*2,1));
objj_msgSend(_15,"addSubview:",_24);
_confirmButton=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Add Section","Add section confirm button text"));
objj_msgSend(_confirmButton,"setTag:",MMSectionSettingsSheetReturnSuccess);
objj_msgSend(_confirmButton,"setKeyEquivalent:",CPCarriageReturnCharacter);
objj_msgSend(_confirmButton,"setTarget:",_12);
objj_msgSend(_confirmButton,"setAction:",sel_getUid("_confirmButtonClicked:"));
objj_msgSend(_confirmButton,"sizeToFit");
objj_msgSend(_confirmButton,"setFrameOrigin:",CGPointMake(CGRectGetWidth(objj_msgSend(_15,"frame"))-CGRectGetWidth(objj_msgSend(_confirmButton,"frame"))-_14,CGRectGetMaxY(objj_msgSend(_24,"frame"))+8));
objj_msgSend(_15,"addSubview:",_confirmButton);
_cancelButton=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Cancel","Cancel"));
objj_msgSend(_cancelButton,"setTag:",MMSectionSettingsSheetReturnCancel);
objj_msgSend(_cancelButton,"setKeyEquivalent:",CPEscapeFunctionKey);
objj_msgSend(_cancelButton,"setTarget:",_12);
objj_msgSend(_cancelButton,"setAction:",sel_getUid("_cancelButtonClicked:"));
objj_msgSend(_cancelButton,"sizeToFit");
objj_msgSend(_cancelButton,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_confirmButton,"frame"))-CGRectGetWidth(objj_msgSend(_cancelButton,"frame"))-4,CGRectGetMinY(objj_msgSend(_confirmButton,"frame"))));
objj_msgSend(_15,"addSubview:",_cancelButton);
objj_msgSend(_settingsPanel,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_settingsPanel,"frame")),CGRectGetMaxY(objj_msgSend(_cancelButton,"frame"))+_14));
objj_msgSend(_12,"_sectionTypeWasClicked");
}
}),new objj_method(sel_getUid("_setConfirmButtonTitle:"),function(_25,_26,_27){
with(_25){
var _28=CGRectGetMaxX(objj_msgSend(_confirmButton,"frame")),_29=CGRectGetWidth(objj_msgSend(_confirmButton,"frame"));
objj_msgSend(_confirmButton,"setTitle:",_27);
objj_msgSend(_confirmButton,"sizeToFit");
var _2a=CGRectGetWidth(objj_msgSend(_confirmButton,"frame")),_2b=_2a-_29;
objj_msgSend(_confirmButton,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_confirmButton,"frame"))-_2b,CGRectGetMinY(objj_msgSend(_confirmButton,"frame"))));
objj_msgSend(_cancelButton,"sizeToFit");
objj_msgSend(_cancelButton,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_cancelButton,"frame"))-_2b,CGRectGetMinY(objj_msgSend(_cancelButton,"frame"))));
}
}),new objj_method(sel_getUid("_selectedSectionType"),function(_2c,_2d){
with(_2c){
return objj_msgSend(_1,"objectAtIndex:",objj_msgSend(_sectionPopUp,"indexOfSelectedItem"));
}
}),new objj_method(sel_getUid("_setSelectedSectionType:"),function(_2e,_2f,_30){
with(_2e){
CPLog.trace("[%@ -_setSelectedSectionType:] START",objj_msgSend(_2e,"class"));
objj_msgSend(_sectionPopUp,"selectItemAtIndex:",objj_msgSend(_1,"indexOfObject:",_30));
CPLog.trace("[%@ -_setSelectedSectionType:] END",objj_msgSend(_2e,"class"));
}
}),new objj_method(sel_getUid("_selectedScanner"),function(_31,_32){
with(_31){
return objj_msgSend(_2[objj_msgSend(_31,"_selectedSectionType")].scanners,"objectAtIndex:",objj_msgSend(_mediaScannerPopUp,"indexOfSelectedItem"));
}
}),new objj_method(sel_getUid("_setSelectedScanner:"),function(_33,_34,_35){
with(_33){
CPLog.trace("[%@ -_setSelectedScanner:] START",objj_msgSend(_33,"class"));
objj_msgSend(_mediaScannerPopUp,"selectItemAtIndex:",objj_msgSend(_2[objj_msgSend(_33,"_selectedSectionType")].scanners,"indexOfObject:",_35));
CPLog.trace("[%@ -_setSelectedScanner:] END",objj_msgSend(_33,"class"));
}
}),new objj_method(sel_getUid("_selectedAgent"),function(_36,_37){
with(_36){
return objj_msgSend(_agents,"objectAtIndex:",objj_msgSend(_agentPopUp,"indexOfSelectedItem"));
}
}),new objj_method(sel_getUid("_setSelectedAgent:"),function(_38,_39,_3a){
with(_38){
CPLog.trace("[%@ -_setSelectedAgent:] START",objj_msgSend(_38,"class"));
var _3b=objj_msgSend(_agents,"indexOfObject:",_3a);
if(_3b==CPNotFound){
CPLog.warn("[%@ -_setSelectedAgent:] unable to find agent %@ in %@",objj_msgSend(_38,"class"),_3a,_agents);
}else{
CPLog.debug("[%@ -_setSelectedAgent:] selecting agent %@ at index %d",objj_msgSend(_38,"class"),_3a,_3b);
objj_msgSend(_agentPopUp,"selectItemAtIndex:",_3b);
objj_msgSend(_38,"_agentWasClicked");
}
CPLog.trace("[%@ -_setSelectedAgent:] END",objj_msgSend(_38,"class"));
}
}),new objj_method(sel_getUid("_selectedLanguage"),function(_3c,_3d){
with(_3c){
var _3e=objj_msgSend(objj_msgSend(_3c,"_selectedAgent"),"languages"),_3f=objj_msgSend(_languagePopUp,"indexOfSelectedItem");
if(_3f==CPNotFound){
return nil;
}
if(_3f>=0&&_3f<objj_msgSend(_3e,"count")){
CPLog.warn("[%@ -_selectedLanguage] index of selected language (%D) out of bounds for languages %@",objj_msgSend(_3c,"class"),_3f,_3e);
return nil;
}
return objj_msgSend(_3e,"objectAtIndex:",_3f);
}
}),new objj_method(sel_getUid("_setSelectedLanguage:"),function(_40,_41,_42){
with(_40){
CPLog.trace("[%@ -_setSelectedLanguage:] START",objj_msgSend(_40,"class"));
var _43=objj_msgSend(objj_msgSend(_40,"_selectedAgent"),"languages"),_44=objj_msgSend(_43,"indexOfObject:",_42);
if(_44==CPNotFound){
CPLog.warn("[%@ -_setSelectedLanguage:] unable to find language %@ in %@",objj_msgSend(_40,"class"),_42,_43);
}else{
CPLog.debug("[%@ -_setSelectedLanguage:] selecting language %@ at index %d",objj_msgSend(_40,"class"),_42,_44);
objj_msgSend(_languagePopUp,"selectItemAtIndex:",_44);
}
CPLog.trace("[%@ -_setSelectedLanguage:] END",objj_msgSend(_40,"class"));
}
}),new objj_method(sel_getUid("_sectionLocations"),function(_45,_46){
with(_45){
return objj_msgSend(_sourceFolderView,"files");
}
}),new objj_method(sel_getUid("_setSectionLocations:"),function(_47,_48,_49){
with(_47){
objj_msgSend(_sourceFolderView,"setFiles:",_49);
}
}),new objj_method(sel_getUid("_sectionTypeWasClicked"),function(_4a,_4b){
with(_4a){
CPLog.trace("[%@ -_sectionTypeWasClicked] START",objj_msgSend(_4a,"class"));
if(objj_msgSend(_sectionPopUp,"indexOfSelectedItem")==_selectedSectionTypeIndex){
CPLog.debug("[%@ -_sectionTypeWasClicked] ignoring, section type unchanged (index=%d)",objj_msgSend(_4a,"class"),_selectedSectionTypeIndex);
return;
}
_selectedSectionTypeIndex=objj_msgSend(_sectionPopUp,"indexOfSelectedItem");
objj_msgSend(_mediaScannerPopUp,"removeAllItems");
objj_msgSend(_agentPopUp,"removeAllItems");
var _4c=objj_msgSend(_4a,"_selectedSectionType"),_4d=_2[_4c];
CPLog.debug("[%@ -_sectionTypeWasClicked] activating name placeholder text: %@",objj_msgSend(_4a,"class"),_4d.namePlaceholder);
objj_msgSend(_sectionNameField,"setPlaceholderString:",_4d.namePlaceholder);
CPLog.debug("[%@ -_sectionTypeWasClicked] activating scanner options: %@",objj_msgSend(_4a,"class"),_4d.scanners);
objj_msgSend(_mediaScannerPopUp,"addItemsWithTitles:",_4d.scanners);
objj_msgSend(_agentDataSource,"refreshRecordsWithContextInfo:",_4c);
CPLog.trace("[%@ -_sectionTypeWasClicked] END",objj_msgSend(_4a,"class"));
}
}),new objj_method(sel_getUid("_agentWasClicked"),function(_4e,_4f){
with(_4e){
CPLog.trace("[%@ -_agentWasClicked] START",objj_msgSend(_4e,"class"));
if(objj_msgSend(_agentPopUp,"indexOfSelectedItem")==_selectedAgentIndex){
return;
}
_selectedAgentIndex=objj_msgSend(_agentPopUp,"indexOfSelectedItem");
objj_msgSend(_languagePopUp,"removeAllItems");
var _50=objj_msgSend(_agents,"objectAtIndex:",_selectedAgentIndex),_51=objj_msgSend(_50,"languages");
CPLog.debug("[%@ -_agentWasClicked] activating language options: %@",objj_msgSend(_4e,"class"),_51);
for(var i=0;i<objj_msgSend(_51,"count");i++){
objj_msgSend(_languagePopUp,"addItemWithTitle:",objj_msgSend(objj_msgSend(_51,"objectAtIndex:",i),"name"));
}
if(objj_msgSend(_librarySection,"language")){
objj_msgSend(_4e,"_setSelectedLanguage:",objj_msgSend(_librarySection,"language"));
}
CPLog.trace("[%@ -_agentWasClicked] END",objj_msgSend(_4e,"class"));
}
}),new objj_method(sel_getUid("dataSource:didReceiveRecords:contextInfo:"),function(_52,_53,_54,_55,_56){
with(_52){
if(objj_msgSend(_54,"isEqual:",_agentDataSource)){
if(!objj_msgSend(_56,"isEqual:",objj_msgSend(_52,"_selectedSectionType"))){
CPLog.debug("[%@ -dataSource:didReceiveRecords:contextInfo:] ignoring agent response for deselected section type %@ (selected is %@)",objj_msgSend(_52,"class"),_56,objj_msgSend(_52,"_selectedSectionType"));
return;
}
_agents=_55;
objj_msgSend(_agentPopUp,"removeAllItems");
CPLog.debug("[%@ -dataSource:didReceiveRecords:contextInfo:] activating agent options: %@",objj_msgSend(_52,"class"),_agents);
for(var i=0;i<objj_msgSend(_agents,"count");i++){
objj_msgSend(_agentPopUp,"addItemWithTitle:",objj_msgSend(objj_msgSend(_agents,"objectAtIndex:",i),"name"));
}
if(objj_msgSend(_librarySection,"agent")){
objj_msgSend(_52,"_setSelectedAgent:",objj_msgSend(_librarySection,"agent"));
}
objj_msgSend(_52,"_agentWasClicked");
}
}
}),new objj_method(sel_getUid("dataSourceDidCreateRecord:"),function(_57,_58,_59){
with(_57){
objj_msgSend(_57,"_dismissPanelWithReturnCode:",MMSectionSettingsSheetReturnSuccess);
}
}),new objj_method(sel_getUid("dataSourceDidFailToCreateRecord:"),function(_5a,_5b,_5c){
with(_5a){
var _5d=objj_msgSend(objj_msgSend(_5c,"userInfo"),"objectForKey:","error"),_5e=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(_5e,"setAlertStyle:",CPCriticalAlertStyle);
objj_msgSend(_5e,"setTitle:",CPLocalizedString("Unable to create library section","Unable to create library section"));
objj_msgSend(_5e,"setMessageText:",objj_msgSend(CPString,"stringWithFormat:",_5d));
objj_msgSend(_5e,"runModal");
}
}),new objj_method(sel_getUid("dataSourceDidUpdateRecord:"),function(_5f,_60,_61){
with(_5f){
objj_msgSend(_5f,"_dismissPanelWithReturnCode:",MMSectionSettingsSheetReturnSuccess);
}
}),new objj_method(sel_getUid("dataSourceDidFailToUpdateRecord:"),function(_62,_63,_64){
with(_62){
var _65=objj_msgSend(objj_msgSend(_64,"userInfo"),"objectForKey:","error"),_66=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(_66,"setAlertStyle:",CPCriticalAlertStyle);
objj_msgSend(_66,"setTitle:",CPLocalizedString("Unable to update library section","Unable to update library section"));
objj_msgSend(_66,"setMessageText:",objj_msgSend(CPString,"stringWithFormat:",_65));
objj_msgSend(_66,"runModal");
}
}),new objj_method(sel_getUid("runModal"),function(_67,_68){
with(_67){
objj_msgSend(_67,"layoutPanel");
objj_msgSend(CPApp,"runModalForWindow:",_settingsPanel);
}
}),new objj_method(sel_getUid("beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:"),function(_69,_6a,_6b,_6c,_6d,_6e){
with(_69){
objj_msgSend(_69,"layoutPanel");
_didEndSelector=_6d;
_modalDelegate=_6c;
_librarySection=_6e;
if(_librarySection){
objj_msgSend(_sectionNameField,"setStringValue:",objj_msgSend(_librarySection,"title"));
if(objj_msgSend(_librarySection,"type")){
objj_msgSend(_69,"_setSelectedSectionType:",objj_msgSend(_librarySection,"type"));
objj_msgSend(_69,"_sectionTypeWasClicked");
}
if(objj_msgSend(_librarySection,"scanner")){
objj_msgSend(_69,"_setSelectedScanner:",objj_msgSend(_librarySection,"scanner"));
}
if(objj_msgSend(_librarySection,"agent")){
objj_msgSend(_69,"_setSelectedAgent:",objj_msgSend(_librarySection,"agent"));
}
if(objj_msgSend(_librarySection,"language")){
objj_msgSend(_69,"_setSelectedLanguage:",objj_msgSend(_librarySection,"language"));
}
if(objj_msgSend(objj_msgSend(_librarySection,"locations"),"count")){
objj_msgSend(_69,"_setSectionLocations:",objj_msgSend(_librarySection,"locations"));
}
objj_msgSend(_69,"_setConfirmButtonTitle:",objj_msgSend(_librarySection,"isNewRecord")?CPLocalizedString("Add Section","Add section confirm button text"):CPLocalizedString("Update Section","Update section confirm button text"));
}
objj_msgSend(CPApp,"beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:",_settingsPanel,_6b,_69,sel_getUid("_editDidEnd:returnCode:contextInfo:"),_6e);
}
}),new objj_method(sel_getUid("beginSheetModalForWindow:"),function(_6f,_70,_71){
with(_6f){
objj_msgSend(_6f,"layoutPanel");
_didEndSelector=nil;
_modalDelegate=nil;
_librarySection=nil;
objj_msgSend(CPApp,"beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:",_settingsPanel,_71,_6f,sel_getUid("_editDidEnd:returnCode:contextInfo:"),nil);
}
}),new objj_method(sel_getUid("_editDidEnd:returnCode:contextInfo:"),function(_72,_73,_74,_75,_76){
with(_72){
if(_didEndSelector){
objj_msgSend(_modalDelegate,_didEndSelector,_72,_75,_76);
}
_didEndSelector=nil;
_modalDelegate=nil;
_librarySection=nil;
}
}),new objj_method(sel_getUid("_confirmButtonClicked:"),function(_77,_78,_79){
with(_77){
var _7a=objj_msgSend(_agents,"objectAtIndex:",objj_msgSend(_agentPopUp,"indexOfSelectedItem")),_7b=objj_msgSend(objj_msgSend(_7a,"languages"),"objectAtIndex:",objj_msgSend(_languagePopUp,"indexOfSelectedItem"));
objj_msgSend(_librarySection,"setTitle:",objj_msgSend(_sectionNameField,"stringValue"));
objj_msgSend(_librarySection,"setScanner:",objj_msgSend(_77,"_selectedScanner"));
objj_msgSend(_librarySection,"setAgent:",_7a);
objj_msgSend(_librarySection,"setType:",objj_msgSend(_77,"_selectedSectionType"));
objj_msgSend(_librarySection,"setLocations:",objj_msgSend(_77,"_sectionLocations"));
objj_msgSend(_librarySection,"setLanguage:",_7b);
if(objj_msgSend(_librarySection,"isNewRecord")){
objj_msgSend(_librarySectionsDataSource,"createRecord:",_librarySection);
}else{
objj_msgSend(_librarySectionsDataSource,"updateRecord:",_librarySection);
}
}
}),new objj_method(sel_getUid("_cancelButtonClicked:"),function(_7c,_7d,_7e){
with(_7c){
objj_msgSend(_7c,"_dismissPanelWithReturnCode:",objj_msgSend(_7e,"tag"));
}
}),new objj_method(sel_getUid("_dismissPanelWithReturnCode:"),function(_7f,_80,_81){
with(_7f){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_7f,MMDataSourceDidCreateRecord,_librarySectionsDataSource);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_7f,MMDataSourceDidFailToCreateRecord,_librarySectionsDataSource);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_7f,MMDataSourceDidUpdateRecord,_librarySectionsDataSource);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_7f,MMDataSourceDidFailToUpdateRecord,_librarySectionsDataSource);
if(objj_msgSend(_settingsPanel,"isSheet")){
objj_msgSend(CPApp,"endSheet:returnCode:",_settingsPanel,_81);
}else{
objj_msgSend(CPApp,"abortModal");
objj_msgSend(_settingsPanel,"close");
objj_msgSend(_7f,"_editDidEnd:returnCode:contextInfo:",nil,_81,_librarySection);
}
}
}),new objj_method(sel_getUid("_addSourceFolder:"),function(_82,_83,_84){
with(_82){
if(!_directoryBrowserSheet){
_directoryBrowserSheet=objj_msgSend(objj_msgSend(MMDirectoryBrowserSheet,"alloc"),"initWithContentRect:styleMask:",CGRectMake(0,0,400,300),CPDocModalWindowMask);
}
objj_msgSend(_directoryBrowserSheet,"setTitle:",CPLocalizedString("Select a directory for this section:","Directory-browser title when adding/editing sections"));
objj_msgSend(_directoryBrowserSheet,"setDelegate:",_82);
objj_msgSend(CPApp,"beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:",_directoryBrowserSheet,_settingsPanel,nil,nil,nil);
}
}),new objj_method(sel_getUid("directoryBrowserSheet:didChooseDirectory:"),function(_85,_86,_87,_88){
with(_85){
objj_msgSend(_sourceFolderView,"addFileWithPath:",objj_msgSend(_88,"path"));
objj_msgSend(CPApp,"endSheet:returnCode:",_87,0);
}
}),new objj_method(sel_getUid("directoryBrowserSheetDidCancel:"),function(_89,_8a,_8b){
with(_89){
objj_msgSend(CPApp,"endSheet:returnCode:",_8b,1);
}
}),new objj_method(sel_getUid("_removeSelectedSourceFolders"),function(_8c,_8d){
with(_8c){
objj_msgSend(_sourceFolderView,"removeFilesAtIndexes:",objj_msgSend(_sourceFolderView,"selectionIndexes"));
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("initialize"),function(_8e,_8f){
with(_8e){
_2={movie:{namePlaceholder:CPLocalizedString("My Movies","Movie section name placeholder"),scanners:objj_msgSend(CPArray,"arrayWithObjects:","Plex Movie Scanner")},show:{namePlaceholder:CPLocalizedString("My TV Shows","TV Shows section name placeholder"),scanners:objj_msgSend(CPArray,"arrayWithObjects:","Plex Series Scanner")},artist:{namePlaceholder:CPLocalizedString("My Music","Music section name placeholder"),scanners:objj_msgSend(CPArray,"arrayWithObjects:","Plex Music Scanner")}};
}
}),new objj_method(sel_getUid("_menuItemWithTitle:tag:"),function(_90,_91,_92,tag){
with(_90){
var _93=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",_92,nil,nil);
objj_msgSend(_93,"setTag:",tag);
return _93;
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
p;25;Views/MMViewWithToolbar.jt;8307;@STATIC;1.0;I;15;AppKit/CPView.jI;22;LPKit/LPAnchorButton.jI;28;LPKit/LPLocationController.ji;11;MMToolbar.jt;8192;
objj_executeFile("AppKit/CPView.j",NO);
objj_executeFile("LPKit/LPAnchorButton.j",NO);
objj_executeFile("LPKit/LPLocationController.j",NO);
objj_executeFile("MMToolbar.j",YES);
var _1=objj_allocateClassPair(CPView,"MMViewWithToolbar"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_toolbarHeight"),new objj_ivar("_navBarHeight"),new objj_ivar("_contentStack"),new objj_ivar("_toolbarStack"),new objj_ivar("_navBar"),new objj_ivar("_links"),new objj_ivar("_navBarButtons"),new objj_ivar("_dataSource")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("toolbarHeight"),function(_3,_4){
with(_3){
return _toolbarHeight;
}
}),new objj_method(sel_getUid("setToolbarHeight:"),function(_5,_6,_7){
with(_5){
_toolbarHeight=_7;
}
}),new objj_method(sel_getUid("navBarHeight"),function(_8,_9){
with(_8){
return _navBarHeight;
}
}),new objj_method(sel_getUid("setNavBarHeight:"),function(_a,_b,_c){
with(_a){
_navBarHeight=_c;
}
}),new objj_method(sel_getUid("dataSource"),function(_d,_e){
with(_d){
return _dataSource;
}
}),new objj_method(sel_getUid("setDataSource:"),function(_f,_10,_11){
with(_f){
_dataSource=_11;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_12,_13,_14){
with(_12){
if(_12=objj_msgSendSuper({receiver:_12,super_class:objj_getClass("MMViewWithToolbar").super_class},"initWithFrame:",_14)){
_toolbarHeight=30;
_navBarHeight=30;
_contentStack=objj_msgSend(CPArray,"array");
_toolbarStack=objj_msgSend(CPArray,"array");
_links=objj_msgSend(CPArray,"array");
_navBarButtons=objj_msgSend(CPArray,"array");
_navBar=objj_msgSend(objj_msgSend(MMToolbar,"alloc"),"initWithFrame:",objj_msgSend(_12,"navBarRect"));
objj_msgSend(_navBar,"setTopBorderColor:",objj_msgSend(CPColor,"colorWithWhite:alpha:",1,0));
objj_msgSend(_navBar,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_12,"addSubview:",_navBar);
}
return _12;
}
}),new objj_method(sel_getUid("contentView"),function(_15,_16){
with(_15){
return objj_msgSend(_contentStack,"lastObject");
}
}),new objj_method(sel_getUid("toolbar"),function(_17,_18){
with(_17){
return objj_msgSend(_toolbarStack,"lastObject");
}
}),new objj_method(sel_getUid("navBarRect"),function(_19,_1a){
with(_19){
return CGRectMake(0,0,CGRectGetWidth(objj_msgSend(_19,"bounds")),_navBarHeight);
}
}),new objj_method(sel_getUid("setNavBarHeight:"),function(_1b,_1c,_1d){
with(_1b){
objj_msgSend(_navBar,"setFrameSize:",CGSize(CGRectGetWidth(objj_msgSend(_navBar,"frame")),_1d));
}
}),new objj_method(sel_getUid("contentRect"),function(_1e,_1f){
with(_1e){
var _20=CGRectMakeCopy(objj_msgSend(_1e,"bounds"));
_20.origin.y+=_navBarHeight;
_20.size.height-=_toolbarHeight+_navBarHeight;
return _20;
}
}),new objj_method(sel_getUid("toolbarRect"),function(_21,_22){
with(_21){
var _23=objj_msgSend(_21,"contentRect");
_23.origin.y=_23.size.height-_toolbarHeight;
_23.size.height=_toolbarHeight;
return _23;
}
}),new objj_method(sel_getUid("pushContentView:toolbar:"),function(_24,_25,_26,_27){
with(_24){
objj_msgSend(_24,"pushContentView:",_26);
objj_msgSend(_24,"pushToolbar:",_27);
}
}),new objj_method(sel_getUid("pushContentView:"),function(_28,_29,_2a){
with(_28){
objj_msgSend(_2a,"setFrame:",objj_msgSend(_28,"contentRect"));
objj_msgSend(_2a,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_28,"_setContentView:",_2a);
objj_msgSend(_contentStack,"removeObject:",_2a);
objj_msgSend(_contentStack,"addObject:",_2a);
objj_msgSend(_28,"_rebuildNavBar");
}
}),new objj_method(sel_getUid("pushToolbar:"),function(_2b,_2c,_2d){
with(_2b){
var _2e=_2d;
objj_msgSend(_2e,"setFrame:",CGRectMake(0,CGRectGetHeight(objj_msgSend(_2b,"frame"))-CGRectGetHeight(objj_msgSend(_2e,"frame")),CGRectGetWidth(objj_msgSend(_2b,"frame")),CGRectGetHeight(objj_msgSend(_2e,"frame"))));
objj_msgSend(_2e,"setAutoresizingMask:",CPViewWidthSizable|CPViewMinYMargin);
objj_msgSend(_2b,"_setToolbar:",_2e);
objj_msgSend(_toolbarStack,"removeObject:",_2e);
objj_msgSend(_toolbarStack,"addObject:",_2e);
}
}),new objj_method(sel_getUid("popContentViewAndToolbar"),function(_2f,_30){
with(_2f){
objj_msgSend(_2f,"popContentView");
objj_msgSend(_2f,"popToolbar");
}
}),new objj_method(sel_getUid("popContentView"),function(_31,_32){
with(_31){
objj_msgSend(_31,"_setContentView:",_contentStack[_contentStack.length-2]);
objj_msgSend(_contentStack,"removeLastObject");
objj_msgSend(_31,"_rebuildNavBar");
}
}),new objj_method(sel_getUid("popToolbar"),function(_33,_34){
with(_33){
objj_msgSend(_33,"_setToolbar:",_toolbarStack[_toolbarStack.length-2]);
objj_msgSend(_toolbarStack,"removeLastObject");
}
}),new objj_method(sel_getUid("popToolbar:"),function(_35,_36,_37){
with(_35){
if(objj_msgSend(objj_msgSend(_35,"toolbar"),"isEqual:",_37)){
objj_msgSend(_35,"popToolbar");
}
}
}),new objj_method(sel_getUid("popContentViewsUntil:"),function(_38,_39,_3a){
with(_38){
while(!objj_msgSend(_38,"contentView")||!objj_msgSend(objj_msgSend(_38,"contentView"),"isEqual:",_3a)){
objj_msgSend(_38,"popContentView");
}
objj_msgSend(_38,"pushContentView:",_3a);
}
}),new objj_method(sel_getUid("popToolbarsUntil:"),function(_3b,_3c,_3d){
with(_3b){
while(!objj_msgSend(_3b,"toolbar")||!objj_msgSend(objj_msgSend(_3b,"toolbar"),"isEqual:",_3d)){
objj_msgSend(_3b,"popToolbar");
}
objj_msgSend(_3b,"pushToolbar:",_3d);
}
}),new objj_method(sel_getUid("_setContentView:"),function(_3e,_3f,_40){
with(_3e){
if(_40){
objj_msgSend(_3e,"addSubview:",_40);
}
for(var i=objj_msgSend(_contentStack,"count");i--;){
var _41=objj_msgSend(_contentStack,"objectAtIndex:",i);
if(!objj_msgSend(_41,"isEqual:",_40)){
objj_msgSend(_41,"removeFromSuperview");
}
}
}
}),new objj_method(sel_getUid("_setToolbar:"),function(_42,_43,_44){
with(_42){
if(_44){
objj_msgSend(_42,"addSubview:",_44);
}
for(var i=objj_msgSend(_toolbarStack,"count");i--;){
var _45=objj_msgSend(_toolbarStack,"objectAtIndex:",i);
if(!objj_msgSend(_45,"isEqual:",_44)){
objj_msgSend(_45,"removeFromSuperview");
}
}
}
}),new objj_method(sel_getUid("addNavBarButton:"),function(_46,_47,_48){
with(_46){
objj_msgSend(_navBarButtons,"addObject:",_48);
objj_msgSend(_navBar,"addSubview:",_48);
objj_msgSend(_46,"_rebuildNavBar");
}
}),new objj_method(sel_getUid("_rebuildNavBar"),function(_49,_4a){
with(_49){
var _4b=objj_msgSend(CPFont,"boldSystemFontOfSize:",12),_4c=objj_msgSend("  ","sizeWithFont:",_4b).width,_4d=15;
for(var i=0,_4e=objj_msgSend(_navBarButtons,"count");i<_4e;i++){
var _4f=_navBarButtons[i];
objj_msgSend(_4f,"setFrameOrigin:",CGPointMake(CGRectGetWidth(objj_msgSend(_navBar,"bounds"))-_4c-CGRectGetWidth(objj_msgSend(_4f,"bounds")),(CGRectGetHeight(objj_msgSend(_navBar,"bounds"))-CGRectGetHeight(objj_msgSend(_4f,"bounds")))/2));
}
_4d=15;
for(var i=0,_4e=objj_msgSend(_contentStack,"count");i<_4e;i++){
var _50;
if(i<objj_msgSend(_links,"count")){
_50=objj_msgSend(_links,"objectAtIndex:",i);
}else{
_50=objj_msgSend(objj_msgSend(LPAnchorButton,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_50,"setFont:",_4b);
objj_msgSend(_50,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(_links,"addObject:",_50);
_50._MMViewWithToolbar_index=i;
objj_msgSend(_50,"setTarget:",_49);
objj_msgSend(_50,"setAction:",sel_getUid("_navBarButtonClicked:"));
objj_msgSend(_navBar,"addSubview:",_50);
}
var _51=objj_msgSend(objj_msgSend(_49,"dataSource"),"titleForContentView:inViewWithToolbar:",_contentStack[i],_49);
objj_msgSend(_50,"setTitle:",_51+(i+1<_4e?"  »":""));
objj_msgSend(_50,"sizeToFit");
objj_msgSend(_50,"setFrameOrigin:",CGPointMake(_4d,(CGRectGetHeight(objj_msgSend(_navBar,"frame"))-CGRectGetHeight(objj_msgSend(_50,"frame")))/2));
_4d=CGRectGetMaxX(objj_msgSend(_50,"frame"))+_4c;
objj_msgSend(_50,"setHidden:",NO);
}
for(var i=objj_msgSend(_contentStack,"count");i<objj_msgSend(_links,"count");i++){
objj_msgSend(_links[i],"setHidden:",YES);
}
}
}),new objj_method(sel_getUid("_navBarButtonClicked:"),function(_52,_53,_54){
with(_52){
var _55=_54._MMViewWithToolbar_index,_56=_contentStack[_55],_57=objj_msgSend(objj_msgSend(_52,"dataSource"),"locationHashForContentView:inViewWithToolbar:",_56,_52);
if(_57){
objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"setLocation:",_57);
}
}
})]);
e;