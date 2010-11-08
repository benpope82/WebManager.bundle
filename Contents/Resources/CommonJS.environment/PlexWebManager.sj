@STATIC;1.0;p;15;AppController.jt;20691;@STATIC;1.0;I;21;Foundation/CPObject.jI;28;LPKit/LPLocationController.ji;29;CPURLConnection+XMLResponse.ji;49;Controllers/MMLibrarySectionTableViewController.ji;31;DataSources/MMAgentDataSource.ji;38;DataSources/MMLibraryMediaDataSource.ji;41;DataSources/MMLibrarySectionsDataSource.ji;23;Models/LanguageConfig.ji;18;Views/HUDToolbar.ji;24;Views/MMCollectionView.ji;23;Views/MMMediaItemCell.ji;29;Views/MMMediaItemDetailView.ji;20;Views/MMScrollView.ji;30;Views/MMSectionSettingsSheet.ji;25;Views/MMViewWithToolbar.jt;20167;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("LPKit/LPLocationController.j",NO);
objj_executeFile("CPURLConnection+XMLResponse.j",YES);
objj_executeFile("Controllers/MMLibrarySectionTableViewController.j",YES);
objj_executeFile("DataSources/MMAgentDataSource.j",YES);
objj_executeFile("DataSources/MMLibraryMediaDataSource.j",YES);
objj_executeFile("DataSources/MMLibrarySectionsDataSource.j",YES);
objj_executeFile("Models/LanguageConfig.j",YES);
objj_executeFile("Views/HUDToolbar.j",YES);
objj_executeFile("Views/MMCollectionView.j",YES);
objj_executeFile("Views/MMMediaItemCell.j",YES);
objj_executeFile("Views/MMMediaItemDetailView.j",YES);
objj_executeFile("Views/MMScrollView.j",YES);
objj_executeFile("Views/MMSectionSettingsSheet.j",YES);
objj_executeFile("Views/MMViewWithToolbar.j",YES);
var _1=objj_allocateClassPair(CPObject,"AppController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("window"),new objj_ivar("_viewWithToolbar"),new objj_ivar("_mediaItemsController"),new objj_ivar("_selectedLibrarySectionController"),new objj_ivar("_librarySectionController"),new objj_ivar("rightView"),new objj_ivar("_mediaCollectionContainer"),new objj_ivar("mediaItemsScrollView"),new objj_ivar("mediaGridView"),new objj_ivar("_librarySectionToolbar"),new objj_ivar("statusLabel"),new objj_ivar("_mediaItemView"),new objj_ivar("media"),new objj_ivar("librarySections"),new objj_ivar("mediaDataSource"),new objj_ivar("_librarySectionLocationHash"),new objj_ivar("_mediaItemLocationHash")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("applicationDidFinishLaunching:"),function(_3,_4,_5){
with(_3){
CPLog.trace("[%@ -applicationDidFinishLaunching:] START",objj_msgSend(_3,"class"));
window=objj_msgSend(objj_msgSend(CPWindow,"alloc"),"initWithContentRect:styleMask:",CGRectMakeZero(),CPBorderlessBridgeWindowMask);
var _6=objj_msgSend(window,"contentView");
media=objj_msgSend(CPArray,"array");
librarySections=objj_msgSend(CPArray,"array");
_mediaItemsController=objj_msgSend(objj_msgSend(CPArrayController,"alloc"),"init");
_selectedLibrarySectionController=objj_msgSend(objj_msgSend(CPObjectController,"alloc"),"init");
var _7=objj_msgSend(objj_msgSend(CPButtonBar,"alloc"),"initWithFrame:",CGRectMake(0,CGRectGetMaxY(objj_msgSend(_6,"bounds"))-26,CGRectGetWidth(objj_msgSend(_6,"bounds")),26));
objj_msgSend(_7,"setAutoresizingMask:",CPViewWidthSizable|CPViewMinYMargin);
objj_msgSend(_6,"addSubview:",_7);
statusLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",objj_msgSend(_7,"bounds"));
objj_msgSend(statusLabel,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",12));
objj_msgSend(statusLabel,"setAutoresizingMask:",CPViewMinXMargin|CPViewMaxXMargin|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(statusLabel,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(statusLabel,"setVerticalAlignment:",CPCenterTextAlignment);
objj_msgSend(_7,"addSubview:",statusLabel);
var _8=objj_msgSend(CPButtonBar,"plusButton");
objj_msgSend(_8,"setTarget:",_3);
objj_msgSend(_8,"setAction:",sel_getUid("addSection:"));
var _9=objj_msgSend(CPButtonBar,"minusButton");
objj_msgSend(_9,"setTarget:",_3);
objj_msgSend(_9,"setAction:",sel_getUid("removeSection:"));
var _a=objj_msgSend(CPButtonBar,"actionPopupButton");
objj_msgSend(objj_msgSend(_a,"menu"),"setAutoenablesItems:",NO);
var _b=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",CPLocalizedString("Edit Section","Edit Section"),sel_getUid("editSection:"),nil);
objj_msgSend(_a,"addItem:",_b);
var _c=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",CPLocalizedString("Refresh Section","Refresh Section"),sel_getUid("refreshSection:"),nil);
objj_msgSend(_a,"addItem:",_c);
var _d=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",CPLocalizedString("Refresh Section (force)","Refresh Section (force)"),sel_getUid("forceRefreshSection:"),nil);
objj_msgSend(_a,"addItem:",_d);
var _e=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",CPLocalizedString("Choose Icon","Choose Icon"),nil,nil);
objj_msgSend(_e,"setEnabled:",NO);
objj_msgSend(_a,"addItem:",_e);
var _f=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",CPLocalizedString("Choose Background Art","Choose Background Art"),nil,nil);
objj_msgSend(_f,"setEnabled:",NO);
objj_msgSend(_a,"addItem:",_f);
objj_msgSend(_a,"setTarget:",_3);
objj_msgSend(_7,"setButtons:",objj_msgSend(CPArray,"arrayWithObjects:",_8,_9,_a));
var _10=objj_msgSend(objj_msgSend(CPSplitView,"alloc"),"initWithFrame:",CGRectMake(0,0,CGRectGetWidth(objj_msgSend(_6,"bounds")),CGRectGetHeight(objj_msgSend(_6,"bounds"))-CGRectGetHeight(objj_msgSend(_7,"bounds"))));
objj_msgSend(_10,"setVertical:",YES);
objj_msgSend(_10,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_6,"addSubview:",_10);
var _11=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,200,CGRectGetHeight(objj_msgSend(_10,"bounds"))));
objj_msgSend(_10,"addSubview:",_11);
_librarySectionController=objj_msgSend(objj_msgSend(MMLibrarySectionTableViewController,"alloc"),"initWithDelegate:",_3);
var _12=objj_msgSend(objj_msgSend(CPScrollView,"alloc"),"initWithFrame:",objj_msgSend(_11,"bounds"));
objj_msgSend(_12,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_12,"setAutohidesScrollers:",YES);
objj_msgSend(_12,"setDocumentView:",objj_msgSend(_librarySectionController,"view"));
objj_msgSend(_11,"addSubview:",_12);
rightView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(200,0,CGRectGetWidth(objj_msgSend(_10,"bounds"))-200,CGRectGetHeight(objj_msgSend(_10,"bounds"))));
objj_msgSend(_10,"addSubview:",rightView);
_viewWithToolbar=objj_msgSend(objj_msgSend(MMViewWithToolbar,"alloc"),"initWithFrame:",objj_msgSend(rightView,"bounds"));
objj_msgSend(_viewWithToolbar,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_viewWithToolbar,"setDataSource:",_3);
objj_msgSend(rightView,"addSubview:",_viewWithToolbar);
var _13=30;
mediaItemsScrollView=objj_msgSend(objj_msgSend(MMScrollView,"alloc"),"initWithFrame:",objj_msgSend(_viewWithToolbar,"contentRect"));
objj_msgSend(mediaItemsScrollView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(mediaItemsScrollView,"setAutohidesScrollers:",YES);
_librarySectionToolbar=objj_msgSend(objj_msgSend(HUDToolbar,"alloc"),"initWithFrame:",objj_msgSend(_viewWithToolbar,"toolbarRect"));
objj_msgSend(_librarySectionToolbar,"setAutoresizingMask:",CPViewMinYMargin|CPViewWidthSizable);
objj_msgSend(_viewWithToolbar,"pushContentView:toolbar:",mediaItemsScrollView,_librarySectionToolbar);
var _14=objj_msgSend(HUDButton,"buttonWithTitle:",CPLocalizedString("Edit Section","Edit Section"));
objj_msgSend(_14,"setFrameOrigin:",CGPointMake(CGRectGetWidth(objj_msgSend(_librarySectionToolbar,"frame"))-5-CGRectGetWidth(objj_msgSend(_14,"frame")),(CGRectGetHeight(objj_msgSend(_librarySectionToolbar,"frame"))-CGRectGetHeight(objj_msgSend(_14,"frame")))/2));
objj_msgSend(_14,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin|CPViewMinXMargin);
objj_msgSend(_14,"setTarget:",_3);
objj_msgSend(_14,"setAction:",sel_getUid("editSectionButtonClicked:"));
objj_msgSend(_librarySectionToolbar,"addSubview:",_14);
var _15=objj_msgSend(HUDButton,"buttonWithTitle:",CPLocalizedString("Customize Section","Customize Section"));
objj_msgSend(_15,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_14,"frame"))-5-CGRectGetWidth(objj_msgSend(_15,"frame")),CGRectGetMinY(objj_msgSend(_14,"frame"))));
objj_msgSend(_15,"setAutoresizingMask:",objj_msgSend(_14,"autoresizingMask"));
objj_msgSend(_15,"setEnabled:",NO);
objj_msgSend(_librarySectionToolbar,"addSubview:",_15);
mediaGridView=objj_msgSend(objj_msgSend(MMCollectionView,"alloc"),"initWithFrame:",objj_msgSend(mediaItemsScrollView,"bounds"));
objj_msgSend(mediaGridView,"setDelegate:",_3);
var _16=objj_msgSend(objj_msgSend(CPCollectionViewItem,"alloc"),"init"),_17=objj_msgSend(objj_msgSend(MMMediaItemCell,"alloc"),"initWithFrame:",CGRectMake(0,0,175,220));
objj_msgSend(_16,"setView:",_17);
objj_msgSend(mediaGridView,"setItemPrototype:",_16);
objj_msgSend(mediaGridView,"setMinItemSize:",objj_msgSend(_17,"frame").size);
objj_msgSend(mediaGridView,"setMaxItemSize:",objj_msgSend(_17,"frame").size);
objj_msgSend(mediaGridView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(mediaGridView,"bind:toObject:withKeyPath:options:","content",_mediaItemsController,"arrangedObjects",nil);
objj_msgSend(mediaGridView,"bind:toObject:withKeyPath:options:","selectionIndexes",_mediaItemsController,"selectionIndexes",nil);
objj_msgSend(_3,"bind:toObject:withKeyPath:options:","librarySections",objj_msgSend(_librarySectionController,"librarySectionsController"),"selectedObjects",nil);
objj_msgSend(mediaItemsScrollView,"setDocumentView:",mediaGridView);
objj_msgSend(window,"orderFront:",_3);
mediaDataSource=objj_msgSend(objj_msgSend(MMLibraryMediaDataSource,"alloc"),"initWithDelegate:",_3);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_3,sel_getUid("_librarySectionsDataSourceDidFailToCreateRecord:"),MMDataSourceDidFailToCreateRecord,objj_msgSend(MMLibrarySectionsDataSource,"sharedDataSource"));
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_3,sel_getUid("_recordWasUpdated:"),MMDataSourceDidUpdateRecord,nil);
objj_msgSend(LanguageConfig,"initialize");
objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"addObserver:selector:",_3,sel_getUid("locationDidChange:"));
CPLog.trace("[%@ -applicationDidFinishLaunching:] END",objj_msgSend(_3,"class"));
}
}),new objj_method(sel_getUid("_recordWasUpdated:"),function(_18,_19,_1a){
with(_18){
var _1b=objj_msgSend(_1a,"userInfo"),_1c=objj_msgSend(_1b,"objectForKey:","record"),_1d=objj_msgSend(_1b,"objectForKey:","contextInfo"),_1e=objj_msgSend(_1c,"isKindOfClass:",MMLibraryMediaItem)?_1c:objj_msgSend(_1d,"isKindOfClass:",MMLibraryMediaItem)?_1d:nil;
if(!_1e){
return;
}
var _1f=objj_msgSend(objj_msgSend(mediaGridView,"content"),"indexOfObject:",_1e),_20=objj_msgSend(objj_msgSend(mediaGridView,"items"),"objectAtIndex:",_1f);
objj_msgSend(_20,"setRepresentedObject:",nil);
objj_msgSend(_20,"setRepresentedObject:",_1e);
}
}),new objj_method(sel_getUid("titleForContentView:inViewWithToolbar:"),function(_21,_22,_23,_24){
with(_21){
switch(_23){
case mediaItemsScrollView:
return objj_msgSend(objj_msgSend(_21,"selectedLibrarySection"),"title")||"";
case _mediaItemView:
return objj_msgSend(objj_msgSend(_mediaItemView,"mediaItem"),"title");
default:
return nil;
}
}
}),new objj_method(sel_getUid("locationHashForContentView:inViewWithToolbar:"),function(_25,_26,_27,_28){
with(_25){
switch(_27){
case mediaItemsScrollView:
return _librarySectionLocationHash;
case _mediaItemView:
return _mediaItemLocationHash;
default:
return nil;
}
}
}),new objj_method(sel_getUid("locationDidChange:"),function(_29,_2a,_2b){
with(_29){
if(objj_msgSend(_2b,"hasPrefix:","/sections/")){
var _2c=objj_msgSend(_2b,"substringFromIndex:",objj_msgSend("/sections/","length"));
if(_2c){
var _2d=objj_msgSend(_librarySectionController,"librarySectionsController"),_2e=objj_msgSend(_2d,"arrangedObjects");
for(var i=0,_2f=objj_msgSend(_2e,"count");i<_2f;i++){
var _30=objj_msgSend(_2e,"objectAtIndex:",i);
if(objj_msgSend(objj_msgSend(_30,"id"),"isEqual:",_2c)){
objj_msgSend(_2d,"setSelectedObjects:",[_30]);
break;
}
}
}
}else{
if(objj_msgSend(_2b,"hasPrefix:","/media/")){
var _31=objj_msgSend(_2b,"substringFromIndex:",objj_msgSend("/media/","length"));
if(_31){
var _32=objj_msgSend(_mediaItemsController,"arrangedObjects");
for(var i=0,_2f=objj_msgSend(_32,"count");i<_2f;i++){
var _33=objj_msgSend(_32,"objectAtIndex:",i);
if(objj_msgSend(objj_msgSend(_33,"id"),"isEqual:",_31)){
objj_msgSend(_29,"presentMediaItem:",_33);
break;
}
}
}
}
}
}
}),new objj_method(sel_getUid("setLibrarySections:"),function(_34,_35,_36){
with(_34){
var _37=(objj_msgSend(_36,"count")>0)?objj_msgSend(_36,"objectAtIndex:",0):nil;
if(_37&&!objj_msgSend(objj_msgSend(_selectedLibrarySectionController,"content"),"isEqual:",_37)){
objj_msgSend(mediaDataSource,"refreshRecordsWithContextInfo:",_37);
objj_msgSend(_selectedLibrarySectionController,"setContent:",_37);
}
if(_37){
_librarySectionLocationHash=objj_msgSend(CPString,"stringWithFormat:","/sections/%@",objj_msgSend(_37,"id"));
objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"setLocation:",_librarySectionLocationHash);
}
objj_msgSend(_viewWithToolbar,"popContentViewsUntil:",mediaItemsScrollView);
objj_msgSend(_viewWithToolbar,"popToolbarsUntil:",_librarySectionToolbar);
objj_msgSend(window,"makeFirstResponder:",mediaGridView);
}
}),new objj_method(sel_getUid("_librarySectionsDataSourceDidFailToCreateRecord:"),function(_38,_39,_3a){
with(_38){
objj_msgSend(objj_msgSend(_38,"class"),"notifyUserOfError:withTitle:",objj_msgSend(objj_msgSend(_3a,"userInfo"),"objectForKey:","error"),CPLocalizedString("Unable to create library section","Unable to create library section"));
}
}),new objj_method(sel_getUid("dataSource:didReceiveRecords:contextInfo:"),function(_3b,_3c,_3d,_3e,_3f){
with(_3b){
if(_3d==mediaDataSource){
if(!objj_msgSend(objj_msgSend(_3b,"selectedLibrarySection"),"isEqual:",_3f)){
return;
}
var _40=_3f;
objj_msgSend(_mediaItemsController,"setSelectionIndexes:",objj_msgSend(CPIndexSet,"indexSet"));
objj_msgSend(_mediaItemsController,"setContent:",_3e);
objj_msgSend(statusLabel,"setStringValue:",objj_msgSend(CPString,"stringWithFormat:","%d %s%s",objj_msgSend(_3e,"count"),objj_msgSend(_40,"type"),(objj_msgSend(_3e,"count")==1)?"":"s"));
}
}
}),new objj_method(sel_getUid("dataSource:didFailToReceiveRecordsWithError:contextInfo:"),function(_41,_42,_43,_44,_45){
with(_41){
objj_msgSend(objj_msgSend(_41,"class"),"notifyUserOfConnectionError:",_44);
}
}),new objj_method(sel_getUid("dataSource:didFailToDeleteRecord:withError:contextInfo:"),function(_46,_47,_48,_49,_4a,_4b){
with(_46){
var _4c=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(_4c,"setAlertStyle:",CPCriticalAlertStyle);
objj_msgSend(_4c,"setTitle:",objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Unable to remove section \"%@\"","Error title for when we cannot remove a library section"),objj_msgSend(_49,"title")));
objj_msgSend(_4c,"setMessageText:",objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Got this error: %@. Are you sure Plex Media Server is running?","Error message for when we cannot remove a library section"),_4a));
objj_msgSend(_4c,"runModal");
}
}),new objj_method(sel_getUid("selectedLibrarySection"),function(_4d,_4e){
with(_4d){
return objj_msgSend(_librarySectionController,"selectedLibrarySection");
}
}),new objj_method(sel_getUid("librarySectionWasActivated:"),function(_4f,_50,_51){
with(_4f){
objj_msgSend(_4f,"_beginEditingSection:",_51);
}
}),new objj_method(sel_getUid("collectionView:didDoubleClickOnItemAtIndex:"),function(_52,_53,_54,_55){
with(_52){
objj_msgSend(_52,"presentMediaItem:",objj_msgSend(objj_msgSend(mediaGridView,"content"),"objectAtIndex:",_55));
}
}),new objj_method(sel_getUid("presentMediaItem:"),function(_56,_57,_58){
with(_56){
if(!_mediaItemView){
_mediaItemView=objj_msgSend(objj_msgSend(MMMediaItemDetailView,"alloc"),"initWithFrame:",objj_msgSend(_viewWithToolbar,"contentRect"));
objj_msgSend(_mediaItemView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
}
objj_msgSend(_mediaItemView,"setMediaItem:",_58);
objj_msgSend(_viewWithToolbar,"pushContentView:toolbar:",_mediaItemView,objj_msgSend(_mediaItemView,"toolbar"));
_mediaItemLocationHash=objj_msgSend(CPString,"stringWithFormat:","/media/%@",objj_msgSend(_58,"id"));
objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"setLocation:",_mediaItemLocationHash);
}
}),new objj_method(sel_getUid("addSection:"),function(_59,_5a,_5b){
with(_59){
var _5c=objj_msgSend(objj_msgSend(MMSectionSettingsSheet,"alloc"),"initWithDataSource:",objj_msgSend(MMLibrarySectionsDataSource,"sharedDataSource"));
objj_msgSend(_5c,"beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:",window,_59,sel_getUid("_addDidEnd:returnCode:contextInfo:"),objj_msgSend(objj_msgSend(MMLibrarySection,"alloc"),"init"));
}
}),new objj_method(sel_getUid("_addDidEnd:returnCode:contextInfo:"),function(_5d,_5e,_5f,_60,_61){
with(_5d){
}
}),new objj_method(sel_getUid("_editDidEnd:returnCode:contextInfo:"),function(_62,_63,_64,_65,_66){
with(_62){
}
}),new objj_method(sel_getUid("removeSection:"),function(_67,_68,_69){
with(_67){
var _6a=objj_msgSend(_67,"selectedLibrarySection"),_6b=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(_6b,"setAlertStyle:",CPWarningAlertStyle);
objj_msgSend(_6b,"setMessageText:",objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Are you sure you want to remove the section named \"%@\"?","Confirmation message for removing a section"),objj_msgSend(_6a,"title")));
objj_msgSend(_6b,"setInformativeText:",CPLocalizedString("Any content in this section will no longer be available in your library. The files on your computer will not be removed.","Informative text for removing a section"));
objj_msgSend(_6b,"setDelegate:",_67);
objj_msgSend(_6b,"addButtonWithTitle:",CPLocalizedString("Remove Section","Remove section confirmation button"));
objj_msgSend(_6b,"addButtonWithTitle:",CPLocalizedString("Cancel","Cancel"));
objj_msgSend(_6b,"beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:",window,_67,sel_getUid("removeSectionConfirmationDidEnd:returnCode:contextInfo:"),_6a);
}
}),new objj_method(sel_getUid("editSection:"),function(_6c,_6d,_6e){
with(_6c){
objj_msgSend(_6c,"_beginEditingSection:",objj_msgSend(_6c,"selectedLibrarySection"));
}
}),new objj_method(sel_getUid("refreshSection:"),function(_6f,_70,_71){
with(_6f){
objj_msgSend(objj_msgSend(MMLibrarySectionsDataSource,"sharedDataSource"),"refreshSection:force:",objj_msgSend(_6f,"selectedLibrarySection"),false);
}
}),new objj_method(sel_getUid("forceRefreshSection:"),function(_72,_73,_74){
with(_72){
objj_msgSend(objj_msgSend(MMLibrarySectionsDataSource,"sharedDataSource"),"refreshSection:force:",objj_msgSend(_72,"selectedLibrarySection"),true);
}
}),new objj_method(sel_getUid("editSectionButtonClicked:"),function(_75,_76,_77){
with(_75){
objj_msgSend(_75,"_beginEditingSection:",objj_msgSend(_75,"selectedLibrarySection"));
}
}),new objj_method(sel_getUid("_beginEditingSection:"),function(_78,_79,_7a){
with(_78){
var _7b=objj_msgSend(objj_msgSend(MMSectionSettingsSheet,"alloc"),"initWithDataSource:",objj_msgSend(MMLibrarySectionsDataSource,"sharedDataSource"));
objj_msgSend(_7b,"beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:",window,_78,sel_getUid("_editDidEnd:returnCode:contextInfo:"),_7a);
}
}),new objj_method(sel_getUid("removeSectionConfirmationDidEnd:returnCode:contextInfo:"),function(_7c,_7d,_7e,_7f,_80){
with(_7c){
if(_7f===0){
objj_msgSend(objj_msgSend(MMLibrarySectionsDataSource,"sharedDataSource"),"deleteRecord:",_80);
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("notifyUserOfError:withTitle:"),function(_81,_82,_83,_84){
with(_81){
var _85=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(_85,"setAlertStyle:",CPCriticalAlertStyle);
objj_msgSend(_85,"setTitle:",_84);
objj_msgSend(_85,"setMessageText:",_83);
objj_msgSend(_85,"runModal");
}
}),new objj_method(sel_getUid("notifyUserOfConnectionError:"),function(_86,_87,_88){
with(_86){
objj_msgSend(_86,"notifyUserOfError:withTitle:",objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Connecting to Plex Media Server failed with this error: %@.\n\nAre you sure it's running?","Error message for when we cannot connect to PMS or when the response is invalid"),_88),CPLocalizedString("Unable to connect to Plex Media Server","Error title for when we cannot connect to PMS or when the response is invalid"));
}
})]);
p;10;CPBundle.jt;2927;@STATIC;1.0;I;22;AppKit/CPApplication.jt;2881;
objj_executeFile("AppKit/CPApplication.j",NO);
var _1;
CPLocalizedString=function(_2,_3){
return CPLocalizedStringFromTable(_2,nil,_3);
};
CPLocalizedStringFromTable=function(_4,_5,_6){
return CPLocalizedStringFromTableInBundle(_4,_5,objj_msgSend(CPBundle,"mainBundle"),_6);
};
CPLocalizedStringFromTableInBundle=function(_7,_8,_9,_a){
return objj_msgSend(_9,"localizedStringForKey:value:table:",_7,_a,_8);
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
var _29=objj_msgSend(CPURLRequest,"requestWithURL:",objj_msgSend(_27,"pathForResource:",_28+".lproj/Localizable.xstrings")),_2a=objj_msgSend(CPURLConnection,"sendSynchronousRequest:returningResponse:error:",_29,_2a,nil);
var _2b=objj_msgSend(CPPropertyListSerialization,"propertyListFromData:format:errorDescription:",_2a,nil,nil);
objj_msgSend(_27,"setDictionary:forTable:",_2b,"Localizable");
}
window.LocaleCPApplicationMain(_25,_26);
};
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
p;21;CPImage+Transcoding.jt;1437;@STATIC;1.0;I;16;AppKit/CPImage.ji;15;Models/PMSURL.jt;1377;
objj_executeFile("AppKit/CPImage.j",NO);
objj_executeFile("Models/PMSURL.j",YES);
var _1=100000;
var _2=objj_getClass("CPImage");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"CPImage\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("constrainedToSize:"),function(_4,_5,_6){
with(_4){
return objj_msgSend(objj_msgSend(objj_msgSend(_4,"class"),"alloc"),"initByReferencingFile:size:",objj_msgSend(objj_msgSend(_4,"class"),"URLForImageAtURL:constrainedToSize:",objj_msgSend(_4,"filename"),_6),CGSizeMake(-1,-1));
}
}),new objj_method(sel_getUid("constrainedToWidth:"),function(_7,_8,_9){
with(_7){
return objj_msgSend(_7,"constrainedToSize:",CGSizeMake(_9,_1));
}
}),new objj_method(sel_getUid("constrainedToHeight:"),function(_a,_b,_c){
with(_a){
return objj_msgSend(_a,"constrainedToSize:",CGSizeMake(_1,_c));
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("URLForImageAtURL:constrainedToSize:"),function(_d,_e,_f,_10){
with(_d){
if(!objj_msgSend(_f,"isKindOfClass:",CPURL)){
_f=objj_msgSend(CPURL,"URLWithString:",_f);
}
if(!objj_msgSend(_f,"host")){
_f=objj_msgSend(PMSURL,"URLWithPath:",objj_msgSend(_f,"absoluteString"));
}
return objj_msgSend(PMSURL,"URLWithPath:params:","/photo/:/transcode",objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_10.width,_10.height,_f],["width","height","url"]));
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
p;6;main.jt;318;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/AppKit.ji;10;CPBundle.ji;15;AppController.jt;217;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("AppKit/AppKit.j",NO);
objj_executeFile("CPBundle.j",YES);
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
p;37;Controllers/MMImagePickerController.jt;11019;@STATIC;1.0;I;33;Foundation/CPNotificationCenter.jI;25;AppKit/CPViewController.ji;40;../CPValueTransformer+FunctionCallback.ji;27;../Views/MMCollectionView.ji;28;../Views/MMImagePickerCell.ji;21;../Views/HUDToolbar.ji;20;../Views/HUDButton.jt;10770;
objj_executeFile("Foundation/CPNotificationCenter.j",NO);
objj_executeFile("AppKit/CPViewController.j",NO);
objj_executeFile("../CPValueTransformer+FunctionCallback.j",YES);
objj_executeFile("../Views/MMCollectionView.j",YES);
objj_executeFile("../Views/MMImagePickerCell.j",YES);
objj_executeFile("../Views/HUDToolbar.j",YES);
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
_toolbar=objj_msgSend(objj_msgSend(HUDToolbar,"alloc"),"initWithFrame:",CGRectMake(0,CGRectGetMaxY(objj_msgSend(_scrollView,"frame")),CGRectGetWidth(objj_msgSend(_scrollView,"frame")),30));
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
p;49;Controllers/MMLibrarySectionTableViewController.jt;6875;@STATIC;1.0;I;25;AppKit/CPViewController.jI;26;AppKit/CPArrayController.ji;28;../Models/MMLibrarySection.ji;44;../DataSources/MMLibrarySectionsDataSource.jt;6713;
objj_executeFile("AppKit/CPViewController.j",NO);
objj_executeFile("AppKit/CPArrayController.j",NO);
objj_executeFile("../Models/MMLibrarySection.j",YES);
objj_executeFile("../DataSources/MMLibrarySectionsDataSource.j",YES);
var _1=objj_allocateClassPair(CPViewController,"MMLibrarySectionTableViewController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_delegate"),new objj_ivar("_dataSource"),new objj_ivar("_librarySections"),new objj_ivar("_librarySectionsController"),new objj_ivar("_oldLibrarySections"),new objj_ivar("_suppressSelectionChangeNotification"),new objj_ivar("_selectedRow"),new objj_ivar("_selectedLibrarySection")]);
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
}),new objj_method(sel_getUid("initWithDelegate:"),function(_14,_15,_16){
with(_14){
return _14=objj_msgSend(_14,"initWithDelegate:dataSource:",_16,objj_msgSend(MMLibrarySectionsDataSource,"sharedDataSource"));
}
}),new objj_method(sel_getUid("initWithDelegate:dataSource:"),function(_17,_18,_19,_1a){
with(_17){
if(_17=objj_msgSend(_17,"init")){
objj_msgSend(_17,"setDelegate:",_19);
objj_msgSend(_17,"setDataSource:",_1a);
_selectedRow=CPNotFound;
}
return _17;
}
}),new objj_method(sel_getUid("setDataSource:"),function(_1b,_1c,_1d){
with(_1b){
var _1e=objj_msgSend(CPNotificationCenter,"defaultCenter");
objj_msgSend(_1e,"removeObserver:name:object:",_1b,MMDataSourceDidReceiveRecords,_dataSource);
objj_msgSend(_1e,"removeObserver:name:object:",_1b,MMDataSourceDidCreateRecord,_dataSource);
objj_msgSend(_1e,"removeObserver:name:object:",_1b,MMDataSourceDidDeleteRecord,_dataSource);
_dataSource=_1d;
objj_msgSend(_1e,"addObserver:selector:name:object:",_1b,sel_getUid("_dataSourceDidReceiveRecords:"),MMDataSourceDidReceiveRecords,_dataSource);
objj_msgSend(_1e,"addObserver:selector:name:object:",_1b,sel_getUid("_dataSourceDidCreateRecord:"),MMDataSourceDidCreateRecord,_dataSource);
objj_msgSend(_1e,"addObserver:selector:name:object:",_1b,sel_getUid("_dataSourceDidDeleteRecord:"),MMDataSourceDidDeleteRecord,_dataSource);
objj_msgSend(_1e,"addObserver:selector:name:object:",_1b,sel_getUid("_dataSourceDidUpdateRecord:"),MMDataSourceDidUpdateRecord,_dataSource);
}
}),new objj_method(sel_getUid("selectedLibrarySection"),function(_1f,_20){
with(_1f){
var _21=objj_msgSend(objj_msgSend(_1f,"view"),"selectedRow");
if(_21==CPNotFound){
return nil;
}
if(_21>=objj_msgSend(objj_msgSend(_librarySectionsController,"content"),"count")){
return nil;
}
return objj_msgSend(objj_msgSend(_librarySectionsController,"content"),"objectAtIndex:",_21);
}
}),new objj_method(sel_getUid("_dataSourceDidReceiveRecords:"),function(_22,_23,_24){
with(_22){
var _25=objj_msgSend(objj_msgSend(_24,"userInfo"),"objectForKey:","records");
if(objj_msgSend(objj_msgSend(_librarySectionsController,"content"),"isEqual:",_25)){
return;
}
objj_msgSend(_librarySectionsController,"setContent:",_25);
}
}),new objj_method(sel_getUid("_dataSourceDidCreateRecord:"),function(_26,_27,_28){
with(_26){
objj_msgSend(_librarySectionsController,"addObject:",objj_msgSend(objj_msgSend(_28,"userInfo"),"objectForKey:","record"));
objj_msgSend(_dataSource,"refreshRecords");
}
}),new objj_method(sel_getUid("_dataSourceDidDeleteRecord:"),function(_29,_2a,_2b){
with(_29){
objj_msgSend(_librarySectionsController,"removeObject:",objj_msgSend(objj_msgSend(_2b,"userInfo"),"objectForKey:","record"));
objj_msgSend(_dataSource,"refreshRecords");
}
}),new objj_method(sel_getUid("_dataSourceDidUpdateRecord:"),function(_2c,_2d,_2e){
with(_2c){
_suppressSelectionChangeNotification=YES;
objj_msgSend(_dataSource,"refreshRecords");
}
}),new objj_method(sel_getUid("loadView"),function(_2f,_30){
with(_2f){
_librarySectionsController=objj_msgSend(objj_msgSend(CPArrayController,"alloc"),"init");
objj_msgSend(_librarySectionsController,"setPreservesSelection:",YES);
objj_msgSend(_librarySectionsController,"setAvoidsEmptySelection:",YES);
objj_msgSend(_librarySectionsController,"setSelectsInsertedObjects:",YES);
objj_msgSend(_librarySectionsController,"setSortDescriptors:",objj_msgSend(CPArray,"arrayWithObject:",objj_msgSend(CPSortDescriptor,"sortDescriptorWithKey:ascending:","title",YES)));
var _31=objj_msgSend(objj_msgSend(CPTableView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_31,"bind:toObject:withKeyPath:options:","content",_librarySectionsController,"arrangedObjects",nil);
objj_msgSend(_31,"bind:toObject:withKeyPath:options:","selectionIndexes",_librarySectionsController,"selectionIndexes",nil);
objj_msgSend(_31,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_31,"setDelegate:",_2f);
objj_msgSend(_31,"setTarget:",_2f);
objj_msgSend(_31,"setDoubleAction:",sel_getUid("tableViewRowWasDoubleClicked:"));
objj_msgSend(_31,"setAllowsEmptySelection:",NO);
var _32=objj_msgSend(objj_msgSend(CPTableColumn,"alloc"),"initWithIdentifier:","title");
objj_msgSend(objj_msgSend(_32,"headerView"),"setStringValue:",CPLocalizedString("Section","Section"));
objj_msgSend(_32,"setWidth:",100);
objj_msgSend(_32,"bind:toObject:withKeyPath:options:","value",_librarySectionsController,"arrangedObjects.title",nil);
objj_msgSend(_31,"addTableColumn:",_32);
objj_msgSend(_2f,"setView:",_31);
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",6,_2f,sel_getUid("_reloadLibrarySections"),nil,YES);
objj_msgSend(_2f,"_reloadLibrarySections");
}
}),new objj_method(sel_getUid("_reloadLibrarySections"),function(_33,_34){
with(_33){
objj_msgSend(_dataSource,"refreshRecords");
}
}),new objj_method(sel_getUid("tableViewRowWasDoubleClicked:"),function(_35,_36,_37){
with(_35){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("librarySectionWasActivated:"))){
var _38=objj_msgSend(_37,"clickedRow");
if(objj_msgSend(objj_msgSend(_librarySectionsController,"content"),"count")>_38&&_38>=0){
objj_msgSend(_delegate,"librarySectionWasActivated:",objj_msgSend(objj_msgSend(_librarySectionsController,"content"),"objectAtIndex:",objj_msgSend(_37,"clickedRow")));
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
p;31;DataSources/MMAgentDataSource.jt;3655;@STATIC;1.0;i;14;MMDataSource.ji;19;../Models/MMAgent.ji;26;../Models/LanguageConfig.ji;18;../Models/PMSURL.jt;3539;
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
}),new objj_method(sel_getUid("didReceiveRecordsAsData:connection:contextInfo:"),function(_d,_e,_f,_10,_11){
with(_d){
var _12=objj_msgSend(CPArray,"array"),doc=objj_msgSend(_10,"responseXML"),_13=doc.documentElement,_14=_13.childNodes;
for(var i=_14.length;i--;){
var _15=_14[i];
if(String(_15.nodeName)=="Agent"){
var _16=objj_msgSend(objj_msgSend(MMAgent,"alloc"),"init");
objj_msgSend(_16,"setValuesForNodeAttributes:ignoreUndefinedKeys:",_15,YES);
objj_msgSend(_12,"insertObject:atIndex:",_16,0);
var _17=_15.childNodes,_18=objj_msgSend(CPArray,"array");
for(var j=_17.length;j--;){
var _19=_17[j];
if(String(_19.nodeName)=="Language"){
var _1a=objj_msgSend(objj_msgSend(LanguageConfig,"alloc"),"initWithCode:",_19.getAttribute("code"));
objj_msgSend(_18,"insertObject:atIndex:",_1a,0);
}
}
objj_msgSend(_16,"setLanguages:",_18);
}
}
objj_msgSend(_d,"didReceiveRecords:connection:contextInfo:",_12,_10,_11);
}
}),new objj_method(sel_getUid("didReceiveRecords:connection:contextInfo:"),function(_1b,_1c,_1d,_1e,_1f){
with(_1b){
objj_msgSend(_1b,"setCacheValue:forKey:",_1d,_1f);
objj_msgSendSuper({receiver:_1b,super_class:objj_getClass("MMAgentDataSource").super_class},"didReceiveRecords:connection:contextInfo:",_1d,_1e,_1f);
}
}),new objj_method(sel_getUid("setCacheValue:forKey:"),function(_20,_21,_22,key){
with(_20){
CPLog.debug("[%@ -setCacheValue:forKey:] cache SET for key=%@",objj_msgSend(_20,"class"),key);
objj_msgSend(_cache,"setValue:forKey:",_22,objj_msgSend(_20,"_cacheKeyForContextInfo:",key));
}
}),new objj_method(sel_getUid("cacheValueForKey:"),function(_23,_24,key){
with(_23){
var _25=objj_msgSend(_cache,"valueForKey:",objj_msgSend(_23,"_cacheKeyForContextInfo:",key));
CPLog.debug("[%@ -cacheValueForKey:] cache %@ for key=%@",objj_msgSend(_23,"class"),_25?"HIT":"MISS",key);
return _25;
}
}),new objj_method(sel_getUid("_cacheKeyForContextInfo:"),function(_26,_27,_28){
with(_26){
if(objj_msgSend(_28,"respondsToSelector:",sel_getUid("stringValue"))){
return objj_msgSend(_28,"stringValue");
}else{
return _28||objj_msgSend(CPNull,"null");
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
p;26;DataSources/MMDataSource.jt;19370;@STATIC;1.0;I;21;Foundation/CPObject.jI;18;Foundation/CPURL.ji;20;../MMURLConnection.jt;19276;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("Foundation/CPURL.j",NO);
objj_executeFile("../MMURLConnection.j",YES);
MMDataSourceImplementationIncomplete="MMDataSourceImplementationIncomplete";
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
class_addIvars(_2,[new objj_ivar("delegate"),new objj_ivar("refreshConnections"),new objj_ivar("recordsByDeleteConnection"),new objj_ivar("recordsByCreateConnection"),new objj_ivar("recordsByUpdateConnection"),new objj_ivar("contextInfoByConnection"),new objj_ivar("statusCodeByConnection"),new objj_ivar("arrayControllers"),new objj_ivar("notificationCenter"),new objj_ivar("delegateRespondsTo_dataSource_didRequestRecordsWithContextInfo"),new objj_ivar("delegateRespondsTo_dataSource_didReceiveRecords_contextInfo"),new objj_ivar("delegateRespondsTo_dataSource_didFailToReceiveRecords_withError_contextInfo"),new objj_ivar("delegateRespondsTo_dataSource_didDeleteRecord_contextInfo"),new objj_ivar("delegateRespondsTo_dataSource_didFailToDeleteRecord_withError_contextInfo"),new objj_ivar("delegateRespondsTo_dataSource_didCreateRecord_contextInfo"),new objj_ivar("delegateRespondsTo_dataSource_didFailToCreateRecord_withError_contextInfo")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("delegate"),function(_4,_5){
with(_4){
return delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_6,_7,_8){
with(_6){
delegate=_8;
}
}),new objj_method(sel_getUid("init"),function(_9,_a){
with(_9){
if(_9=objj_msgSendSuper({receiver:_9,super_class:objj_getClass("MMDataSource").super_class},"init")){
refreshConnections=objj_msgSend(CPArray,"array");
recordsByDeleteConnection=objj_msgSend(CPDictionary,"dictionary");
recordsByCreateConnection=objj_msgSend(CPDictionary,"dictionary");
recordsByUpdateConnection=objj_msgSend(CPDictionary,"dictionary");
contextInfoByConnection=objj_msgSend(CPDictionary,"dictionary");
statusCodeByConnection=objj_msgSend(CPDictionary,"dictionary");
notificationCenter=objj_msgSend(CPNotificationCenter,"defaultCenter");
arrayControllers=objj_msgSend(CPArray,"array");
}
return _9;
}
}),new objj_method(sel_getUid("initWithDelegate:"),function(_b,_c,_d){
with(_b){
if(_b=objj_msgSend(_b,"init")){
objj_msgSend(_b,"setDelegate:",_d);
}
return _b;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_e,_f,_10){
with(_e){
delegate=_10;
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
}),new objj_method(sel_getUid("setSelectionIndexes:"),function(_11,_12,_13){
with(_11){
objj_msgSend(arrayControllers,"setValue:forKey:",_13,"selectionIndexes");
}
}),new objj_method(sel_getUid("addArrayController:"),function(_14,_15,_16){
with(_14){
objj_msgSend(arrayControllers,"addObject:",_16);
}
}),new objj_method(sel_getUid("removeArrayController:"),function(_17,_18,_19){
with(_17){
objj_msgSend(arrayControllers,"removeObject:",_19);
}
}),new objj_method(sel_getUid("refreshRecords"),function(_1a,_1b){
with(_1a){
objj_msgSend(_1a,"refreshRecordsWithContextInfo:",nil);
}
}),new objj_method(sel_getUid("refreshRecordsWithContextInfo:"),function(_1c,_1d,_1e){
with(_1c){
var _1f=objj_msgSend(CPURLRequest,"requestWithURL:",objj_msgSend(_1c,"URLForRecordsWithContextInfo:",_1e)),_20=objj_msgSend(objj_msgSend(MMURLConnection,"alloc"),"initWithRequest:delegate:startImmediately:",_1f,_1c,NO);
objj_msgSend(contextInfoByConnection,"setObject:forKey:",_1e,_20);
objj_msgSend(refreshConnections,"addObject:",_20);
objj_msgSend(_20,"start");
if(delegateRespondsTo_dataSource_didRequestRecordsWithContextInfo){
objj_msgSend(delegate,"dataSource:didRequestRecordsWithContextInfo:",_1c,_1e);
}
objj_msgSend(notificationCenter,"postNotificationName:object:userInfo:",MMDataSourceDidRequestRecords,_1c,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_1e,"contextInfo"));
}
}),new objj_method(sel_getUid("deleteRecord:"),function(_21,_22,_23){
with(_21){
objj_msgSend(_21,"deleteRecord:contextInfo:",_23,nil);
}
}),new objj_method(sel_getUid("deleteRecord:contextInfo:"),function(_24,_25,_26,_27){
with(_24){
var _28=objj_msgSend(CPURLRequest,"requestWithURL:",objj_msgSend(_24,"URLForRecord:contextInfo:",_26,_27)),_29=objj_msgSend(objj_msgSend(MMURLConnection,"alloc"),"initWithRequest:delegate:startImmediately:",_28,_24,NO);
objj_msgSend(_28,"setHTTPMethod:","DELETE");
objj_msgSend(contextInfoByConnection,"setObject:forKey:",_27,_29);
objj_msgSend(recordsByDeleteConnection,"setObject:forKey:",_26,_29);
objj_msgSend(_29,"start");
}
}),new objj_method(sel_getUid("createRecord:"),function(_2a,_2b,_2c){
with(_2a){
objj_msgSend(_2a,"createRecord:contextInfo:",_2c,nil);
}
}),new objj_method(sel_getUid("createRecord:contextInfo:"),function(_2d,_2e,_2f,_30){
with(_2d){
var _31=objj_msgSend(CPURLRequest,"requestWithURL:",objj_msgSend(_2d,"URLForNewRecord:contextInfo:",_2f,_30)),_32=objj_msgSend(objj_msgSend(MMURLConnection,"alloc"),"initWithRequest:delegate:startImmediately:",_31,_2d,NO);
objj_msgSend(_31,"setHTTPMethod:","POST");
objj_msgSend(_31,"setHTTPBody:",objj_msgSend(_2d,"HTTPBodyForNewRecord:contextInfo:",_2f,_30));
objj_msgSend(recordsByCreateConnection,"setObject:forKey:",_2f,_32);
objj_msgSend(contextInfoByConnection,"setObject:forKey:",_30,_32);
objj_msgSend(_32,"start");
}
}),new objj_method(sel_getUid("updateRecord:"),function(_33,_34,_35){
with(_33){
objj_msgSend(_33,"updateRecord:contextInfo:",_35,nil);
}
}),new objj_method(sel_getUid("updateRecord:contextInfo:"),function(_36,_37,_38,_39){
with(_36){
objj_msgSend(_36,"updateRecord:contextInfo:URL:HTTPBody:",_38,_39,objj_msgSend(_36,"URLForUpdatedRecord:contextInfo:",_38,_39),objj_msgSend(_36,"HTTPBodyForUpdatedRecord:contextInfo:",_38,_39));
}
}),new objj_method(sel_getUid("updateRecord:contextInfo:URL:HTTPBody:"),function(_3a,_3b,_3c,_3d,_3e,_3f){
with(_3a){
var _40=objj_msgSend(CPURLRequest,"requestWithURL:",_3e),_41=objj_msgSend(objj_msgSend(MMURLConnection,"alloc"),"initWithRequest:delegate:startImmediately:",_40,_3a,NO);
objj_msgSend(_40,"setHTTPMethod:","PUT");
objj_msgSend(_40,"setHTTPBody:",_3f);
objj_msgSend(recordsByUpdateConnection,"setObject:forKey:",_3c,_41);
objj_msgSend(contextInfoByConnection,"setObject:forKey:",_3d,_41);
objj_msgSend(_41,"start");
}
}),new objj_method(sel_getUid("URLForRecordsWithContextInfo:"),function(_42,_43,_44){
with(_42){
objj_msgSend(CPException,"raise:reason:",MMDataSourceImplementationIncomplete,objj_msgSend(CPString,"stringWithFormat:","%@ does not implement URLForRecordsWithContextInfo:",objj_msgSend(_42,"class")));
}
}),new objj_method(sel_getUid("URLForRecord:contextInfo:"),function(_45,_46,_47,_48){
with(_45){
objj_msgSend(CPException,"raise:reason:",MMDataSourceImplementationIncomplete,objj_msgSend(CPString,"stringWithFormat:","%@ does not implement URLForRecord:contextInfo:",objj_msgSend(_45,"class")));
}
}),new objj_method(sel_getUid("URLForNewRecord:contextInfo:"),function(_49,_4a,_4b,_4c){
with(_49){
objj_msgSend(CPException,"raise:reason:",MMDataSourceImplementationIncomplete,objj_msgSend(CPString,"stringWithFormat:","%@ does not implement URLForNewRecord:contextInfo:",objj_msgSend(_49,"class")));
}
}),new objj_method(sel_getUid("URLForUpdatedRecord:contextInfo:"),function(_4d,_4e,_4f,_50){
with(_4d){
objj_msgSend(CPException,"raise:reason:",MMDataSourceImplementationIncomplete,objj_msgSend(CPString,"stringWithFormat:","%@ does not implement URLForUpdatedRecord:contextInfo:",objj_msgSend(_4d,"class")));
}
}),new objj_method(sel_getUid("HTTPBodyForNewRecord:contextInfo:"),function(_51,_52,_53,_54){
with(_51){
objj_msgSend(CPException,"raise:reason:",MMDataSourceImplementationIncomplete,objj_msgSend(CPString,"stringWithFormat:","%@ does not implement HTTPBodyForNewRecord:contextInfo:",objj_msgSend(_51,"class")));
}
}),new objj_method(sel_getUid("HTTPBodyForUpdatedRecord:contextInfo:"),function(_55,_56,_57,_58){
with(_55){
objj_msgSend(CPException,"raise:reason:",MMDataSourceImplementationIncomplete,objj_msgSend(CPString,"stringWithFormat:","%@ does not implement HTTPBodyForUpdatedRecord:contextInfo:",objj_msgSend(_55,"class")));
}
}),new objj_method(sel_getUid("didReceiveRecords:connection:contextInfo:"),function(_59,_5a,_5b,_5c,_5d){
with(_59){
if(delegateRespondsTo_dataSource_didReceiveRecords_contextInfo){
objj_msgSend(delegate,"dataSource:didReceiveRecords:contextInfo:",_59,_5b,_5d);
}
objj_msgSend(arrayControllers,"setValue:forKey:",_5b,"content");
objj_msgSend(notificationCenter,"postNotificationName:object:userInfo:",MMDataSourceDidReceiveRecords,_59,objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_5d,_5b],["contextInfo","records"]));
}
}),new objj_method(sel_getUid("didReceiveRecordsAsData:connection:contextInfo:"),function(_5e,_5f,_60,_61,_62){
with(_5e){
objj_msgSend(CPException,"raise:reason:",MMDataSourceImplementationIncomplete,objj_msgSend(CPString,"stringWithFormat:","%@ does not implement didReceiveRecordsAsData:connection:contextInfo:",objj_msgSend(_5e,"class")));
}
}),new objj_method(sel_getUid("didFailToReceiveRecordsWithError:contextInfo:"),function(_63,_64,_65,_66){
with(_63){
CPLog.trace("[%@ -didFailToReceiveRecordsWithError:contextInfo:] START",objj_msgSend(_63,"class"));
if(delegateRespondsTo_dataSource_didFailToReceiveRecords_withError_contextInfo){
objj_msgSend(delegate,"dataSource:didFailToReceiveRecordsWithError:contextInfo:",_63,_65,_66);
}
objj_msgSend(notificationCenter,"postNotificationName:object:userInfo:",MMDataSourceDidFailToReceiveRecords,_63,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_66,"contextInfo"));
CPLog.trace("[%@ -didFailToReceiveRecordsWithError:contextInfo:] END",objj_msgSend(_63,"class"));
}
}),new objj_method(sel_getUid("didDeleteRecord:contextInfo:"),function(_67,_68,_69,_6a){
with(_67){
if(delegateRespondsTo_dataSource_didDeleteRecord_contextInfo){
objj_msgSend(delegate,"dataSource:didDeleteRecord:contextInfo:",_67,_69,_6a);
}
objj_msgSend(notificationCenter,"postNotificationName:object:userInfo:",MMDataSourceDidDeleteRecord,_67,objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_6a,_69],["contextInfo","record"]));
}
}),new objj_method(sel_getUid("didFailToDeleteRecord:withError:contextInfo:"),function(_6b,_6c,_6d,_6e,_6f){
with(_6b){
CPLog.trace("[%@ -didFailToDeleteRecord:withError:contextInfo:] START",objj_msgSend(_6b,"class"));
if(delegateRespondsTo_dataSource_didFailToDeleteRecord_withError_contextInfo){
objj_msgSend(delegate,"dataSource:didFailToDeleteRecord:withError:contextInfo:",_6b,_6d,_6e,_6f);
}
objj_msgSend(notificationCenter,"postNotificationName:object:userInfo:",MMDataSourceDidFailToDeleteRecord,_6b,objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_6f,_6d,_6e],["contextInfo","record","error"]));
CPLog.trace("[%@ -didFailToDeleteRecord:withError:contextInfo:] END",objj_msgSend(_6b,"class"));
}
}),new objj_method(sel_getUid("didUpdateRecord:contextInfo:"),function(_70,_71,_72,_73){
with(_70){
if(delegateRespondsTo_dataSource_didUpdateRecord_contextInfo){
objj_msgSend(delegate,"dataSource:didUpdateRecord:contextInfo:",_70,_72,_73);
}
objj_msgSend(notificationCenter,"postNotificationName:object:userInfo:",MMDataSourceDidUpdateRecord,_70,objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_73,_72],["contextInfo","record"]));
}
}),new objj_method(sel_getUid("didFailToUpdateRecord:withError:contextInfo:"),function(_74,_75,_76,_77,_78){
with(_74){
CPLog.trace("[%@ -didFailToUpdateRecord:withError:contextInfo:] START",objj_msgSend(_74,"class"));
if(delegateRespondsTo_dataSource_didFailToUpdateRecord_withError_contextInfo){
objj_msgSend(delegate,"dataSource:didFailToUpdateRecord:withError:contextInfo:",_74,_76,_77,_78);
}
objj_msgSend(notificationCenter,"postNotificationName:object:userInfo:",MMDataSourceDidFailToUpdateRecord,_74,objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_78,_76,_77],["contextInfo","record","error"]));
CPLog.trace("[%@ -didFailToUpdateRecord:withError:contextInfo:] END",objj_msgSend(_74,"class"));
}
}),new objj_method(sel_getUid("didCreateRecord:contextInfo:"),function(_79,_7a,_7b,_7c){
with(_79){
if(delegateRespondsTo_dataSource_didCreateRecord_contextInfo){
objj_msgSend(delegate,"dataSource:didCreateRecord:contextInfo:",_79,_7b,_7c);
}
objj_msgSend(notificationCenter,"postNotificationName:object:userInfo:",MMDataSourceDidCreateRecord,_79,objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_7c,_7b],["contextInfo","record"]));
}
}),new objj_method(sel_getUid("didFailToCreateRecord:withError:contextInfo:"),function(_7d,_7e,_7f,_80,_81){
with(_7d){
CPLog.trace("[%@ -didFailToCreateRecord:withError:contextInfo:] START",objj_msgSend(_7d,"class"));
if(delegateRespondsTo_dataSource_didFailToCreateRecord_withError_contextInfo){
objj_msgSend(delegate,"dataSource:didFailToCreateRecord:withError:contextInfo:",_7d,_7f,_80,_81);
}
objj_msgSend(notificationCenter,"postNotificationName:object:userInfo:",MMDataSourceDidFailToCreateRecord,_7d,objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_81,_7f,_80],["contextInfo","record","error"]));
CPLog.trace("[%@ -didFailToCreateRecord:withError:contextInfo:] END",objj_msgSend(_7d,"class"));
}
}),new objj_method(sel_getUid("connection:didReceiveResponse:"),function(_82,_83,_84,_85){
with(_82){
var _86=objj_msgSend(_85,"respondsToSelector:",sel_getUid("statusCode"))&&objj_msgSend(_85,"statusCode");
CPLog.trace("[%@ -connection:didReceiveResponse:] START (statusCode=%@)",objj_msgSend(_82,"class"),_86);
objj_msgSend(statusCodeByConnection,"setObject:forKey:",_86,_84);
CPLog.trace("[%@ -connection:didReceiveResponse:] END",objj_msgSend(_82,"class"));
}
}),new objj_method(sel_getUid("connection:didReceiveData:"),function(_87,_88,_89,_8a){
with(_87){
CPLog.trace("[%@ -connection:didReceiveData:] START",objj_msgSend(_87,"class"));
var _8b=objj_msgSend(statusCodeByConnection,"objectForKey:",_89),_8c=objj_msgSend(contextInfoByConnection,"objectForKey:",_89);
if(!_8b||_8b>=400){
objj_msgSend(_87,"connection:didFailWithError:",_89,_8a);
}else{
if(objj_msgSend(refreshConnections,"containsObject:",_89)){
objj_msgSend(_87,"didReceiveRecordsAsData:connection:contextInfo:",_8a,_89,_8c);
}else{
if(objj_msgSend(recordsByDeleteConnection,"containsKey:",_89)){
var _8d=objj_msgSend(recordsByDeleteConnection,"objectForKey:",_89);
objj_msgSend(_87,"didDeleteRecord:contextInfo:",_8d,_8c);
}else{
if(objj_msgSend(recordsByCreateConnection,"containsKey:",_89)){
var _8d=objj_msgSend(recordsByCreateConnection,"objectForKey:",_89);
objj_msgSend(_87,"didCreateRecord:contextInfo:",_8d,_8c);
}else{
if(objj_msgSend(recordsByUpdateConnection,"containsKey:",_89)){
var _8d=objj_msgSend(recordsByUpdateConnection,"objectForKey:",_89);
objj_msgSend(_87,"didUpdateRecord:contextInfo:",_8d,_8c);
}else{
CPLog.warn("[%@ -connection:didReceiveData:] got message for unknown connection: %@ data: %@",objj_msgSend(_87,"class"),_89,_8a);
}
}
}
}
}
objj_msgSend(recordsByDeleteConnection,"removeObjectForKey:",_89);
objj_msgSend(recordsByCreateConnection,"removeObjectForKey:",_89);
objj_msgSend(recordsByUpdateConnection,"removeObjectForKey:",_89);
objj_msgSend(contextInfoByConnection,"removeObjectForKey:",_89);
objj_msgSend(refreshConnections,"removeObject:",_89);
CPLog.trace("[%@ -connection:didReceiveData:] END",objj_msgSend(_87,"class"));
}
}),new objj_method(sel_getUid("connection:didFailWithError:"),function(_8e,_8f,_90,_91){
with(_8e){
CPLog.trace("[%@ -connection:didFailWithError:] START (error=%@)",objj_msgSend(_8e,"class"),_91);
if(objj_msgSend(refreshConnections,"containsObject:",_90)){
objj_msgSend(refreshConnections,"removeObject:",_90);
objj_msgSend(_8e,"didFailToReceiveRecordsWithError:contextInfo:",_91,objj_msgSend(contextInfoByConnection,"objectForKey:",_90));
}else{
if(objj_msgSend(recordsByDeleteConnection,"containsKey:",_90)){
var _92=objj_msgSend(recordsByDeleteConnection,"objectForKey:",_90);
objj_msgSend(recordsByDeleteConnection,"removeObjectForKey:",_90);
objj_msgSend(_8e,"didFailToDeleteRecord:withError:contextInfo:",_92,_91,objj_msgSend(contextInfoByConnection,"objectForKey:",_90));
}else{
if(objj_msgSend(recordsByCreateConnection,"containsKey:",_90)){
var _92=objj_msgSend(recordsByCreateConnection,"objectForKey:",_90);
objj_msgSend(recordsByCreateConnection,"removeObjectForKey:",_90);
objj_msgSend(_8e,"didFailToCreateRecord:withError:contextInfo:",_92,_91,objj_msgSend(contextInfoByConnection,"objectForKey:",_90));
}else{
if(objj_msgSend(recordsByUpdateConnection,"containsKey:",_90)){
var _92=objj_msgSend(recordsByUpdateConnection,"objectForKey:",_90);
objj_msgSend(recordsByUpdateConnection,"removeObjectForKey:",_90);
objj_msgSend(_8e,"didFailToUpdateRecord:withError:contextInfo:",_92,_91,objj_msgSend(contextInfoByConnection,"objectForKey:",_90));
}
}
}
}
CPLog.trace("[%@ -connection:didFailWithError:] END",objj_msgSend(_8e,"class"));
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("sharedDataSource"),function(_93,_94){
with(_93){
var _95=objj_msgSend(_1,"objectForKey:",CPStringFromClass(_93));
if(!_95){
_95=objj_msgSend(objj_msgSend(_93,"alloc"),"init");
objj_msgSend(_1,"setObject:forKey:",_95,CPStringFromClass(_93));
}
return _95;
}
})]);
p;39;DataSources/MMImageMetadataDataSource.jt;1540;@STATIC;1.0;i;14;MMDataSource.ji;18;../Models/PMSURL.jt;1479;
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
}),new objj_method(sel_getUid("didReceiveRecordsAsData:connection:contextInfo:"),function(_f,_10,_11,_12,_13){
with(_f){
var _14=objj_msgSend(CPArray,"array"),doc=objj_msgSend(_12,"responseXML"),_15=doc.documentElement,_16=_15.childNodes,_17=objj_msgSend(CPIndexSet,"indexSet");
for(var i=0,_18=_16.length,_19=0;i<_18;i++){
var _1a=_16[i];
if(String(_1a.nodeName)=="Photo"){
var _1b=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initByReferencingFile:size:",String(_1a.getAttribute("key")),CGSizeMake(-1,-1));
objj_msgSend(_14,"addObject:",_1b);
if(String(_1a.getAttribute("selected"))==="1"){
objj_msgSend(_17,"addIndex:",_19);
}
_19++;
}
}
objj_msgSend(_f,"didReceiveRecords:connection:contextInfo:",_14,_12,_13);
objj_msgSend(_f,"setSelectionIndexes:",_17);
}
})]);
p;38;DataSources/MMLibraryMediaDataSource.jt;1372;@STATIC;1.0;I;21;Foundation/CPObject.ji;30;../Models/MMLibraryMediaItem.ji;14;MMDataSource.ji;27;../CPObject+XMLAttributes.jt;1241;
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
}),new objj_method(sel_getUid("didReceiveRecordsAsData:connection:contextInfo:"),function(_a,_b,_c,_d,_e){
with(_a){
var _f=objj_msgSend(CPArray,"array"),doc=objj_msgSend(_d,"responseXML"),_10=doc.documentElement,_11=_10.childNodes;
for(var i=_11.length;i--;){
var _12=_11[i];
if(/^(Video|Directory)$/.test(String(_12.nodeName))){
var _13=objj_msgSend(objj_msgSend(MMLibraryMediaItem,"alloc"),"init");
objj_msgSend(_13,"setValuesForNodeAttributes:ignoreUndefinedKeys:",_12,YES);
objj_msgSend(_13,"setLibrarySection:",_e);
objj_msgSend(_f,"insertObject:atIndex:",_13,0);
}
}
objj_msgSend(_a,"didReceiveRecords:connection:contextInfo:",_f,_d,_e);
}
})]);
p;41;DataSources/MMLibrarySectionsDataSource.jt;3453;@STATIC;1.0;i;28;../Models/MMLibrarySection.ji;18;../Models/PMSURL.ji;14;MMDataSource.jt;3359;
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
}),new objj_method(sel_getUid("didReceiveRecordsAsData:connection:contextInfo:"),function(_27,_28,_29,_2a,_2b){
with(_27){
var _2c=objj_msgSend(CPArray,"array"),doc=objj_msgSend(_2a,"responseXML"),_2d=doc.documentElement,_2e=_2d.childNodes;
for(var i=_2e.length;i--;){
var _2f=_2e[i];
if(String(_2f.nodeName)!="Directory"){
continue;
}
var _30=objj_msgSend(objj_msgSend(MMLibrarySection,"alloc"),"init");
objj_msgSend(_30,"setValuesForNodeAttributes:ignoreUndefinedKeys:",_2f,YES);
var _31=objj_msgSend(CPArray,"array"),_32=_2f.childNodes;
for(var j=_32.length;j--;){
var _33=_32[j];
if(String(_33.nodeName)!="Location"){
continue;
}
objj_msgSend(_31,"addObject:",String(_33.getAttribute("path")));
objj_msgSend(_30,"setLocations:",_31);
}
objj_msgSend(_2c,"insertObject:atIndex:",_30,0);
}
objj_msgSend(_27,"didReceiveRecords:connection:contextInfo:",_2c,_2a,_2b);
}
})]);
p;38;DataSources/MMMediaMatchesDataSource.jt;3092;@STATIC;1.0;i;14;MMDataSource.ji;26;../Models/MMSearchResult.ji;30;../Models/MMLibraryMediaItem.ji;19;../Models/MMAgent.ji;18;../Models/PMSURL.ji;27;../CPDictionary+URLParams.jt;2909;
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
}),new objj_method(sel_getUid("didReceiveRecordsAsData:connection:contextInfo:"),function(_20,_21,_22,_23,_24){
with(_20){
var _25=objj_msgSend(CPArray,"array"),doc=objj_msgSend(_23,"responseXML"),_26=doc.documentElement,_27=_26.childNodes;
for(var i=_27.length;i--;){
var _28=_27[i];
if(String(_28.nodeName)!="SearchResult"){
continue;
}
var _29=objj_msgSend(objj_msgSend(MMSearchResult,"alloc"),"init");
objj_msgSend(_29,"setValuesForNodeAttributes:ignoreUndefinedKeys:",_28,YES);
objj_msgSend(_25,"insertObject:atIndex:",_29,0);
}
objj_msgSend(_20,"didReceiveRecords:connection:contextInfo:",_25,_23,_24);
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
p;33;Frameworks/LPKit/LPAnchorButton.jt;5693;@STATIC;1.0;t;5674;
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
p;39;Frameworks/LPKit/LPMultiLineTextField.jt;8178;@STATIC;1.0;I;20;AppKit/CPTextField.jt;8134;
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
}),new objj_method(sel_getUid("performKeyEquivalent:"),function(_2a,_2b,_2c){
with(_2a){
objj_msgSend(objj_msgSend(objj_msgSend(_2a,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
return YES;
}
}),new objj_method(sel_getUid("becomeFirstResponder"),function(_2d,_2e){
with(_2d){
_stringValue=objj_msgSend(_2d,"stringValue");
objj_msgSend(_2d,"setThemeState:",CPThemeStateEditing);
setTimeout(function(){
objj_msgSend(_2d,"_DOMTextareaElement").focus();
_1=_2d;
},0);
objj_msgSend(_2d,"textDidFocus:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPTextFieldDidFocusNotification,_2d,nil));
return YES;
}
}),new objj_method(sel_getUid("resignFirstResponder"),function(_2f,_30){
with(_2f){
objj_msgSend(_2f,"unsetThemeState:",CPThemeStateEditing);
objj_msgSend(_2f,"setStringValue:",objj_msgSend(_2f,"stringValue"));
objj_msgSend(_2f,"_DOMTextareaElement").blur();
if(_isEditing){
_isEditing=NO;
objj_msgSend(_2f,"textDidEndEditing:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPControlTextDidEndEditingNotification,_2f,nil));
if(objj_msgSend(_2f,"sendsActionOnEndEditing")){
objj_msgSend(_2f,"sendAction:to:",objj_msgSend(_2f,"action"),objj_msgSend(_2f,"target"));
}
}
objj_msgSend(_2f,"textDidBlur:",objj_msgSend(CPNotification,"notificationWithName:object:userInfo:",CPTextFieldDidBlurNotification,_2f,nil));
return YES;
}
}),new objj_method(sel_getUid("stringValue"),function(_31,_32){
with(_31){
return (!!_DOMTextareaElement)?_DOMTextareaElement.value:"";
}
}),new objj_method(sel_getUid("setStringValue:"),function(_33,_34,_35){
with(_33){
_stringValue=_35;
objj_msgSend(_33,"setNeedsLayout");
}
})]);
var _36="LPMultiLineTextFieldStringValueKey",_37="LPMultiLineTextFieldScrollableKey";
var _2=objj_getClass("LPMultiLineTextField");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"LPMultiLineTextField\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_38,_39,_3a){
with(_38){
if(_38=objj_msgSendSuper({receiver:_38,super_class:objj_getClass("LPMultiLineTextField").super_class},"initWithCoder:",_3a)){
objj_msgSend(_38,"setStringValue:",objj_msgSend(_3a,"decodeObjectForKey:",_36));
objj_msgSend(_38,"setScrollable:",objj_msgSend(_3a,"decodeBoolForKey:",_37));
}
return _38;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_3b,_3c,_3d){
with(_3b){
objj_msgSendSuper({receiver:_3b,super_class:objj_getClass("LPMultiLineTextField").super_class},"encodeWithCoder:",_3d);
objj_msgSend(_3d,"encodeObject:forKey:",_stringValue,_36);
objj_msgSend(_3d,"encodeBool:forKey:",(_hideOverflow?NO:YES),_37);
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
p;27;Models/MMLibraryMediaItem.jt;5114;@STATIC;1.0;I;21;Foundation/CPObject.ji;18;MMLibrarySection.ji;8;PMSURL.jt;5034;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("MMLibrarySection.j",YES);
objj_executeFile("PMSURL.j",YES);
var _1;
var _2=10000;
var _3=objj_allocateClassPair(CPObject,"MMLibraryMediaItem"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_key"),new objj_ivar("_title"),new objj_ivar("_tagline"),new objj_ivar("_year"),new objj_ivar("_summary"),new objj_ivar("_thumb"),new objj_ivar("_art"),new objj_ivar("_updatedAt"),new objj_ivar("_librarySection"),new objj_ivar("_thumbImage"),new objj_ivar("_artImage"),new objj_ivar("_thumbImages"),new objj_ivar("_artImages")]);
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
}),new objj_method(sel_getUid("tagline"),function(_f,_10){
with(_f){
return _tagline;
}
}),new objj_method(sel_getUid("setTagline:"),function(_11,_12,_13){
with(_11){
_tagline=_13;
}
}),new objj_method(sel_getUid("year"),function(_14,_15){
with(_14){
return _year;
}
}),new objj_method(sel_getUid("setYear:"),function(_16,_17,_18){
with(_16){
_year=_18;
}
}),new objj_method(sel_getUid("summary"),function(_19,_1a){
with(_19){
return _summary;
}
}),new objj_method(sel_getUid("setSummary:"),function(_1b,_1c,_1d){
with(_1b){
_summary=_1d;
}
}),new objj_method(sel_getUid("thumb"),function(_1e,_1f){
with(_1e){
return _thumb;
}
}),new objj_method(sel_getUid("setThumb:"),function(_20,_21,_22){
with(_20){
_thumb=_22;
}
}),new objj_method(sel_getUid("art"),function(_23,_24){
with(_23){
return _art;
}
}),new objj_method(sel_getUid("setArt:"),function(_25,_26,_27){
with(_25){
_art=_27;
}
}),new objj_method(sel_getUid("updatedAt"),function(_28,_29){
with(_28){
return _updatedAt;
}
}),new objj_method(sel_getUid("setUpdatedAt:"),function(_2a,_2b,_2c){
with(_2a){
_updatedAt=_2c;
}
}),new objj_method(sel_getUid("librarySection"),function(_2d,_2e){
with(_2d){
return _librarySection;
}
}),new objj_method(sel_getUid("setLibrarySection:"),function(_2f,_30,_31){
with(_2f){
_librarySection=_31;
}
}),new objj_method(sel_getUid("init"),function(_32,_33){
with(_32){
if(_32=objj_msgSendSuper({receiver:_32,super_class:objj_getClass("MMLibraryMediaItem").super_class},"init")){
_thumbImages=objj_msgSend(CPDictionary,"dictionary");
_artImages=objj_msgSend(CPDictionary,"dictionary");
}
return _32;
}
}),new objj_method(sel_getUid("id"),function(_34,_35){
with(_34){
return _key.replace(/[^\d]/g,"");
}
}),new objj_method(sel_getUid("displayTitle"),function(_36,_37){
with(_36){
var _38=objj_msgSend(CPString,"stringWithFormat:"," (%d)",_year);
if(objj_msgSend(_title,"hasSuffix:",_38)){
return objj_msgSend(_title,"substringToIndex:",objj_msgSend(_title,"length")-objj_msgSend(_38,"length"));
}else{
return _title;
}
}
}),new objj_method(sel_getUid("setUpdatedAt:"),function(_39,_3a,_3b){
with(_39){
var _3c=_3b;
if(objj_msgSend(_3c,"isKindOfClass:",CPString)){
_3c=objj_msgSend(objj_msgSend(CPDate,"alloc"),"initWithTimeIntervalSince1970:",_3c);
}
if(objj_msgSend(_3c,"isKindOfClass:",CPDate)){
_updatedAt=_3c;
}else{
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(CPString,"stringWithFormat:","updatedAt must be of type %@ (got %@)",CPDate,objj_msgSend(_3b,"class")));
}
}
}),new objj_method(sel_getUid("setThumb:"),function(_3d,_3e,_3f){
with(_3d){
if(_thumb!==_3f){
_thumb=_3f;
_thumbImage=nil;
}
}
}),new objj_method(sel_getUid("thumbImage"),function(_40,_41){
with(_40){
if(!_thumb){
return nil;
}
if(!_thumbImage){
_thumbImage=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(_40,"thumbURL"));
}
return _thumbImage;
}
}),new objj_method(sel_getUid("thumbURL"),function(_42,_43){
with(_42){
if(!_thumb){
return nil;
}
return objj_msgSend(PMSURL,"URLWithPath:",_thumb);
}
}),new objj_method(sel_getUid("setArt:"),function(_44,_45,_46){
with(_44){
if(_art!==_46){
_art=_46;
_artImage=nil;
}
}
}),new objj_method(sel_getUid("artImage"),function(_47,_48){
with(_47){
if(!_artImage){
_artImage=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(_47,"artURL"));
}
return _artImage;
}
}),new objj_method(sel_getUid("artURL"),function(_49,_4a){
with(_49){
return objj_msgSend(PMSURL,"URLWithPath:",_art);
}
}),new objj_method(sel_getUid("description"),function(_4b,_4c){
with(_4b){
return objj_msgSend(CPString,"stringWithFormat:","{%@ (%d) %@}",objj_msgSend(_4b,"title"),objj_msgSend(_4b,"year"),"0x"+objj_msgSend(CPString,"stringWithHash:",objj_msgSend(_4b,"UID")));
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("blankThumbImage"),function(_4d,_4e){
with(_4d){
if(!_1){
_1=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","BlankPoster.png"));
}
return objj_msgSend(_1,"copy");
}
})]);
p;25;Models/MMLibrarySection.jt;4731;@STATIC;1.0;I;21;Foundation/CPObject.ji;8;PMSURL.jt;4674;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("PMSURL.j",YES);
MMLibrarySectionTypeMovies="movie";
MMLibrarySectionTypeTV="show";
MMLibrarySectionTypeArtist="artist";
var _1=objj_allocateClassPair(CPObject,"MMLibrarySection"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_key"),new objj_ivar("_title"),new objj_ivar("_type"),new objj_ivar("_agent"),new objj_ivar("_scanner"),new objj_ivar("_language"),new objj_ivar("_locations"),new objj_ivar("_updatedAt")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("key"),function(_3,_4){
with(_3){
return _key;
}
}),new objj_method(sel_getUid("setKey:"),function(_5,_6,_7){
with(_5){
_key=_7;
}
}),new objj_method(sel_getUid("title"),function(_8,_9){
with(_8){
return _title;
}
}),new objj_method(sel_getUid("setTitle:"),function(_a,_b,_c){
with(_a){
_title=_c;
}
}),new objj_method(sel_getUid("type"),function(_d,_e){
with(_d){
return _type;
}
}),new objj_method(sel_getUid("setType:"),function(_f,_10,_11){
with(_f){
_type=_11;
}
}),new objj_method(sel_getUid("agent"),function(_12,_13){
with(_12){
return _agent;
}
}),new objj_method(sel_getUid("setAgent:"),function(_14,_15,_16){
with(_14){
_agent=_16;
}
}),new objj_method(sel_getUid("scanner"),function(_17,_18){
with(_17){
return _scanner;
}
}),new objj_method(sel_getUid("setScanner:"),function(_19,_1a,_1b){
with(_19){
_scanner=_1b;
}
}),new objj_method(sel_getUid("language"),function(_1c,_1d){
with(_1c){
return _language;
}
}),new objj_method(sel_getUid("setLanguage:"),function(_1e,_1f,_20){
with(_1e){
_language=_20;
}
}),new objj_method(sel_getUid("locations"),function(_21,_22){
with(_21){
return _locations;
}
}),new objj_method(sel_getUid("setLocations:"),function(_23,_24,_25){
with(_23){
_locations=_25;
}
}),new objj_method(sel_getUid("updatedAt"),function(_26,_27){
with(_26){
return _updatedAt;
}
}),new objj_method(sel_getUid("setUpdatedAt:"),function(_28,_29,_2a){
with(_28){
_updatedAt=_2a;
}
}),new objj_method(sel_getUid("id"),function(_2b,_2c){
with(_2b){
return _key;
}
}),new objj_method(sel_getUid("setAgent:"),function(_2d,_2e,_2f){
with(_2d){
if(objj_msgSend(_2f,"isKindOfClass:",CPString)){
_agent=objj_msgSend(objj_msgSend(MMAgent,"alloc"),"initWithIdentifier:",_2f);
}else{
if(objj_msgSend(_2f,"isKindOfClass:",MMAgent)){
_agent=_2f;
}else{
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(CPString,"stringWithFormat:","agent must be of type %@",MMAgent));
}
}
}
}),new objj_method(sel_getUid("setLanguage:"),function(_30,_31,_32){
with(_30){
if(objj_msgSend(_32,"isKindOfClass:",CPString)){
_language=objj_msgSend(objj_msgSend(LanguageConfig,"alloc"),"initWithCode:",_32);
}else{
if(objj_msgSend(_32,"isKindOfClass:",LanguageConfig)){
_language=_32;
}else{
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(CPString,"stringWithFormat:","language must be of type %@",LanguageConfig));
}
}
}
}),new objj_method(sel_getUid("setUpdatedAt:"),function(_33,_34,_35){
with(_33){
var _36=_35;
if(objj_msgSend(_36,"isKindOfClass:",CPString)){
_36=objj_msgSend(objj_msgSend(CPDate,"alloc"),"initWithTimeIntervalSince1970:",_36);
}
if(objj_msgSend(_36,"isKindOfClass:",CPDate)){
_updatedAt=_36;
}else{
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(CPString,"stringWithFormat:","updatedAt must be of type %@ (got %@)",CPDate,objj_msgSend(_35,"class")));
}
}
}),new objj_method(sel_getUid("isNewRecord"),function(_37,_38){
with(_37){
return (_key===nil)||(_key===undefined);
}
}),new objj_method(sel_getUid("allMediaItemsURL"),function(_39,_3a){
with(_39){
return objj_msgSend(PMSURL,"URLWithPath:",objj_msgSend(CPString,"stringWithFormat:","/library/sections/%@/all",_key));
}
}),new objj_method(sel_getUid("URL"),function(_3b,_3c){
with(_3b){
return objj_msgSend(PMSURL,"URLWithPath:",objj_msgSend(CPString,"stringWithFormat:","/library/sections/%@",_key));
}
}),new objj_method(sel_getUid("isEqual:"),function(_3d,_3e,_3f){
with(_3d){
return objj_msgSend(_3f,"isKindOfClass:",objj_msgSend(_3d,"class"))&&objj_msgSend(objj_msgSend(_3d,"key"),"isEqualToString:",objj_msgSend(_3f,"key"));
}
}),new objj_method(sel_getUid("description"),function(_40,_41){
with(_40){
return objj_msgSend(CPString,"stringWithFormat:","{%@ title=%@, key=%@, type=%@}",objj_msgSend(_40,"class"),objj_msgSend(_40,"title"),objj_msgSend(_40,"key"),objj_msgSend(_40,"type"));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("keyFromURL:"),function(_42,_43,URL){
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
p;18;Views/HUDToolbar.jt;1643;@STATIC;1.0;I;15;AppKit/CPView.jt;1604;
objj_executeFile("AppKit/CPView.j",NO);
var _1=objj_allocateClassPair(CPView,"HUDToolbar"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("drawRect:"),function(_3,_4,_5){
with(_3){
var _6=objj_msgSend(_3,"bounds"),_7=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
CGContextBeginPath(_7);
CGContextSetFillColor(_7,objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",60/255,1));
CGContextMoveToPoint(_7,CGRectGetMinX(_6),CGRectGetMinY(_6));
CGContextAddLineToPoint(_7,CGRectGetMinX(_6),CGRectGetMaxY(_6));
CGContextAddLineToPoint(_7,CGRectGetMaxX(_6),CGRectGetMaxY(_6));
CGContextAddLineToPoint(_7,CGRectGetMaxX(_6),CGRectGetMinY(_6));
CGContextAddLineToPoint(_7,CGRectGetMinX(_6),CGRectGetMinY(_6));
CGContextClosePath(_7);
CGContextFillPath(_7);
if(CPFeatureIsCompatible(CPHTMLCanvasFeature)){
var _8;
var _9;
var _a=2;
var _b=[0,1];
var _c=[60/255,60/255,60/255,1,0/255,0/255,0/255,1];
_9=CGColorSpaceCreateDeviceRGB();
_8=CGGradientCreateWithColorComponents(_9,_c,_b,_a);
var _d=CGPointMake(0,CGRectGetMinY(_6)),_e=CGPointMake(0,CGRectGetMaxY(_6));
CGContextClip(_7);
CGContextDrawLinearGradient(_7,_8,_d,_e,0);
CGContextBeginPath(_7);
CGContextSetStrokeColor(_7,objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",101/255,1));
CGContextMoveToPoint(_7,CGRectGetMinX(_6),CGRectGetMinY(_6)+0.5);
CGContextAddLineToPoint(_7,CGRectGetMaxX(_6),CGRectGetMinY(_6)+0.5);
CGContextClosePath(_7);
CGContextStrokePath(_7);
}
objj_msgSendSuper({receiver:_3,super_class:objj_getClass("HUDToolbar").super_class},"drawRect:",_5);
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
p;24;Views/MMCollectionView.jt;4046;@STATIC;1.0;I;23;Foundation/CPIndexSet.jI;21;AppKit/CPScrollView.jt;3973;
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
}),new objj_method(sel_getUid("reloadContent"),function(_15,_16){
with(_15){
_visibleRange=CPMakeRange(CPNotFound,0);
objj_msgSendSuper({receiver:_15,super_class:objj_getClass("MMCollectionView").super_class},"reloadContent");
}
}),new objj_method(sel_getUid("notifySubview:visibilityDidChange:"),function(_17,_18,_19,_1a){
with(_17){
CPLog.trace("[%@ notifySubview:visibilityDidChange:] visibility of subview %@ changed to %@",objj_msgSend(_17,"class"),_19,_1a);
if(objj_msgSend(_19,"respondsToSelector:",sel_getUid("visibilityDidChange:"))){
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"performSelector:target:argument:order:modes:",sel_getUid("visibilityDidChange:"),_19,_1a,0,[CPDefaultRunLoopMode]);
}
}
}),new objj_method(sel_getUid("indexOfItemAtPoint:"),function(_1b,_1c,_1d){
with(_1b){
var row=FLOOR(_1d.y/(_itemSize.height+_verticalMargin)),_1e=FLOOR(_1d.x/(_itemSize.width+_horizontalMargin)),_1f=row*_numberOfColumns+_1e;
return (_1f>=objj_msgSend(_content,"count"))?CPNotFound:_1f;
}
}),new objj_method(sel_getUid("setColumnCount:"),function(_20,_21,_22){
with(_20){
objj_msgSend(_20,"sizeToFitNumberOfRows:",_22);
}
}),new objj_method(sel_getUid("sizeToFitNumberOfColumns:"),function(_23,_24,_25){
with(_23){
_25=MAX(_25,1);
var _26=_25*(_itemSize.width+_horizontalMargin),_27=CEIL(_items.length/_25),_28=_27*(_itemSize.height*_verticalMargin);
objj_msgSend(_23,"setFrameSize:",CGSizeMake(_26,_28));
objj_msgSend(_23,"_scrollToSelection");
}
}),new objj_method(sel_getUid("setRowCount:"),function(_29,_2a,_2b){
with(_29){
objj_msgSend(_29,"sizeToFitNumberOfRows:",_2b);
}
}),new objj_method(sel_getUid("sizeToFitNumberOfRows:"),function(_2c,_2d,_2e){
with(_2c){
_2e=MAX(_2e,1);
var _2f=_2e*(_itemSize.height+_verticalMargin),_30=CEIL(_items.length/_2e),_31=_30*(_itemSize.width*_horizontalMargin);
objj_msgSend(_2c,"setFrameSize:",CGSizeMake(_31,_2f));
objj_msgSend(_2c,"_scrollToSelection");
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
p;25;Views/MMImagePickerCell.jt;3796;@STATIC;1.0;I;33;Foundation/CPNotificationCenter.ji;24;../CPImage+Transcoding.ji;30;../Models/MMLibraryMediaItem.ji;13;MMImageView.ji;12;MMLazyView.jt;3640;
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
console.log("already have "+objj_msgSend(_image,"filename"));
objj_msgSend(_13,"_drawImage:",_image);
}else{
console.log("don't have "+objj_msgSend(_image,"filename")+" yet");
if(_image){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_13,sel_getUid("imageDidLoad:"),CPImageDidLoadNotification,_image);
}
objj_msgSend(_13,"_drawImage:",objj_msgSend(MMLibraryMediaItem,"blankThumbImage"));
objj_msgSend(_image,"load");
}
}
}),new objj_method(sel_getUid("imageDidLoad:"),function(_16,_17,_18){
with(_16){
console.log("image just loaded "+objj_msgSend(objj_msgSend(_18,"object"),"filename"));
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
p;23;Views/MMMediaItemCell.jt;6897;@STATIC;1.0;i;40;../Controllers/MMMatchPickerController.ji;41;../DataSources/MMMediaMatchesDataSource.ji;30;../Models/MMLibraryMediaItem.ji;17;MMSelectionView.ji;12;MMLazyView.ji;13;MMImageView.jt;6695;
objj_executeFile("../Controllers/MMMatchPickerController.j",YES);
objj_executeFile("../DataSources/MMMediaMatchesDataSource.j",YES);
objj_executeFile("../Models/MMLibraryMediaItem.j",YES);
objj_executeFile("MMSelectionView.j",YES);
objj_executeFile("MMLazyView.j",YES);
objj_executeFile("MMImageView.j",YES);
var _1=4;
var _2=CGSizeMake(148,156);
var _3=objj_allocateClassPair(MMLazyView,"MMMediaItemCell"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_mediaItem"),new objj_ivar("_image"),new objj_ivar("_imageView"),new objj_ivar("_titleLabel"),new objj_ivar("_yearLabel"),new objj_ivar("_selectionView")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("setRepresentedObject:"),function(_5,_6,_7){
with(_5){
if(_mediaItem==_7){
return;
}
_mediaItem=_7;
objj_msgSend(_5,"setDirty:",YES);
}
}),new objj_method(sel_getUid("refreshView"),function(_8,_9){
with(_8){
objj_msgSend(_titleLabel,"setStringValue:",objj_msgSend(_mediaItem,"displayTitle"));
objj_msgSend(_titleLabel,"sizeToFit");
objj_msgSend(_yearLabel,"setStringValue:",objj_msgSend(_mediaItem,"year"));
objj_msgSend(_yearLabel,"sizeToFit");
objj_msgSend(_8,"setImage:",objj_msgSend(objj_msgSend(_mediaItem,"thumbImage"),"constrainedToSize:",_2));
}
}),new objj_method(sel_getUid("loadView"),function(_a,_b){
with(_a){
if(!_titleLabel){
_titleLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_titleLabel,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",12));
objj_msgSend(_titleLabel,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_titleLabel,"setTextShadowColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(_titleLabel,"setTextShadowOffset:",CGSizeMake(1,1));
objj_msgSend(_titleLabel,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_titleLabel,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(_a,"addSubview:",_titleLabel);
}
objj_msgSend(_titleLabel,"setStringValue:",objj_msgSend(_mediaItem,"displayTitle"));
objj_msgSend(_titleLabel,"sizeToFit");
if(!_yearLabel){
_yearLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_yearLabel,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",10));
objj_msgSend(_yearLabel,"setTextColor:",objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",137/255,1));
objj_msgSend(_yearLabel,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_yearLabel,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(_a,"addSubview:",_yearLabel);
}
objj_msgSend(_yearLabel,"setStringValue:",objj_msgSend(_mediaItem,"year"));
objj_msgSend(_yearLabel,"sizeToFit");
if(!_imageView){
_imageView=objj_msgSend(objj_msgSend(MMImageView,"alloc"),"initWithFrame:",CGRectMake(12,0,CGRectGetWidth(objj_msgSend(_a,"frame"))-24,CGRectGetHeight(objj_msgSend(_a,"frame"))-CGRectGetHeight(objj_msgSend(_titleLabel,"frame"))-CGRectGetHeight(objj_msgSend(_yearLabel,"frame"))-27));
objj_msgSend(_imageView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_imageView,"setImageScaling:",CPScaleProportionally);
objj_msgSend(_imageView,"setImageAlignment:",CPImageAlignBottom);
objj_msgSend(_imageView,"setHasShadow:",YES);
objj_msgSend(_a,"addSubview:",_imageView);
}
objj_msgSend(_a,"setImage:",objj_msgSend(objj_msgSend(_mediaItem,"thumbImage"),"constrainedToSize:",_2));
}
}),new objj_method(sel_getUid("imageDidLoad:"),function(_c,_d,_e){
with(_c){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_c,CPImageDidLoadNotification,objj_msgSend(_e,"object"));
objj_msgSend(_c,"_drawImage:",objj_msgSend(_e,"object"));
}
}),new objj_method(sel_getUid("setImage:"),function(_f,_10,_11){
with(_f){
if(_image===_11){
return;
}
if(_image){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_f,CPImageDidLoadNotification,_image);
}
_image=_11;
if(objj_msgSend(_image,"loadStatus")==CPImageLoadStatusCompleted){
objj_msgSend(_f,"_drawImage:",_image);
}else{
objj_msgSend(_f,"_drawImage:",objj_msgSend(MMLibraryMediaItem,"blankThumbImage"));
if(_image){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_f,sel_getUid("imageDidLoad:"),CPImageDidLoadNotification,_image);
}
objj_msgSend(_image,"load");
}
}
}),new objj_method(sel_getUid("_drawImage:"),function(_12,_13,_14){
with(_12){
objj_msgSend(_imageView,"setImage:",_14);
objj_msgSend(_titleLabel,"setFrame:",CGRectMake(0,CGRectGetMaxY(objj_msgSend(_imageView,"frame"))+12,CGRectGetWidth(objj_msgSend(_12,"frame")),CGRectGetHeight(objj_msgSend(_titleLabel,"frame"))));
objj_msgSend(_yearLabel,"setFrame:",CGRectMake(0,CGRectGetMaxY(objj_msgSend(_titleLabel,"frame")),CGRectGetWidth(objj_msgSend(_12,"frame")),CGRectGetHeight(objj_msgSend(_yearLabel,"frame"))));
}
}),new objj_method(sel_getUid("setSelected:"),function(_15,_16,_17){
with(_15){
if(_17&&!_selectionView&&_imageView){
_selectionView=objj_msgSend(MMSelectionView,"selectionViewForView:",_imageView);
}
objj_msgSend(_selectionView,"setSelected:",_17);
}
}),new objj_method(sel_getUid("rightMouseDown:"),function(_18,_19,_1a){
with(_18){
var _1b=objj_msgSend(objj_msgSend(CPMenu,"alloc"),"initWithTitle:","");
objj_msgSend(objj_msgSend(_1b,"addItemWithTitle:action:keyEquivalent:",CPLocalizedString("Fix Incorrect Match...","Fix Incorrect Match..."),sel_getUid("_fixIncorrectMatch:"),nil),"setTarget:",_18);
objj_msgSend(objj_msgSend(_1b,"addItemWithTitle:action:keyEquivalent:",CPLocalizedString("Refresh Info","Refresh Info"),sel_getUid("_refreshInfo:"),nil),"setTarget:",_18);
objj_msgSend(CPMenu,"popUpContextMenu:withEvent:forView:",_1b,_1a,_18);
}
}),new objj_method(sel_getUid("_fixIncorrectMatch:"),function(_1c,_1d,_1e){
with(_1c){
var _1f=objj_msgSend(objj_msgSend(MMMatchPickerController,"alloc"),"initWithDelegate:",_1c);
objj_msgSend(_1f,"setMediaItem:",_mediaItem);
objj_msgSend(_1f,"presentSheetInWindow:",objj_msgSend(_1c,"window"));
}
}),new objj_method(sel_getUid("picker:didSelectSearchResult:"),function(_20,_21,_22,_23){
with(_20){
CPLog.info("[%@ -picker:didSelectSearchResult:] user chose %@ as the correct match for %@",objj_msgSend(_20,"class"),_23,_mediaItem);
objj_msgSend(_22,"dismissSheet");
objj_msgSend(objj_msgSend(MMMediaMatchesDataSource,"sharedDataSource"),"selectMatch:forMediaItem:",_23,_mediaItem);
}
}),new objj_method(sel_getUid("pickerDidCancel:"),function(_24,_25,_26){
with(_24){
objj_msgSend(_26,"dismissSheet");
}
}),new objj_method(sel_getUid("_refreshInfo:"),function(_27,_28,_29){
with(_27){
objj_msgSend(objj_msgSend(MMMediaMatchesDataSource,"sharedDataSource"),"refreshMatchForMediaItem:",_mediaItem);
}
})]);
p;29;Views/MMMediaItemDetailView.jt;17099;@STATIC;1.0;I;20;AppKit/CPImageView.jI;15;AppKit/CPMenu.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.ji;22;../CPDate+Formatting.ji;40;../Controllers/MMImagePickerController.ji;40;../Controllers/MMMatchPickerController.ji;43;../DataSources/MMPosterMetadataDataSource.ji;43;../DataSources/MMBannerMetadataDataSource.ji;50;../DataSources/MMBackgroundArtMetadataDataSource.ji;30;../Models/MMLibraryMediaItem.ji;11;HUDButton.ji;12;HUDToolbar.jt;16653;
objj_executeFile("AppKit/CPImageView.j",NO);
objj_executeFile("AppKit/CPMenu.j",NO);
objj_executeFile("AppKit/CPTextField.j",NO);
objj_executeFile("AppKit/CPView.j",NO);
objj_executeFile("../CPDate+Formatting.j",YES);
objj_executeFile("../Controllers/MMImagePickerController.j",YES);
objj_executeFile("../Controllers/MMMatchPickerController.j",YES);
objj_executeFile("../DataSources/MMPosterMetadataDataSource.j",YES);
objj_executeFile("../DataSources/MMBannerMetadataDataSource.j",YES);
objj_executeFile("../DataSources/MMBackgroundArtMetadataDataSource.j",YES);
objj_executeFile("../Models/MMLibraryMediaItem.j",YES);
objj_executeFile("HUDButton.j",YES);
objj_executeFile("HUDToolbar.j",YES);
var _1=objj_allocateClassPair(CPView,"MMMediaItemDetailView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("mediaItem"),new objj_ivar("title"),new objj_ivar("year"),new objj_ivar("tagline"),new objj_ivar("summary"),new objj_ivar("mediaThumbView"),new objj_ivar("_lastUpdatedLabel"),new objj_ivar("_matchPicker"),new objj_ivar("_imagePicker"),new objj_ivar("artOverlay"),new objj_ivar("artOverlayView"),new objj_ivar("_customizeMenu"),new objj_ivar("_toolbar")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("toolbar"),function(_3,_4){
with(_3){
return _toolbar;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_5,_6,_7){
with(_5){
if(_5=objj_msgSendSuper({receiver:_5,super_class:objj_getClass("MMMediaItemDetailView").super_class},"initWithFrame:",_7)){
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
_toolbar=objj_msgSend(objj_msgSend(HUDToolbar,"alloc"),"initWithFrame:",CGRectMake(0,CGRectGetMaxY(_9),CGRectGetWidth(_9),30));
objj_msgSend(_toolbar,"setAutoresizingMask:",CPViewMinYMargin|CPViewWidthSizable);
_lastUpdatedLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_lastUpdatedLabel,"setStringValue:","Last refreshed today");
objj_msgSend(_lastUpdatedLabel,"sizeToFit");
objj_msgSend(_lastUpdatedLabel,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_lastUpdatedLabel,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_lastUpdatedLabel,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",10));
objj_msgSend(_lastUpdatedLabel,"setFrameOrigin:",CGPointMake(10,(CGRectGetHeight(objj_msgSend(_toolbar,"frame"))-CGRectGetHeight(objj_msgSend(_lastUpdatedLabel,"frame")))/2));
objj_msgSend(_toolbar,"addSubview:",_lastUpdatedLabel);
var _a=objj_msgSend(HUDButton,"buttonWithTitle:",CPLocalizedString("Customize","Customize"));
objj_msgSend(_a,"setFrameOrigin:",CGPointMake(CGRectGetWidth(objj_msgSend(_toolbar,"frame"))-5-CGRectGetWidth(objj_msgSend(_a,"frame")),(CGRectGetHeight(objj_msgSend(_toolbar,"frame"))-CGRectGetHeight(objj_msgSend(_a,"frame")))/2));
objj_msgSend(_a,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin|CPViewMinXMargin);
objj_msgSend(_a,"setTarget:",_5);
objj_msgSend(_a,"setAction:",sel_getUid("_customizeWasClicked:"));
objj_msgSend(_toolbar,"addSubview:",_a);
_customizeMenu=objj_msgSend(objj_msgSend(CPMenu,"alloc"),"initWithTitle:","");
objj_msgSend(objj_msgSend(_customizeMenu,"addItemWithTitle:action:keyEquivalent:",CPLocalizedString("Choose Poster","Choose Poster"),sel_getUid("_customizePosterWasClicked:"),nil),"setTarget:",_5);
objj_msgSend(objj_msgSend(_customizeMenu,"addItemWithTitle:action:keyEquivalent:",CPLocalizedString("Choose Banner","Choose Banner"),sel_getUid("_customizeBannerWasClicked:"),nil),"setTarget:",_5);
objj_msgSend(objj_msgSend(_customizeMenu,"addItemWithTitle:action:keyEquivalent:",CPLocalizedString("Choose Background Art","Choose Background Art"),sel_getUid("_customizeBackgroundArtWasClicked:"),nil),"setTarget:",_5);
var _b=objj_msgSend(HUDButton,"buttonWithTitle:",CPLocalizedString("Fix incorrect match","Fix incorrect match"));
objj_msgSend(_b,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_a,"frame"))-5-CGRectGetWidth(objj_msgSend(_b,"frame")),(CGRectGetHeight(objj_msgSend(_toolbar,"frame"))-CGRectGetHeight(objj_msgSend(_b,"frame")))/2));
objj_msgSend(_b,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin|CPViewMinXMargin);
objj_msgSend(_b,"setTarget:",_5);
objj_msgSend(_b,"setAction:",sel_getUid("_fixIncorrectMatchWasClicked:"));
objj_msgSend(_toolbar,"addSubview:",_b);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_5,sel_getUid("recordWasUpdated:"),MMDataSourceDidUpdateRecord,nil);
}
return _5;
}
}),new objj_method(sel_getUid("_customizeWasClicked:"),function(_c,_d,_e){
with(_c){
objj_msgSend(_customizeMenu,"popUpMenuPositioningItem:atLocation:inView:callback:",objj_msgSend(objj_msgSend(_customizeMenu,"itemArray"),"objectAtIndex:",0),CGPointMake(0,0),_e,nil);
}
}),new objj_method(sel_getUid("_customizePosterWasClicked:"),function(_f,_10,_11){
with(_f){
_imagePicker=objj_msgSend(MMImagePickerController,"presentMediaItem:inView:itemSize:withToolbarView:dataSource:",mediaItem,_f,CGSizeMake(128,150),objj_msgSend(_f,"superview"),objj_msgSend(MMPosterMetadataDataSource,"sharedDataSource"));
}
}),new objj_method(sel_getUid("_customizeBannerWasClicked:"),function(_12,_13,_14){
with(_12){
_imagePicker=objj_msgSend(MMImagePickerController,"presentMediaItem:inView:itemSize:withToolbarView:dataSource:",mediaItem,_12,CGSizeMake(150,75),objj_msgSend(_12,"superview"),objj_msgSend(MMBannerMetadataDataSource,"sharedDataSource"));
}
}),new objj_method(sel_getUid("_customizeBackgroundArtWasClicked:"),function(_15,_16,_17){
with(_15){
_imagePicker=objj_msgSend(MMImagePickerController,"presentMediaItem:inView:itemSize:withToolbarView:dataSource:",mediaItem,_15,CGSizeMake(150,75),objj_msgSend(_15,"superview"),objj_msgSend(MMBackgroundArtMetadataDataSource,"sharedDataSource"));
}
}),new objj_method(sel_getUid("removeFromSuperview"),function(_18,_19){
with(_18){
objj_msgSendSuper({receiver:_18,super_class:objj_getClass("MMMediaItemDetailView").super_class},"removeFromSuperview");
objj_msgSend(_matchPicker,"dismissSheet"),_matchPicker=nil;
objj_msgSend(_imagePicker,"dismissPicker"),_imagePicker=nil;
}
}),new objj_method(sel_getUid("_fixIncorrectMatchWasClicked:"),function(_1a,_1b,_1c){
with(_1a){
_matchPicker=objj_msgSend(objj_msgSend(MMMatchPickerController,"alloc"),"initWithDelegate:",_1a);
objj_msgSend(_matchPicker,"setMediaItem:",mediaItem);
objj_msgSend(_matchPicker,"presentSheetInWindow:",objj_msgSend(_1a,"window"));
}
}),new objj_method(sel_getUid("picker:didSelectSearchResult:"),function(_1d,_1e,_1f,_20){
with(_1d){
if(_1f!==_matchPicker){
return;
}
CPLog.info("[%@ -picker:didSelectSearchResult:] user chose %@ as the correct match for %@",objj_msgSend(_1d,"class"),_20,mediaItem);
objj_msgSend(_matchPicker,"dismissSheet"),_matchPicker=nil;
objj_msgSend(objj_msgSend(MMMediaMatchesDataSource,"sharedDataSource"),"selectMatch:forMediaItem:",_20,mediaItem);
}
}),new objj_method(sel_getUid("pickerDidCancel:"),function(_21,_22,_23){
with(_21){
objj_msgSend(_matchPicker,"dismissSheet"),_matchPicker=nil;
}
}),new objj_method(sel_getUid("drawLayer:inContext:"),function(_24,_25,_26,_27){
with(_24){
var _28=5,_29=objj_msgSend(_24,"bounds");
CGContextBeginPath(_27);
CGContextSetFillColor(_27,objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",1,0.6));
CGContextMoveToPoint(_27,CGRectGetMinX(_29),CGRectGetMinY(_29));
CGContextAddLineToPoint(_27,CGRectGetMaxX(_29),CGRectGetMinY(_29));
CGContextAddLineToPoint(_27,CGRectGetMaxX(_29),CGRectGetMaxY(_29));
CGContextAddLineToPoint(_27,CGRectGetMinX(_29),CGRectGetMaxY(_29));
CGContextAddLineToPoint(_27,CGRectGetMinX(_29),CGRectGetMinY(_29));
CGContextClosePath(_27);
CGContextFillPath(_27);
var _2a;
var _2b;
var _2c=2;
var _2d=[0,0.5];
var _2e=[237/255,237/255,237/255,0,237/255,237/255,237/255,1];
_2b=CGColorSpaceCreateDeviceRGB();
_2a=CGGradientCreateWithColorComponents(_2b,_2e,_2d,_2c);
var _2f=CGPointMake(0,CGRectGetMidY(_29)),_30=CGPointMake(1,CGRectGetMaxY(_29));
CGContextClip(_27);
CGContextDrawLinearGradient(_27,_2a,_2f,_30,0);
}
}),new objj_method(sel_getUid("mediaItem"),function(_31,_32){
with(_31){
return mediaItem;
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_33,_34){
with(_33){
objj_msgSend(_33,"layoutArtView");
objj_msgSendSuper({receiver:_33,super_class:objj_getClass("MMMediaItemDetailView").super_class},"layoutSubviews");
}
}),new objj_method(sel_getUid("layoutArtView"),function(_35,_36){
with(_35){
if(!objj_msgSend(mediaArtView,"image")){
return;
}
var _37=objj_msgSend(objj_msgSend(mediaArtView,"image"),"size"),_38=objj_msgSend(_35,"bounds"),_39=CGRectGetWidth(_38),_3a=CGRectGetHeight(_38);
if(!_37||(_37.width==-1&&_37.height==-1)){
return;
}
var _3b=_37.width/_37.height,_3c=_39/_3a;
if(_3c>_3b){
var _3d=ROUND(_37.height*_39/_37.width),_3e=_3d-_3a;
objj_msgSend(mediaArtView,"setFrame:",CGRectMake(0,-ROUND(_3e/2),_39,_3d));
}else{
var _3f=ROUND(_37.width*_3a/_37.height),_40=_3f-_39;
objj_msgSend(mediaArtView,"setFrame:",CGRectMake(-ROUND(_40/2),0,_3f,_3a));
}
}
}),new objj_method(sel_getUid("layoutThumbView"),function(_41,_42){
with(_41){
if(!objj_msgSend(mediaThumbView,"image")){
return;
}
var _43=objj_msgSend(objj_msgSend(mediaThumbView,"image"),"size"),_44=CGRectGetWidth(objj_msgSend(mediaThumbView,"bounds")),_45=_43.height*_44/_43.width;
objj_msgSend(mediaThumbView,"setFrameSize:",CGSizeMake(_44,_45));
}
}),new objj_method(sel_getUid("setMediaItem:"),function(_46,_47,_48){
with(_46){
if(objj_msgSend(mediaItem,"isEqual:",_48)){
return;
}
var _49=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(mediaItem){
objj_msgSend(_49,"removeObserver:name:object:",_46,CPImageDidLoadNotification,objj_msgSend(mediaItem,"artImage"));
objj_msgSend(_49,"removeObserver:name:object:",_46,CPImageDidLoadNotification,objj_msgSend(mediaItem,"thumbImage"));
}
mediaItem=_48;
objj_msgSend(_46,"refreshView");
}
}),new objj_method(sel_getUid("refreshView"),function(_4a,_4b){
with(_4a){
var _4c=objj_msgSend(CPNotificationCenter,"defaultCenter");
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
var _4d=objj_msgSend(objj_msgSend(mediaItem,"thumbImage"),"constrainedToSize:",CGSizeMake(512,512));
objj_msgSend(mediaThumbView,"setImage:",_4d||objj_msgSend(MMLibraryMediaItem,"blankThumbImage"));
if(objj_msgSend(_4d,"loadStatus")==CPImageLoadStatusCompleted){
objj_msgSend(_4a,"layoutThumbView");
}else{
objj_msgSend(_4c,"addObserver:selector:name:object:",_4a,sel_getUid("thumbDidLoad:"),CPImageDidLoadNotification,_4d);
objj_msgSend(_4d,"load");
}
var _4e=objj_msgSend(objj_msgSend(mediaItem,"artImage"),"constrainedToSize:",CGSizeMake(1280,720));
objj_msgSend(mediaArtView,"setImage:",_4e);
if(objj_msgSend(_4e,"loadStatus")==CPImageLoadStatusCompleted){
objj_msgSend(_4a,"layoutArtView");
}else{
objj_msgSend(_4c,"addObserver:selector:name:object:",_4a,sel_getUid("artDidLoad:"),CPImageDidLoadNotification,_4e);
objj_msgSend(_4e,"load");
}
var _4f=objj_msgSend(mediaItem,"updatedAt");
if(_4f){
objj_msgSend(_lastUpdatedLabel,"setStringValue:",objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Last refreshed %@ at %@","Status label for media items"),objj_msgSend(_4f,"relativeDate"),objj_msgSend(_4f,"shortLocalTime")));
objj_msgSend(_lastUpdatedLabel,"sizeToFit");
objj_msgSend(_lastUpdatedLabel,"setFrameOrigin:",CPPointMake(CGRectGetMinX(objj_msgSend(_lastUpdatedLabel,"frame")),(CGRectGetHeight(objj_msgSend(objj_msgSend(_lastUpdatedLabel,"superview"),"frame"))-CGRectGetHeight(objj_msgSend(_lastUpdatedLabel,"frame")))/2));
}else{
objj_msgSend(_lastUpdatedLabel,"setStringValue:","");
}
}
}),new objj_method(sel_getUid("artDidLoad:"),function(_50,_51,_52){
with(_50){
objj_msgSend(_50,"layoutArtView");
}
}),new objj_method(sel_getUid("thumbDidLoad:"),function(_53,_54,_55){
with(_53){
objj_msgSend(_53,"layoutThumbView");
}
}),new objj_method(sel_getUid("recordWasUpdated:"),function(_56,_57,_58){
with(_56){
var _59=objj_msgSend(objj_msgSend(_58,"userInfo"),"objectForKey:","record");
var _5a=objj_msgSend(objj_msgSend(_58,"userInfo"),"objectForKey:","contextInfo");
if(objj_msgSend(_59,"isEqual:",mediaItem)){
mediaItem=_59;
}else{
if(objj_msgSend(_5a,"isEqual:",mediaItem)){
mediaItem=_5a;
}else{
return;
}
}
objj_msgSend(_56,"refreshView");
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
p;30;Views/MMSectionSettingsSheet.jt;27954;@STATIC;1.0;I;15;AppKit/CPView.ji;16;MMFileListView.ji;34;../DataSources/MMAgentDataSource.jt;27854;
objj_executeFile("AppKit/CPView.j",NO);
objj_executeFile("MMFileListView.j",YES);
objj_executeFile("../DataSources/MMAgentDataSource.j",YES);
MMSectionSettingsSheetReturnSuccess=0;
MMSectionSettingsSheetReturnCancel=1;
var _1=objj_msgSend(CPArray,"arrayWithObjects:","movie","show","artist");
var _2;
var _3=objj_allocateClassPair(CPView,"MMSectionSettingsSheet"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_settingsPanel"),new objj_ivar("_sectionPopUp"),new objj_ivar("_sectionNameField"),new objj_ivar("_mediaScannerPopUp"),new objj_ivar("_agentPopUp"),new objj_ivar("_languagePopUp"),new objj_ivar("_sourceFolderView"),new objj_ivar("_confirmButton"),new objj_ivar("_cancelButton"),new objj_ivar("_didEndSelector"),new objj_ivar("_modalDelegate"),new objj_ivar("_librarySectionsDataSource"),new objj_ivar("_selectedSectionTypeIndex"),new objj_ivar("_selectedAgentIndex"),new objj_ivar("_agentDataSource"),new objj_ivar("_agents")]);
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
objj_msgSend(_21,"setAction:",sel_getUid("_addSourceFolder"));
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
}),new objj_method(sel_getUid("_addSourceFolder"),function(_82,_83){
with(_82){
var _84=prompt(CPLocalizedString("Path to your media folder:","Path to your media folder:"));
if(_84){
objj_msgSend(_sourceFolderView,"addFileWithPath:",_84);
}
}
}),new objj_method(sel_getUid("_removeSelectedSourceFolders"),function(_85,_86){
with(_85){
objj_msgSend(_sourceFolderView,"removeFilesAtIndexes:",objj_msgSend(_sourceFolderView,"selectionIndexes"));
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("initialize"),function(_87,_88){
with(_87){
_2={movie:{namePlaceholder:CPLocalizedString("My Movies","Movie section name placeholder"),scanners:objj_msgSend(CPArray,"arrayWithObjects:","Plex Movie Scanner")},show:{namePlaceholder:CPLocalizedString("My TV Shows","TV Shows section name placeholder"),scanners:objj_msgSend(CPArray,"arrayWithObjects:","Plex Series Scanner")},artist:{namePlaceholder:CPLocalizedString("My Music","Music section name placeholder"),scanners:objj_msgSend(CPArray,"arrayWithObjects:","Plex Music Scanner")}};
}
}),new objj_method(sel_getUid("_menuItemWithTitle:tag:"),function(_89,_8a,_8b,tag){
with(_89){
var _8c=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",_8b,nil,nil);
objj_msgSend(_8c,"setTag:",tag);
return _8c;
}
})]);
p;23;Views/MMSelectionView.jt;7693;@STATIC;1.0;i;13;MMImageView.jt;7656;
objj_executeFile("MMImageView.j",YES);
var _1=4;
var _2=objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",225/255,170/255,84/255,1);
var _3=objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",121/255,69/255,30/255,1);
var _4=objj_allocateClassPair(CPView,"MMSelectionView"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_selected"),new objj_ivar("_selectionBorderLayer"),new objj_ivar("_selectionBorderRadius"),new objj_ivar("_selectableView"),new objj_ivar("_autoresizeToFitSelectableView"),new objj_ivar("_originalHasShadowValue"),new objj_ivar("_gradientStartColor"),new objj_ivar("_gradientEndColor")]);
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("isSelected"),function(_6,_7){
with(_6){
return _selected;
}
}),new objj_method(sel_getUid("setSelected:"),function(_8,_9,_a){
with(_8){
_selected=_a;
}
}),new objj_method(sel_getUid("selectionBorderRadius"),function(_b,_c){
with(_b){
return _selectionBorderRadius;
}
}),new objj_method(sel_getUid("setSelectionBorderRadius:"),function(_d,_e,_f){
with(_d){
_selectionBorderRadius=_f;
}
}),new objj_method(sel_getUid("selectableView"),function(_10,_11){
with(_10){
return _selectableView;
}
}),new objj_method(sel_getUid("setSelectableView:"),function(_12,_13,_14){
with(_12){
_selectableView=_14;
}
}),new objj_method(sel_getUid("shouldAutoresizeToFitSelectableView"),function(_15,_16){
with(_15){
return _autoresizeToFitSelectableView;
}
}),new objj_method(sel_getUid("setAutoresizesToFitSelectableView:"),function(_17,_18,_19){
with(_17){
_autoresizeToFitSelectableView=_19;
}
}),new objj_method(sel_getUid("gradientStartColor"),function(_1a,_1b){
with(_1a){
return _gradientStartColor;
}
}),new objj_method(sel_getUid("setGradientStartColor:"),function(_1c,_1d,_1e){
with(_1c){
_gradientStartColor=_1e;
}
}),new objj_method(sel_getUid("gradientEndColor"),function(_1f,_20){
with(_1f){
return _gradientEndColor;
}
}),new objj_method(sel_getUid("setGradientEndColor:"),function(_21,_22,_23){
with(_21){
_gradientEndColor=_23;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_24,_25,_26){
with(_24){
if(_24=objj_msgSend(_24,"initWithFrame:borderRadius:",_26,_1)){
return _24;
}
}
}),new objj_method(sel_getUid("initWithFrame:borderRadius:"),function(_27,_28,_29,_2a){
with(_27){
if(_27=objj_msgSendSuper({receiver:_27,super_class:objj_getClass("MMSelectionView").super_class},"initWithFrame:",_29)){
_selected=NO;
_selectionBorderRadius=_2a;
_gradientStartColor=_2;
_gradientEndColor=_3;
_autoresizeToFitSelectableView=YES;
}
return _27;
}
}),new objj_method(sel_getUid("isSelected"),function(_2b,_2c){
with(_2b){
return _selected;
}
}),new objj_method(sel_getUid("setSelected:"),function(_2d,_2e,_2f){
with(_2d){
if(_selected==_2f){
return;
}
_selected=_2f;
if(_2f&&!_selectionBorderLayer){
_selectionBorderLayer=objj_msgSend(CALayer,"layer");
objj_msgSend(_selectionBorderLayer,"setDelegate:",_2d);
objj_msgSend(_2d,"setLayer:",_selectionBorderLayer);
}
objj_msgSend(_2d,"setHidden:",!_2f);
if(objj_msgSend(_selectableView,"isKindOfClass:",CPImageView)){
objj_msgSend(_selectableView,"setHasShadow:",_2f?NO:_originalHasShadowValue);
}
}
}),new objj_method(sel_getUid("shouldAutoresizeToFitSelectableView"),function(_30,_31){
with(_30){
return _autoresizeToFitSelectableView;
}
}),new objj_method(sel_getUid("setAutoresizesToFitSelectableView:"),function(_32,_33,_34){
with(_32){
if(_34==_autoresizeToFitSelectableView){
return;
}
if(!_34&&_selectableView){
objj_msgSend(_32,"_stopObservingSelectableViewFrameChanges");
}else{
if(_34&&_selectableView){
objj_msgSend(_32,"_startObservingSelectableViewFrameChanges");
}
}
}
}),new objj_method(sel_getUid("setSelectableView:"),function(_35,_36,_37){
with(_35){
if(objj_msgSend(_selectableView,"isEqual:",_37)){
return;
}
if(_selectableView&&_autoresizeToFitSelectableView){
objj_msgSend(_35,"_stopObservingSelectableViewFrameChanges");
}
_selectableView=_37;
if(_selectableView&&_autoresizeToFitSelectableView){
objj_msgSend(_35,"_startObservingSelectableViewFrameChanges");
}
if(objj_msgSend(_selectableView,"isKindOfClass:",CPImageView)){
_originalHasShadowValue=objj_msgSend(_selectableView,"hasShadow");
}
}
}),new objj_method(sel_getUid("_startObservingSelectableViewFrameChanges"),function(_38,_39){
with(_38){
if(objj_msgSend(_selectableView,"isKindOfClass:",MMImageView)){
objj_msgSend(_38,"bind:toObject:withKeyPath:options:","imageRect",_selectableView,"imageRect",nil);
}else{
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_38,sel_getUid("_selectableViewFrameDidChange:"),CPViewFrameDidChangeNotification,_selectableView);
objj_msgSend(_selectableView,"setPostsFrameChangedNotifications:",YES);
}
}
}),new objj_method(sel_getUid("_stopObservingSelectableViewFrameChanges"),function(_3a,_3b){
with(_3a){
if(objj_msgSend(_selectableView,"isKindOfClass:",MMImageView)){
objj_msgSend(_3a,"unbind:","imageRect");
}else{
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_3a,CPViewFrameDidChangeNotification,_selectableView);
objj_msgSend(_selectableView,"setPostsFrameChangedNotifications:",NO);
}
}
}),new objj_method(sel_getUid("setImageRect:"),function(_3c,_3d,_3e){
with(_3c){
objj_msgSend(_3c,"_selectableViewFrameDidChange:",nil);
}
}),new objj_method(sel_getUid("_selectableViewFrameDidChange:"),function(_3f,_40,_41){
with(_3f){
objj_msgSend(_3f,"setFrame:",objj_msgSend(objj_msgSend(_3f,"class"),"containerFrameForSelectableView:selectionBorderRadius:",_selectableView,_selectionBorderRadius));
}
}),new objj_method(sel_getUid("drawLayer:inContext:"),function(_42,_43,_44,_45){
with(_42){
var _46=_selectionBorderRadius,_47=objj_msgSend(_42,"bounds");
CGContextSetFillColor(_45,_gradientStartColor);
CGContextFillRoundedRectangleInRect(_45,_47,_46,YES,YES,YES,YES);
if(!CPFeatureIsCompatible(CPHTMLCanvasFeature)){
return;
}
var _48;
var _49;
var _4a=2;
var _4b=[0,0.5];
var _4c=[objj_msgSend(_gradientStartColor,"redComponent"),objj_msgSend(_gradientStartColor,"greenComponent"),objj_msgSend(_gradientStartColor,"blueComponent"),objj_msgSend(_gradientStartColor,"alphaComponent"),objj_msgSend(_gradientEndColor,"redComponent"),objj_msgSend(_gradientEndColor,"greenComponent"),objj_msgSend(_gradientEndColor,"blueComponent"),objj_msgSend(_gradientEndColor,"alphaComponent")];
_49=CGColorSpaceCreateDeviceRGB();
_48=CGGradientCreateWithColorComponents(_49,_4c,_4b,_4a);
var _4d=CGPointMake(0,CGRectGetMinY(_47)),_4e=CGPointMake(1,CGRectGetMaxY(_47));
CGContextClip(_45);
CGContextDrawLinearGradient(_45,_48,_4d,_4e,0);
}
})]);
class_addMethods(_5,[new objj_method(sel_getUid("selectionViewForView:"),function(_4f,_50,_51){
with(_4f){
return objj_msgSend(_4f,"selectionViewForView:selectionBorderRadius:",_51,_1);
}
}),new objj_method(sel_getUid("selectionViewForView:selectionBorderRadius:"),function(_52,_53,_54,_55){
with(_52){
var _56=objj_msgSend(_52,"containerFrameForSelectableView:selectionBorderRadius:",_54,_55),_57=objj_msgSend(objj_msgSend(_52,"alloc"),"initWithFrame:borderRadius:",_56,_55);
objj_msgSend(_57,"setSelectableView:",_54);
objj_msgSend(objj_msgSend(_54,"superview"),"addSubview:positioned:relativeTo:",_57,CPWindowBelow,_54);
return _57;
}
}),new objj_method(sel_getUid("containerFrameForSelectableView:selectionBorderRadius:"),function(_58,_59,_5a,_5b){
with(_58){
var _5c;
if(objj_msgSend(_5a,"isKindOfClass:",CPImageView)){
if(_5c=objj_msgSend(_5a,"imageRect")){
_5c=CGRectOffset(_5c,CGRectGetMinX(objj_msgSend(_5a,"frame")),CGRectGetMinY(objj_msgSend(_5a,"frame")));
}
}
if(!_5c){
_5c=objj_msgSend(_5a,"frame");
}
_5c=CGRectInset(_5c,-_5b,-_5b);
return _5c;
}
})]);
p;25;Views/MMViewWithToolbar.jt;7547;@STATIC;1.0;I;15;AppKit/CPView.jI;22;LPKit/LPAnchorButton.jI;28;LPKit/LPLocationController.ji;12;HUDToolbar.jt;7431;
objj_executeFile("AppKit/CPView.j",NO);
objj_executeFile("LPKit/LPAnchorButton.j",NO);
objj_executeFile("LPKit/LPLocationController.j",NO);
objj_executeFile("HUDToolbar.j",YES);
var _1=objj_allocateClassPair(CPView,"MMViewWithToolbar"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_toolbarHeight"),new objj_ivar("_navBarHeight"),new objj_ivar("_contentStack"),new objj_ivar("_toolbarStack"),new objj_ivar("_navBar"),new objj_ivar("_dataSource")]);
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
_navBar=objj_msgSend(objj_msgSend(HUDToolbar,"alloc"),"initWithFrame:",objj_msgSend(_12,"navBarRect"));
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
}),new objj_method(sel_getUid("_rebuildNavBar"),function(_46,_47){
with(_46){
var _48=objj_msgSend(_navBar,"subviews"),_49=objj_msgSend(CPFont,"boldSystemFontOfSize:",12),_4a=objj_msgSend("  ","sizeWithFont:",_49).width,_4b=15;
for(var i=0,_4c=objj_msgSend(_contentStack,"count");i<_4c;i++){
var _4d;
if(i<objj_msgSend(_48,"count")){
_4d=objj_msgSend(_48,"objectAtIndex:",i);
}else{
_4d=objj_msgSend(objj_msgSend(LPAnchorButton,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_4d,"setFont:",_49);
objj_msgSend(_4d,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_48,"addObject:",_4d);
_4d._MMViewWithToolbar_index=i;
objj_msgSend(_4d,"setTarget:",_46);
objj_msgSend(_4d,"setAction:",sel_getUid("_navBarButtonClicked:"));
}
var _4e=objj_msgSend(objj_msgSend(_46,"dataSource"),"titleForContentView:inViewWithToolbar:",_contentStack[i],_46);
objj_msgSend(_4d,"setTitle:",_4e+(i+1<_4c?"  »":""));
objj_msgSend(_4d,"sizeToFit");
objj_msgSend(_4d,"setFrameOrigin:",CGPointMake(_4b,(CGRectGetHeight(objj_msgSend(_navBar,"frame"))-CGRectGetHeight(objj_msgSend(_4d,"frame")))/2));
_4b=CGRectGetMaxX(objj_msgSend(_4d,"frame"))+_4a;
objj_msgSend(_4d,"setHidden:",NO);
}
for(var i=objj_msgSend(_contentStack,"count");i<objj_msgSend(_48,"count");i++){
objj_msgSend(_48[i],"setHidden:",YES);
}
objj_msgSend(_navBar,"setSubviews:",_48);
}
}),new objj_method(sel_getUid("_navBarButtonClicked:"),function(_4f,_50,_51){
with(_4f){
var _52=_51._MMViewWithToolbar_index,_53=_contentStack[_52],_54=objj_msgSend(objj_msgSend(_4f,"dataSource"),"locationHashForContentView:inViewWithToolbar:",_53,_4f);
if(_54){
objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"setLocation:",_54);
}
}
})]);
e;