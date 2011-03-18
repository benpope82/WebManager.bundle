@STATIC;1.0;p;6;main.jt;529;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/AppKit.ji;10;CPBundle.ji;20;CPView+Transitions.ji;18;CPView+sizeToFit.ji;21;CPNumber+Formatting.ji;15;AppController.jt;354;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("AppKit/AppKit.j",NO);
objj_executeFile("CPBundle.j",YES);
objj_executeFile("CPView+Transitions.j",YES);
objj_executeFile("CPView+sizeToFit.j",YES);
objj_executeFile("CPNumber+Formatting.j",YES);
objj_executeFile("AppController.j",YES);
main=function(_1,_2){
CPApplicationMain(_1,_2);
};
p;10;CPBundle.jt;2970;@STATIC;1.0;I;22;AppKit/CPApplication.jt;2924;
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
var _21=window.location.search,_22=_21&&_21.replace(/^.*lang=([^&]+)/i,"$1");
if(objj_msgSend(_1e,"containsObject:",_22)){
return _22;
}
if(objj_msgSend(_1e,"containsObject:",_22.substring(0,2))){
return _22.substring(0,2);
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
p;20;CPView+Transitions.jt;2889;@STATIC;1.0;I;15;AppKit/CPView.jI;20;AppKit/CPAnimation.jt;2825;
objj_executeFile("AppKit/CPView.j",NO);
objj_executeFile("AppKit/CPAnimation.j",NO);
CPViewWillTransitionToSubview="CPViewWillTransitionToSubview";
CPViewDidTransitionToSubview="CPViewDidTransitionToSubview";
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
var _7=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_6,"toSubview",_5,"fromSubview");
objj_msgSend(_3,"willTransitionFromSubview:toSubview:",_5,_6);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPViewWillTransitionToSubview,_3,_7);
var _8=objj_msgSend(_3,"window"),_9=CGRectGetWidth(objj_msgSend(_6,"frame"))-CGRectGetWidth(objj_msgSend(_5,"frame")),_a=CGRectGetHeight(objj_msgSend(_6,"frame"))-CGRectGetHeight(objj_msgSend(_5,"frame")),_b=objj_msgSend(_8,"frame").size,_c=CGSizeMake(_b.width+_9,_b.height+_a),_d=objj_msgSend(_8,"frame"),_e=CGRectMake(CGRectGetMidX(_d)-_c.width/2,CGRectGetMinY(_d),_c.width,_c.height),_f=objj_msgSend(_8,"animationResizeTime:",_e);
var _10=objj_msgSend(objj_msgSend(CPViewAnimation,"alloc"),"initWithDuration:animationCurve:",_f,CPAnimationLinear);
objj_msgSend(_10,"setViewAnimations:",objj_msgSend(CPArray,"arrayWithObjects:",objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_5,CPViewAnimationTargetKey,objj_msgSend(_5,"frame"),CPViewAnimationStartFrameKey,objj_msgSend(_5,"frame"),CPViewAnimationEndFrameKey,CPViewAnimationFadeOutEffect,CPViewAnimationEffectKey),objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_6,CPViewAnimationTargetKey,objj_msgSend(_6,"frame"),CPViewAnimationStartFrameKey,objj_msgSend(_6,"frame"),CPViewAnimationEndFrameKey,CPViewAnimationFadeInEffect,CPViewAnimationEffectKey)));
objj_msgSend(_10,"startAnimation");
objj_msgSend(_8,"setFrame:display:animate:",_e,YES,YES);
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",_f,_3,sel_getUid("_didTransitionWithTimer:"),_7,NO);
}
}),new objj_method(sel_getUid("_didTransitionWithTimer:"),function(_11,_12,_13){
with(_11){
var _14=objj_msgSend(_13,"userInfo");
objj_msgSend(_11,"didTransitionFromSubview:toSubview:",objj_msgSend(_14,"objectForKey:","fromSubview"),objj_msgSend(_14,"objectForKey:","toSubview"));
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPViewDidTransitionToSubview,_11,_14);
}
}),new objj_method(sel_getUid("willTransitionFromSubview:toSubview:"),function(_15,_16,_17,_18){
with(_15){
}
}),new objj_method(sel_getUid("didTransitionFromSubview:toSubview:"),function(_19,_1a,_1b,_1c){
with(_19){
}
})]);
p;18;CPView+sizeToFit.jt;1755;@STATIC;1.0;I;15;AppKit/CPView.jt;1716;
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
if(objj_msgSend(_c,"isHidden")){
continue;
}
if(_d&CPViewMinYMargin){
var _e=CGRectIntersection(_9,objj_msgSend(_c,"frame"));
if(!CGRectIsEmpty(_e)){
_a.height+=CGRectGetHeight(_e);
}else{
_a.height+=CGRectGetHeight(objj_msgSend(_c,"frame"));
}
}else{
if(_d&CPViewMinXMargin){
var _e=CGRectIntersection(_9,objj_msgSend(_c,"frame"));
if(!CGRectIsEmpty(_e)){
_a.width+=CGRectGetWidth(_e);
}else{
_a.width+=CGRectGetWidth(objj_msgSend(_c,"frame"));
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
p;21;CPNumber+Formatting.jt;1212;@STATIC;1.0;t;1193;
var _1=1000;
var _2=objj_getClass("CPNumber");
if(!_2){
throw new SyntaxError("*** Could not find definition for class \"CPNumber\"");
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("timeString"),function(_4,_5){
with(_4){
var _6=_4,_7=0,_8=0;
_8=FLOOR(_6/3600);
_6-=_8*3600;
_7=FLOOR(_6/60);
_6-=_7*60;
if(_8==0){
return objj_msgSend(CPString,"stringWithFormat:","%d:%02d",_7,_6);
}
return objj_msgSend(CPString,"stringWithFormat:","%d:%02d:%02d",_8,_7,_6);
}
}),new objj_method(sel_getUid("filesizeString"),function(_9,_a){
with(_9){
var _b=["B","KB","MB","GB","TB","PB"],_c=0,_d=_9,_e=nil;
if(_9>0){
_c=FLOOR(Math.log(_9)/Math.log(_1));
_d=FLOOR(10*_9/POW(_1,_c))/10;
}
_e=_b[_c]||objj_msgSend(_b,"lastObject");
return objj_msgSend(CPString,"stringWithFormat:","%@ %@",objj_msgSend(_d,"delimitedString"),_e);
}
}),new objj_method(sel_getUid("delimitedString"),function(_f,_10){
with(_f){
var _11=[],_12=_f;
while(_12>=1000){
var _13=FLOOR(_12/1000),_14=_12-(_13*1000);
_11.unshift(objj_msgSend(CPString,"stringWithFormat:","%03d",_14));
_12=_13;
}
if(_12||!objj_msgSend(_11,"count")){
_11.unshift(_12);
}
return objj_msgSend(_11,"componentsJoinedByString:",",");
}
})]);
p;15;AppController.jt;4026;@STATIC;1.0;I;21;Foundation/CPObject.ji;33;Controllers/MMManagerController.jt;3943;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("Controllers/MMManagerController.j",YES);
var _1=objj_allocateClassPair(CPObject,"AppController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("window"),new objj_ivar("managerController")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("applicationDidFinishLaunching:"),function(_3,_4,_5){
with(_3){
CPLog.trace("[%@ -applicationDidFinishLaunching:] START",objj_msgSend(_3,"class"));
window=objj_msgSend(objj_msgSend(CPWindow,"alloc"),"initWithContentRect:styleMask:",CGRectMakeZero(),CPBorderlessBridgeWindowMask);
objj_msgSend(objj_msgSend(window,"contentView"),"setBackgroundColor:",objj_msgSend(CPColor,"colorWithWhite:alpha:",34/255,1));
managerController=objj_msgSend(objj_msgSend(MMManagerController,"alloc"),"init");
objj_msgSend(objj_msgSend(managerController,"view"),"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(objj_msgSend(managerController,"view"),"setFrame:",objj_msgSend(objj_msgSend(window,"contentView"),"bounds"));
objj_msgSend(objj_msgSend(window,"contentView"),"addSubview:",objj_msgSend(managerController,"view"));
objj_msgSend(window,"orderFront:",_3);
if(CPBrowserIsEngine(CPInternetExplorerBrowserEngine)&&(InternetExplorerVersion<9)&&(objj_msgSend(objj_msgSend(objj_msgSend(CPCookie,"alloc"),"initWithName:","suppress-ie-warning"),"value")!="YES")){
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",4,_3,sel_getUid("issueInternetExplorerWarning"),nil,NO);
}
CPLog.trace("[%@ -applicationDidFinishLaunching:] END",objj_msgSend(_3,"class"));
}
}),new objj_method(sel_getUid("issueInternetExplorerWarning"),function(_6,_7){
with(_6){
var _8=objj_msgSend(MMInternetExplorerNotificationBar,"installBarWithTitle:aboveView:animated:",CPLocalizedString("This site does not support Internet Explorer. For the best experience, click here to install Google Chrome Frame.","Warning for IE users"),objj_msgSend(managerController,"view"),YES);
objj_msgSend(_8,"setTarget:",_6);
objj_msgSend(_8,"setAction:",sel_getUid("installGoogleChromeFrame:"));
objj_msgSend(_8,"setDismissAction:",sel_getUid("dismissInternetExplorerWarning:"));
}
}),new objj_method(sel_getUid("installGoogleChromeFrame:"),function(_9,_a,_b){
with(_9){
objj_msgSend(_9,"hideInternetExplorerWarning:",_b);
CFInstall.check({mode:"overlay",destination:objj_msgSend(objj_msgSend(PMSURL,"URLWithPath:","/manage"),"absoluteString")});
}
}),new objj_method(sel_getUid("dismissInternetExplorerWarning:"),function(_c,_d,_e){
with(_c){
objj_msgSend(_c,"hideInternetExplorerWarning:",_e);
objj_msgSend(objj_msgSend(objj_msgSend(CPCookie,"alloc"),"initWithName:","suppress-ie-warning"),"setValue:expires:domain:","YES",objj_msgSend(CPDate,"distantFuture"),nil);
}
}),new objj_method(sel_getUid("hideInternetExplorerWarning:"),function(_f,_10,_11){
with(_f){
objj_msgSend(_11,"removeFromSuperview");
objj_msgSend(objj_msgSend(managerController,"view"),"setFrame:",objj_msgSend(objj_msgSend(window,"contentView"),"bounds"));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("notifyUserOfError:withTitle:"),function(_12,_13,_14,_15){
with(_12){
var _16=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(_16,"setAlertStyle:",CPCriticalAlertStyle);
objj_msgSend(_16,"setTitle:",_15);
objj_msgSend(_16,"setMessageText:",_14);
objj_msgSend(_16,"runModal");
}
}),new objj_method(sel_getUid("notifyUserOfConnectionError:"),function(_17,_18,_19){
with(_17){
objj_msgSend(_17,"notifyUserOfError:withTitle:",objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Connecting to Plex Media Server failed with this error: %@.\n\nAre you sure it's running?","Error message for when we cannot connect to PMS or when the response is invalid"),_19),CPLocalizedString("Unable to connect to Plex Media Server","Error title for when we cannot connect to PMS or when the response is invalid"));
}
})]);
p;33;Controllers/MMManagerController.jt;28014;@STATIC;1.0;I;25;AppKit/CPViewController.jI;27;AppKit/CPSegmentedControl.jI;28;LPKit/LPLocationController.ji;30;../CPCheckBox+ObjectValueFix.ji;32;../CPURLConnection+XMLResponse.ji;34;../Controllers/MMAlbumController.ji;48;../Controllers/MMLibrarySectionsViewController.ji;34;../Controllers/MMPrefsController.ji;35;../Controllers/MMSeasonController.ji;34;../DataSources/MMAgentDataSource.ji;41;../DataSources/MMLibraryMediaDataSource.ji;41;../DataSources/MMMetadataItemDataSource.ji;44;../DataSources/MMLibrarySectionsDataSource.ji;44;../DataSources/MMLibraryTimelineDataSource.ji;26;../Models/LanguageConfig.ji;26;../Models/MMMetadataItem.ji;27;../Models/PMSCapabilities.ji;36;../Controllers/MMContentController.ji;55;../Controllers/MMMetadataItemCollectionViewController.ji;41;../Controllers/MMMetadataItemController.ji;30;../Views/MMActionPopUpButton.ji;27;../Views/MMCollectionView.ji;22;../Views/MMContainer.ji;25;../Views/MMFirstRunView.ji;44;../Views/MMInternetExplorerNotificationBar.ji;35;../Views/MMMetadataItemDetailView.ji;39;../Views/MMMetadataItemCollectionView.ji;23;../Views/MMScrollView.ji;33;../Views/MMSectionSettingsSheet.ji;29;../Views/MMPreferencesPanel.ji;20;../Views/MMToolbar.jt;26804;
objj_executeFile("AppKit/CPViewController.j",NO);
objj_executeFile("AppKit/CPSegmentedControl.j",NO);
objj_executeFile("LPKit/LPLocationController.j",NO);
objj_executeFile("../CPCheckBox+ObjectValueFix.j",YES);
objj_executeFile("../CPURLConnection+XMLResponse.j",YES);
objj_executeFile("../Controllers/MMAlbumController.j",YES);
objj_executeFile("../Controllers/MMLibrarySectionsViewController.j",YES);
objj_executeFile("../Controllers/MMPrefsController.j",YES);
objj_executeFile("../Controllers/MMSeasonController.j",YES);
objj_executeFile("../DataSources/MMAgentDataSource.j",YES);
objj_executeFile("../DataSources/MMLibraryMediaDataSource.j",YES);
objj_executeFile("../DataSources/MMMetadataItemDataSource.j",YES);
objj_executeFile("../DataSources/MMLibrarySectionsDataSource.j",YES);
objj_executeFile("../DataSources/MMLibraryTimelineDataSource.j",YES);
objj_executeFile("../Models/LanguageConfig.j",YES);
objj_executeFile("../Models/MMMetadataItem.j",YES);
objj_executeFile("../Models/PMSCapabilities.j",YES);
objj_executeFile("../Controllers/MMContentController.j",YES);
objj_executeFile("../Controllers/MMMetadataItemCollectionViewController.j",YES);
objj_executeFile("../Controllers/MMMetadataItemController.j",YES);
objj_executeFile("../Views/MMActionPopUpButton.j",YES);
objj_executeFile("../Views/MMCollectionView.j",YES);
objj_executeFile("../Views/MMContainer.j",YES);
objj_executeFile("../Views/MMFirstRunView.j",YES);
objj_executeFile("../Views/MMInternetExplorerNotificationBar.j",YES);
objj_executeFile("../Views/MMMetadataItemDetailView.j",YES);
objj_executeFile("../Views/MMMetadataItemCollectionView.j",YES);
objj_executeFile("../Views/MMScrollView.j",YES);
objj_executeFile("../Views/MMSectionSettingsSheet.j",YES);
objj_executeFile("../Views/MMPreferencesPanel.j",YES);
objj_executeFile("../Views/MMToolbar.j",YES);
var _1=0;
var _2=1;
var _3=24;
var _4=objj_allocateClassPair(CPViewController,"MMManagerController"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_preventUpdates"),new objj_ivar("_wantedMetadataItemId"),new objj_ivar("_showingHelp"),new objj_ivar("_librarySection"),new objj_ivar("_metadataItem"),new objj_ivar("_viewWithToolbar"),new objj_ivar("_firstRunView"),new objj_ivar("_metadataItemsController"),new objj_ivar("_librarySectionController"),new objj_ivar("rightView"),new objj_ivar("_mediaCollectionContainer"),new objj_ivar("mediaGridView"),new objj_ivar("_librarySectionToolbar"),new objj_ivar("statusLabel"),new objj_ivar("_metadataItemView"),new objj_ivar("plusMinusSegments"),new objj_ivar("media"),new objj_ivar("librarySections"),new objj_ivar("_librarySectionLocationHash"),new objj_ivar("_metadataItemLocationHash"),new objj_ivar("_contentController"),new objj_ivar("_mediaGridController"),new objj_ivar("_metadataItemController")]);
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("librarySection"),function(_6,_7){
with(_6){
return _librarySection;
}
}),new objj_method(sel_getUid("setLibrarySection:"),function(_8,_9,_a){
with(_8){
_librarySection=_a;
}
}),new objj_method(sel_getUid("loadView"),function(_b,_c){
with(_b){
var _d=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_b,"setView:",_d);
objj_msgSend(_d,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
var _e=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,CGRectGetWidth(objj_msgSend(_d,"frame")),48));
objj_msgSend(_e,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_e,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","headerBackground.png"))));
var _f=objj_msgSend(objj_msgSend(MMImageView,"alloc"),"initWithFrame:",CGRectMake(9,0,117,48));
objj_msgSend(_f,"setImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","splash.png")));
objj_msgSend(_f,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_e,"addSubview:",_f);
var _10=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("MEDIA MANAGER","Header title"));
objj_msgSend(_10,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",14));
objj_msgSend(_10,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_10,"sizeToFit");
objj_msgSend(_10,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(_f,"frame"))+10,(CGRectGetHeight(objj_msgSend(_e,"frame"))-CGRectGetHeight(objj_msgSend(_10,"frame")))/2));
objj_msgSend(_10,"setAutoresizingMask:",CPViewMaxXMargin|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_e,"addSubview:",_10);
var _11=objj_msgSend(HUDButton,"buttonWithTitle:",CPLocalizedString("Preferences","Preferences button in top-right"));
objj_msgSend(_11,"setTarget:",_b);
objj_msgSend(_11,"setAction:",sel_getUid("_settingsButtonWasClicked:"));
objj_msgSend(_11,"setKeyEquivalent:",",");
objj_msgSend(_11,"setKeyEquivalentModifierMask:",CPControlKeyMask);
objj_msgSend(_11,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_11,"setFrameOrigin:",CGPointMake(CGRectGetWidth(objj_msgSend(_e,"frame"))-10-CGRectGetWidth(objj_msgSend(_11,"frame")),(CGRectGetHeight(objj_msgSend(_e,"frame"))-CGRectGetHeight(objj_msgSend(_11,"frame")))/2));
objj_msgSend(_e,"addSubview:",_11);
objj_msgSend(_d,"addSubview:",_e);
_contentController=objj_msgSend(objj_msgSend(MMContentController,"alloc"),"init");
media=objj_msgSend(CPArray,"array");
librarySections=objj_msgSend(CPArray,"array");
_metadataItemsController=objj_msgSend(objj_msgSend(CPArrayController,"alloc"),"init");
objj_msgSend(_metadataItemsController,"setSortDescriptors:",objj_msgSend(CPArray,"arrayWithObject:",objj_msgSend(CPSortDescriptor,"sortDescriptorWithKey:ascending:","titleSort",YES)));
var _12=objj_msgSend(objj_msgSend(MMContainer,"alloc"),"initWithFrame:",CGRectMake(0,CGRectGetMaxY(objj_msgSend(_d,"bounds"))-32,CGRectGetWidth(objj_msgSend(_d,"bounds")),32));
objj_msgSend(_12,"setAutoresizingMask:",CPViewMinYMargin|CPViewWidthSizable);
objj_msgSend(_d,"addSubview:",_12);
statusLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",objj_msgSend(_12,"bounds"));
objj_msgSend(statusLabel,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
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
objj_msgSend(_13,"bind:toObject:withKeyPath:options:","enabled",_b,"librarySection",objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",CPIsNotNilTransformerName,CPValueTransformerNameBindingOption));
objj_msgSend(objj_msgSend(_13,"menu"),"setAutoenablesItems:",NO);
var _14=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",CPLocalizedString("Edit Section","Edit Section"),sel_getUid("editSection:"),nil);
objj_msgSend(_14,"setTarget:",_b);
objj_msgSend(_13,"addItem:",_14);
var _15=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Empty Trash",sel_getUid("emptySectionTrash:"),nil);
objj_msgSend(_15,"setTarget:",_b);
objj_msgSend(_15,"bind:toObject:withKeyPath:options:","enabled",_b,"currentLibrarySectionHasTrashedItems",nil);
objj_msgSend(_15,"bind:toObject:withKeyPath:options:","title",_b,"currentLibrarySectionEmptyTrashMenuTitle",nil);
objj_msgSend(_13,"addItem:",_15);
var _16=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",CPLocalizedString("Choose Icon","Choose Icon"),nil,nil);
objj_msgSend(_16,"setTarget:",_b);
objj_msgSend(_16,"setEnabled:",NO);
objj_msgSend(_13,"addItem:",_16);
var _17=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",CPLocalizedString("Choose Background Art","Choose Background Art"),nil,nil);
objj_msgSend(_17,"setTarget:",_b);
objj_msgSend(_17,"setEnabled:",NO);
objj_msgSend(_13,"addItem:",_17);
objj_msgSend(_12,"addSubview:",_13);
var _18=CGRectGetHeight(objj_msgSend(_d,"bounds"))-CGRectGetHeight(objj_msgSend(_12,"bounds"))-CGRectGetHeight(objj_msgSend(_e,"bounds"));
var _19=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,CGRectGetMaxY(objj_msgSend(_e,"frame")),200,_18));
objj_msgSend(_19,"setAutoresizingMask:",CPViewHeightSizable);
objj_msgSend(_d,"addSubview:",_19);
_librarySectionController=objj_msgSend(objj_msgSend(MMLibrarySectionsViewController,"alloc"),"initWithDelegate:",_b);
var _1a=objj_msgSend(objj_msgSend(CPScrollView,"alloc"),"initWithFrame:",objj_msgSend(_19,"bounds"));
objj_msgSend(_1a,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_1a,"setAutohidesScrollers:",YES);
objj_msgSend(_1a,"setDocumentView:",objj_msgSend(_librarySectionController,"view"));
objj_msgSend(_19,"addSubview:",_1a);
var _1b=objj_msgSend(objj_msgSend(CPBox,"alloc"),"initWithFrame:",CGRectMake(CGRectGetMaxX(objj_msgSend(_19,"frame")),CGRectGetMinY(objj_msgSend(_19,"frame")),1,_18));
objj_msgSend(_1b,"setBorderColor:",objj_msgSend(CPColor,"colorWithWhite:alpha:",180/255,1));
objj_msgSend(_1b,"setAutoresizingMask:",CPViewHeightSizable);
objj_msgSend(_d,"addSubview:",_1b);
rightView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(CGRectGetMaxX(objj_msgSend(_1b,"frame")),CGRectGetMinY(objj_msgSend(_19,"frame")),CGRectGetWidth(objj_msgSend(_d,"bounds"))-CGRectGetMaxX(objj_msgSend(_1b,"frame")),_18));
objj_msgSend(_d,"addSubview:",rightView);
objj_msgSend(rightView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(objj_msgSend(_contentController,"view"),"setFrame:",objj_msgSend(rightView,"bounds"));
objj_msgSend(rightView,"addSubview:",objj_msgSend(_contentController,"view"));
objj_msgSend(_b,"bind:toObject:withKeyPath:options:","librarySection",_librarySectionController,"selectedLibrarySection",nil);
_mediaGridController=objj_msgSend(objj_msgSend(MMMetadataItemCollectionViewController,"alloc"),"init");
objj_msgSend(_mediaGridController,"bind:toObject:withKeyPath:options:","librarySection",_b,"librarySection",nil);
objj_msgSend(_mediaGridController,"addObserver:forKeyPath:options:context:",_b,"content",CPKeyValueObservingOptionNew,nil);
objj_msgSend(_contentController,"pushViewController:animated:",_mediaGridController,NO);
_metadataItemController=objj_msgSend(objj_msgSend(MMMetadataItemController,"alloc"),"init");
objj_msgSend(statusLabel,"bind:toObject:withKeyPath:options:",CPValueBinding,_contentController,"status",nil);
var _1c=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"initWithFrame:",CGRectMakeZero()),_1d=objj_msgSend(_1c,"currentValueForThemeAttribute:","help-image"),_1e=objj_msgSend(_1c,"currentValueForThemeAttribute:","help-image-pressed"),_1f=_1d?objj_msgSend(_1d,"size"):CGSizeMakeZero(),_20=CGRectMake(CGRectGetWidth(objj_msgSend(_12,"frame"))-5-_1f.width,(CGRectGetHeight(objj_msgSend(_12,"frame"))-_1f.height)/2,_1f.width,_1f.height);
var _21=objj_msgSend(objj_msgSend(CPButton,"alloc"),"initWithFrame:",_20);
objj_msgSend(_21,"setTarget:",_b);
objj_msgSend(_21,"setAction:",sel_getUid("help:"));
objj_msgSend(_21,"setImage:",_1d);
objj_msgSend(_21,"setAlternateImage:",_1e);
objj_msgSend(_21,"setBordered:",NO);
objj_msgSend(_21,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_21,"bind:toObject:withKeyPath:options:","hidden",_b,"librarySection",objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",CPIsNilTransformerName,CPValueTransformerNameBindingOption));
objj_msgSend(_12,"addSubview:",_21);
var _22=CGSizeMake(32,25),_23=objj_msgSend(objj_msgSend(CPButton,"alloc"),"initWithFrame:",CGRectMake(CGRectGetMinX(objj_msgSend(_21,"frame"))-_22.width-5,(CGRectGetHeight(objj_msgSend(_12,"frame"))-_22.height)/2,_22.width,_22.height)),_24=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","NSRefreshTemplate.png"),CGSizeMake(13,13));
objj_msgSend(_23,"bind:toObject:withKeyPath:options:","enabled",_b,"librarySection",objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",CPIsNotNilTransformerName,CPValueTransformerNameBindingOption));
objj_msgSend(_23,"setImage:",_24);
objj_msgSend(_23,"setImagePosition:",CPImageOnly);
objj_msgSend(_23,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_23,"setTarget:",_b);
objj_msgSend(_23,"setAction:",sel_getUid("refreshSection:"));
objj_msgSend(_12,"addSubview:",_23);
objj_msgSend(LanguageConfig,"initialize");
objj_msgSend(MMPrefsController,"sharedPrefsController");
objj_msgSend(PMSCapabilities,"sharedPMSCapabilities");
objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"addObserver:selector:",_b,sel_getUid("locationDidChange:"));
}
}),new objj_method(sel_getUid("setLibrarySection:"),function(_25,_26,_27){
with(_25){
if(objj_msgSend(_librarySectionController,"hasLoadedSections")){
if(_27==nil){
objj_msgSend(_25,"showHelp");
}else{
objj_msgSend(_25,"dismissHelp");
}
}
objj_msgSend(plusMinusSegments,"setEnabled:forSegment:",!!_27,_2);
if(_librarySection==_27){
return;
}
objj_msgSend(_contentController,"popToRootViewControllerAnimated:",NO);
_librarySection=_27;
if(_librarySection&&!_wantedMetadataItemId){
objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"setLocation:",objj_msgSend(CPString,"stringWithFormat:","/sections/%@",objj_msgSend(_librarySection,"id")));
}
}
}),new objj_method(sel_getUid("currentLibrarySectionHasTrashedItems"),function(_28,_29){
with(_28){
return objj_msgSend(objj_msgSend(objj_msgSend(_28,"librarySection"),"trashedItems"),"count")>0;
}
}),new objj_method(sel_getUid("currentLibrarySectionEmptyTrashMenuTitle"),function(_2a,_2b){
with(_2a){
var _2c=objj_msgSend(objj_msgSend(objj_msgSend(_2a,"librarySection"),"trashedItems"),"count");
return (_2c==0)?CPLocalizedString("Empty Trash","Menu item title in the library section action menu when there is nothing in the trash"):(_2c==1)?CPLocalizedString("Empty Trash (1 item)","Menu item title in the library section action menu when there is one item in the trash"):objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Empty Trash (%d items)","Menu item title in the library section action menu when there is more than one item in the trash"),_2c);
}
}),new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"),function(_2d,_2e,_2f,_30,_31,_32){
with(_2d){
if(_30==_mediaGridController&&_2f=="content"){
objj_msgSend(_2d,"locationDidChange:",objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"formattedHash"));
}
}
}),new objj_method(sel_getUid("locationDidChange:"),function(_33,_34,_35){
with(_33){
if(_preventUpdates){
return;
}
var _36=objj_msgSend(_librarySectionController,"librarySectionsController");
var _37=nil,_38=nil,_36=nil;
var _39=objj_msgSend(_35,"componentsSeparatedByString:","/");
objj_msgSend(_39,"removeObjectIdenticalTo:","");
_preventUpdates=YES;
if(objj_msgSend(_39,"count")>=2&&objj_msgSend(objj_msgSend(_39,"objectAtIndex:",0),"isEqualToString:","sections")){
_37=objj_msgSend(_39,"objectAtIndex:",1);
if(_37){
objj_msgSend(_librarySectionController,"selectSectionWithId:",_37);
}
if(objj_msgSend(_39,"count")>=4&&objj_msgSend(objj_msgSend(_39,"objectAtIndex:",2),"isEqualToString:","media")){
_38=objj_msgSend(_39,"objectAtIndex:",3);
_wantedMetadataItemId=_38;
if(_38){
var _3a=objj_msgSend(_mediaGridController,"content");
for(var i=0,_3b=objj_msgSend(_3a,"count");i<_3b;i++){
var _3c=objj_msgSend(_3a,"objectAtIndex:",i);
if(objj_msgSend(objj_msgSend(_3c,"id"),"isEqual:",_38)){
_wantedMetadataItemId=nil;
objj_msgSend(_metadataItemController,"setContent:",_3c);
objj_msgSend(_contentController,"popToRootViewControllerAnimated:",NO);
objj_msgSend(_contentController,"pushViewController:animated:",_metadataItemController,NO);
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
}),new objj_method(sel_getUid("showHelp"),function(_3d,_3e){
with(_3d){
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
}),new objj_method(sel_getUid("dismissHelp"),function(_3f,_40){
with(_3f){
_showingHelp=NO;
if(!objj_msgSend(_firstRunView,"superview")){
return;
}
objj_msgSend(objj_msgSend(_contentController,"view"),"setFrame:",objj_msgSend(_firstRunView,"frame"));
objj_msgSend(objj_msgSend(_firstRunView,"superview"),"replaceSubview:with:",_firstRunView,objj_msgSend(_contentController,"view"));
}
}),new objj_method(sel_getUid("help:"),function(_41,_42,_43){
with(_41){
if(_showingHelp){
objj_msgSend(_41,"dismissHelp");
}else{
objj_msgSend(_41,"showHelp");
}
}
}),new objj_method(sel_getUid("dataSource:didFailToReceiveRecordsWithError:contextInfo:"),function(_44,_45,_46,_47,_48){
with(_44){
objj_msgSend(AppController,"notifyUserOfConnectionError:",_47);
}
}),new objj_method(sel_getUid("dataSource:didFailToDeleteRecord:withError:contextInfo:"),function(_49,_4a,_4b,_4c,_4d,_4e){
with(_49){
objj_msgSend(AppController,"notifyUserOfError:withTitle:",objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Got this error: %@. Are you sure Plex Media Server is running?","Error message for when we cannot remove a library section"),_4d),objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Unable to remove section \"%@\"","Error title for when we cannot remove a library section"),objj_msgSend(_4c,"title")));
}
}),new objj_method(sel_getUid("selectedLibrarySection"),function(_4f,_50){
with(_4f){
return objj_msgSend(_librarySectionController,"selectedLibrarySection");
}
}),new objj_method(sel_getUid("librarySectionWasActivated:"),function(_51,_52,_53){
with(_51){
objj_msgSend(_51,"_beginEditingSection:",_53);
}
}),new objj_method(sel_getUid("collectionView:didDoubleClickOnItemAtIndex:"),function(_54,_55,_56,_57){
with(_54){
objj_msgSend(_54,"presentMetadataItem:",objj_msgSend(objj_msgSend(_mediaGridController,"content"),"objectAtIndex:",_57));
}
}),new objj_method(sel_getUid("presentMetadataItem:"),function(_58,_59,_5a){
with(_58){
_metadataItem=_5a;
if(!_metadataItemView){
_metadataItemView=objj_msgSend(objj_msgSend(MMMetadataItemDetailView,"alloc"),"initWithFrame:",objj_msgSend(objj_msgSend(_contentController,"view"),"contentRect"));
objj_msgSend(_metadataItemView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
}
objj_msgSend(_metadataItemView,"setMetadataItem:",_5a);
objj_msgSend(_contentController,"popToViewController:animated:",_metadataGridController,NO);
objj_msgSend(_contentController,"pushViewController:animated:",_metadataItemController,NO);
_metadataItemLocationHash=objj_msgSend(CPString,"stringWithFormat:","/sections/%@/media/%@",objj_msgSend(objj_msgSend(_librarySectionController,"selectedLibrarySection"),"id"),objj_msgSend(_5a,"id"));
objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"setLocation:",_metadataItemLocationHash);
}
}),new objj_method(sel_getUid("addOrRemoveSection:"),function(_5b,_5c,_5d){
with(_5b){
switch(objj_msgSend(_5d,"selectedSegment")){
case _1:
var _5e=objj_msgSend(objj_msgSend(MMSectionSettingsSheet,"alloc"),"initWithDataSource:",objj_msgSend(MMLibrarySectionsDataSource,"sharedDataSource"));
objj_msgSend(_5e,"beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:",objj_msgSend(objj_msgSend(_5b,"view"),"window"),_5b,sel_getUid("_addDidEnd:returnCode:contextInfo:"),objj_msgSend(objj_msgSend(MMLibrarySection,"alloc"),"init"));
break;
case _2:
var _5f=objj_msgSend(_5b,"selectedLibrarySection"),_60=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(_60,"setAlertStyle:",CPWarningAlertStyle);
objj_msgSend(_60,"setMessageText:",objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Are you sure you want to remove the section named \"%@\"?","Confirmation message for removing a section"),objj_msgSend(_5f,"title")));
objj_msgSend(_60,"setInformativeText:",CPLocalizedString("Any content in this section will no longer be available in your library. The files on your computer will not be removed.","Informative text for removing a section"));
objj_msgSend(_60,"setDelegate:",_5b);
objj_msgSend(_60,"addButtonWithTitle:",CPLocalizedString("Remove Section","Remove section confirmation button"));
objj_msgSend(_60,"addButtonWithTitle:",CPLocalizedString("Cancel","Cancel"));
objj_msgSend(objj_msgSend(objj_msgSend(_60,"buttons"),"objectAtIndex:",0),"setKeyEquivalent:",CPEscapeFunctionKey);
objj_msgSend(_60,"beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:",objj_msgSend(objj_msgSend(_5b,"view"),"window"),_5b,sel_getUid("removeSectionConfirmationDidEnd:returnCode:contextInfo:"),_5f);
break;
}
}
}),new objj_method(sel_getUid("_addDidEnd:returnCode:contextInfo:"),function(_61,_62,_63,_64,_65){
with(_61){
}
}),new objj_method(sel_getUid("_editDidEnd:returnCode:contextInfo:"),function(_66,_67,_68,_69,_6a){
with(_66){
}
}),new objj_method(sel_getUid("editSection:"),function(_6b,_6c,_6d){
with(_6b){
objj_msgSend(_6b,"_beginEditingSection:",objj_msgSend(_6b,"selectedLibrarySection"));
}
}),new objj_method(sel_getUid("refreshSection:"),function(_6e,_6f,_70){
with(_6e){
var _71=objj_msgSend(CPApp,"currentEvent");
var _72=false,_73=false;
if(objj_msgSend(_71,"modifierFlags")&CPShiftKeyMask){
_72=true;
}
if(objj_msgSend(_71,"modifierFlags")&CPAlternateKeyMask){
_73=true;
}
objj_msgSend(_6e.currentLibrarySection,"forceUpdate:withDeepScan:",_72,_73);
objj_msgSend(objj_msgSend(MMLibrarySectionsDataSource,"sharedDataSource"),"refreshSection:forceUpdate:withDeepScan:",objj_msgSend(_6e,"selectedLibrarySection"),_72,_73);
}
}),new objj_method(sel_getUid("editSectionButtonClicked:"),function(_74,_75,_76){
with(_74){
objj_msgSend(_74,"_beginEditingSection:",objj_msgSend(_74,"selectedLibrarySection"));
}
}),new objj_method(sel_getUid("_beginEditingSection:"),function(_77,_78,_79){
with(_77){
var _7a=objj_msgSend(objj_msgSend(MMSectionSettingsSheet,"alloc"),"initWithDataSource:",objj_msgSend(MMLibrarySectionsDataSource,"sharedDataSource"));
objj_msgSend(_7a,"beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:",objj_msgSend(objj_msgSend(_77,"view"),"window"),_77,sel_getUid("_editDidEnd:returnCode:contextInfo:"),_79);
}
}),new objj_method(sel_getUid("_settingsButtonWasClicked:"),function(_7b,_7c,_7d){
with(_7b){
var _7e=objj_msgSend(objj_msgSend(MMPreferencesPanel,"alloc"),"initWithFrame:",CGRectMake(0,0,500,200));
objj_msgSend(_7e,"sizeToFit");
objj_msgSend(_7e,"presentSheetInWindow:",objj_msgSend(objj_msgSend(_7b,"view"),"window"));
}
}),new objj_method(sel_getUid("emptySectionTrash:"),function(_7f,_80,_81){
with(_7f){
setTimeout(function(){
var _82=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init"),_83=objj_msgSend(_7f,"librarySection");
objj_msgSend(_82,"setAlertStyle:",CPWarningAlertStyle);
objj_msgSend(_82,"setMessageText:",objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Are you sure you want to empty the trash in \"%@\"?","Confirmation text for the empty trash confirmation dialog"),objj_msgSend(_83,"title")));
objj_msgSend(_82,"setInformativeText:",CPLocalizedString("All deleted items will be permanently removed from your library. No files on your computer will be removed.","Explanation text for the empty trash confirmation dialog"));
objj_msgSend(_82,"setDelegate:",_7f);
objj_msgSend(_82,"addButtonWithTitle:",CPLocalizedString("Empty Trash","Confirmation button for the empty trash confirmation dialog"));
objj_msgSend(_82,"addButtonWithTitle:",CPLocalizedString("Cancel","Cancel"));
objj_msgSend(objj_msgSend(objj_msgSend(_82,"buttons"),"objectAtIndex:",0),"setKeyEquivalent:",CPEscapeFunctionKey);
objj_msgSend(_82,"beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:",objj_msgSend(objj_msgSend(_7f,"view"),"window"),_7f,sel_getUid("emptyTrashConfirmationSheetDidEnd:returnCode:contextInfo:"),_83);
},10);
}
}),new objj_method(sel_getUid("removeSectionConfirmationDidEnd:returnCode:contextInfo:"),function(_84,_85,_86,_87,_88){
with(_84){
if(_87===0){
objj_msgSend(objj_msgSend(MMLibrarySectionsDataSource,"sharedDataSource"),"deleteRecord:",_88);
}
}
}),new objj_method(sel_getUid("emptyTrashConfirmationSheetDidEnd:returnCode:contextInfo:"),function(_89,_8a,_8b,_8c,_8d){
with(_89){
if(_8c==0&&objj_msgSend(_8d,"isKindOfClass:",objj_msgSend(MMLibrarySection,"class"))){
objj_msgSend(_8d,"emptyTrash");
}
}
})]);
class_addMethods(_5,[new objj_method(sel_getUid("keyPathsForValuesAffectingCurrentLibrarySectionHasTrashedItems"),function(_8e,_8f){
with(_8e){
return objj_msgSend(CPSet,"setWithObjects:","librarySection","librarySection.trashedItems");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingCurrentLibrarySectionEmptyTrashMenuTitle"),function(_90,_91){
with(_90){
return objj_msgSend(CPSet,"setWithObjects:","librarySection","librarySection.trashedItems");
}
})]);
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
p;31;Controllers/MMAlbumController.jt;4976;@STATIC;1.0;I;25;AppKit/CPViewController.ji;33;MMMetadataItemToolbarController.ji;28;../Views/MMAlbumDetailView.jt;4856;
objj_executeFile("AppKit/CPViewController.j",NO);
objj_executeFile("MMMetadataItemToolbarController.j",YES);
objj_executeFile("../Views/MMAlbumDetailView.j",YES);
var _1=objj_allocateClassPair(CPViewController,"MMAlbumController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("content"),new objj_ivar("childrenController"),new objj_ivar("parentViewController"),new objj_ivar("mediaDataSource"),new objj_ivar("toolbarController"),new objj_ivar("detailView")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("content"),function(_3,_4){
with(_3){
return content;
}
}),new objj_method(sel_getUid("setContent:"),function(_5,_6,_7){
with(_5){
content=_7;
}
}),new objj_method(sel_getUid("parentViewController"),function(_8,_9){
with(_8){
return parentViewController;
}
}),new objj_method(sel_getUid("setParentViewController:"),function(_a,_b,_c){
with(_a){
parentViewController=_c;
}
}),new objj_method(sel_getUid("init"),function(_d,_e){
with(_d){
if(_d=objj_msgSendSuper({receiver:_d,super_class:objj_getClass("MMAlbumController").super_class},"init")){
mediaDataSource=objj_msgSend(objj_msgSend(MMLibraryMediaDataSource,"alloc"),"initWithDelegate:",_d);
childrenController=objj_msgSend(objj_msgSend(CPArrayController,"alloc"),"init");
}
return _d;
}
}),new objj_method(sel_getUid("loadView"),function(_f,_10){
with(_f){
toolbarController=objj_msgSend(objj_msgSend(MMMetadataItemToolbarController,"alloc"),"init");
var _11=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,800,800)),_12=objj_msgSend(toolbarController,"view"),_13=CGRectGetHeight(objj_msgSend(_12,"frame")),_14=objj_msgSend(objj_msgSend(MMAlbumDetailView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_12,"setFrame:",CGRectMake(0,CGRectGetHeight(objj_msgSend(_11,"frame"))-_13,CGRectGetWidth(objj_msgSend(_11,"frame")),_13));
objj_msgSend(_14,"setFrame:",CGRectMake(0,0,CGRectGetWidth(objj_msgSend(_11,"frame")),CGRectGetMinY(objj_msgSend(_12,"frame"))));
objj_msgSend(_12,"setAutoresizingMask:",CPViewMinYMargin|CPViewWidthSizable);
objj_msgSend(_14,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_11,"addSubview:",_14);
objj_msgSend(_11,"addSubview:",_12);
objj_msgSend(_14,"bind:toObject:withKeyPath:options:","thumbImage",_f,"content.thumbImage",nil);
objj_msgSend(_14,"bind:toObject:withKeyPath:options:","title",_f,"content.title",nil);
objj_msgSend(_14,"bind:toObject:withKeyPath:options:","year",_f,"content.year",nil);
objj_msgSend(_14,"bind:toObject:withKeyPath:options:","summary",_f,"content.summary",nil);
objj_msgSend(_14,"bind:toObject:withKeyPath:options:","tracks",childrenController,"arrangedObjects",nil);
objj_msgSend(toolbarController,"bind:toObject:withKeyPath:options:","content",_f,"content",nil);
objj_msgSend(toolbarController,"bind:toObject:withKeyPath:options:","parentViewController",_f,"parentViewController",nil);
detailView=_14;
objj_msgSend(_f,"setView:",_11);
}
}),new objj_method(sel_getUid("title"),function(_15,_16){
with(_15){
return objj_msgSend(content,"displayTitle");
}
}),new objj_method(sel_getUid("status"),function(_17,_18){
with(_17){
var _19=objj_msgSend(childrenController,"content");
if(!objj_msgSend(_19,"count")){
return CPLocalizedString("no tracks","Status label for when there are no tracks in an album");
}
var _1a=0,_1b=0;
for(var i=0,_1c=objj_msgSend(_19,"count");i<_1c;i++){
var _1d=_19[i],_1e=objj_msgSend(_1d,"duration"),_1f=objj_msgSend(objj_msgSend(_1d,"mainMediaItem"),"size");
if(_1e){
_1a+=_1e;
}
if(_1f){
_1b+=_1f;
}
}
var _20=FLOOR(_1a/1000);
if(objj_msgSend(_19,"count")==1){
return objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("1 track, %@ total time, %@","Status label for when there is one track in an album (e.g. 1 track, 4:28 total time, 5.6 MB)"),objj_msgSend(_20,"timeString"),objj_msgSend(_1b,"filesizeString"));
}
return objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("%d tracks, %@ total time, %@","Status label for when there are more than one track (e.g. 11 tracks, 47:34 total time, 91.2 MB)"),objj_msgSend(_19,"count"),objj_msgSend(_20,"timeString"),objj_msgSend(_1b,"filesizeString"));
}
}),new objj_method(sel_getUid("setContent:"),function(_21,_22,_23){
with(_21){
content=_23;
objj_msgSend(mediaDataSource,"refreshRecordsWithContextInfo:",content);
}
}),new objj_method(sel_getUid("dataSource:didReceiveRecords:contextInfo:"),function(_24,_25,_26,_27,_28){
with(_24){
if(_26!=mediaDataSource||_28!=content){
return;
}
objj_msgSend(_24,"willChangeValueForKey:","status");
objj_msgSend(childrenController,"setContent:",_27);
objj_msgSend(_24,"didChangeValueForKey:","status");
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("keyPathsForValuesAffectingTitle"),function(_29,_2a){
with(_29){
return objj_msgSend(CPSet,"setWithObjects:","content","content.displayTitle");
}
})]);
p;45;Controllers/MMMetadataItemToolbarController.jt;11601;@STATIC;1.0;I;25;AppKit/CPViewController.ji;20;../Views/MMToolbar.jt;11526;
objj_executeFile("AppKit/CPViewController.j",NO);
objj_executeFile("../Views/MMToolbar.j",YES);
var _1=objj_allocateClassPair(CPViewController,"MMMetadataItemToolbarController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("content"),new objj_ivar("_parentViewController"),new objj_ivar("_dataSource"),new objj_ivar("_matchPicker"),new objj_ivar("_changeArtworkMenu")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("content"),function(_3,_4){
with(_3){
return content;
}
}),new objj_method(sel_getUid("setContent:"),function(_5,_6,_7){
with(_5){
content=_7;
}
}),new objj_method(sel_getUid("parentViewController"),function(_8,_9){
with(_8){
return _parentViewController;
}
}),new objj_method(sel_getUid("setParentViewController:"),function(_a,_b,_c){
with(_a){
_parentViewController=_c;
}
}),new objj_method(sel_getUid("loadView"),function(_d,_e){
with(_d){
var _f=objj_msgSend(objj_msgSend(MMToolbar,"alloc"),"initWithFrame:style:",CGRectMake(0,0,400,30),MMToolbarHUDStyle);
var _10=objj_msgSend(CPTextField,"labelWithTitle:","");
objj_msgSend(_10,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_10,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_10,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",12));
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
objj_msgSend(_13,"setKeyEquivalent:","f");
objj_msgSend(_13,"setKeyEquivalentModifierMask:",CPCommandKeyMask);
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
case MMMetadataItemTypeEpisode:
return CPLocalizedString("Choose Episode Thumbnail","Choose Episode Thumbnail menu item");
case MMMetadataItemTypeSeason:
return CPLocalizedString("Choose Season Thumbnail","Choose Season Thumbnail menu item");
case MMMetadataItemTypeAlbum:
return CPLocalizedString("Choose Album Thumbnail","Choose Album Thumbnail menu item");
default:
return CPLocalizedString("Choose Poster","Choose Poster menu item");
}
}
}),new objj_method(sel_getUid("isEditMetadataEnabled"),function(_1e,_1f){
with(_1e){
return objj_msgSend(objj_msgSend(_1e,"content"),"type")!=MMMetadataItemTypeSeason;
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
}),new objj_method(sel_getUid("fixIncorrectMatch:"),function(_26,_27,_28){
with(_26){
_matchPicker=objj_msgSend(objj_msgSend(MMMatchPickerController,"alloc"),"initWithDelegate:",_26);
objj_msgSend(_matchPicker,"setMetadataItem:",objj_msgSend(_26,"content"));
objj_msgSend(_matchPicker,"presentSheetInWindow:",objj_msgSend(objj_msgSend(_26,"view"),"window"));
}
}),new objj_method(sel_getUid("matchPickerDidCancel:"),function(_29,_2a,_2b){
with(_29){
objj_msgSend(_matchPicker,"dismissSheet"),_matchPicker=nil;
}
}),new objj_method(sel_getUid("matchPicker:didSelectSearchResult:"),function(_2c,_2d,_2e,_2f){
with(_2c){
if(_2e!==_matchPicker){
return;
}
CPLog.info("[%@ -picker:didSelectSearchResult:] user chose %@ as the correct match for %@",objj_msgSend(_2c,"class"),_2f,objj_msgSend(_2c,"content"));
objj_msgSend(_matchPicker,"dismissSheet"),_matchPicker=nil;
objj_msgSend(objj_msgSend(MMMediaMatchesDataSource,"sharedDataSource"),"selectMatch:forMetadataItem:",_2f,objj_msgSend(_2c,"content"));
}
}),new objj_method(sel_getUid("changeArtwork:"),function(_30,_31,_32){
with(_30){
objj_msgSend(_changeArtworkMenu,"popUpMenuPositioningItem:atLocation:inView:callback:",objj_msgSend(objj_msgSend(_changeArtworkMenu,"itemArray"),"objectAtIndex:",0),CGPointMake(0,0),_32,nil);
}
}),new objj_method(sel_getUid("choosePoster:"),function(_33,_34,_35){
with(_33){
_imagePicker=objj_msgSend(objj_msgSend(MMImagePickerController,"alloc"),"initWithDelegate:",_33);
objj_msgSend(_imagePicker,"setMetadataItem:",objj_msgSend(_33,"content"));
objj_msgSend(_imagePicker,"setItemSize:",CGSizeMake(128,150));
objj_msgSend(_imagePicker,"setDataSource:",objj_msgSend(MMPosterMetadataDataSource,"sharedDataSource"));
objj_msgSend(_parentViewController,"pushViewController:animated:",_imagePicker,YES);
}
}),new objj_method(sel_getUid("chooseBanner:"),function(_36,_37,_38){
with(_36){
_imagePicker=objj_msgSend(objj_msgSend(MMImagePickerController,"alloc"),"initWithDelegate:",_36);
objj_msgSend(_imagePicker,"setMetadataItem:",objj_msgSend(_36,"content"));
objj_msgSend(_imagePicker,"setItemSize:",CGSizeMake(150,75));
objj_msgSend(_imagePicker,"setDataSource:",objj_msgSend(MMBannerMetadataDataSource,"sharedDataSource"));
objj_msgSend(_parentViewController,"pushViewController:animated:",_imagePicker,YES);
}
}),new objj_method(sel_getUid("chooseBackgroundArt:"),function(_39,_3a,_3b){
with(_39){
_imagePicker=objj_msgSend(objj_msgSend(MMImagePickerController,"alloc"),"initWithDelegate:",_39);
objj_msgSend(_imagePicker,"setMetadataItem:",objj_msgSend(_39,"content"));
objj_msgSend(_imagePicker,"setItemSize:",CGSizeMake(150,75));
objj_msgSend(_imagePicker,"setDataSource:",objj_msgSend(MMBackgroundArtMetadataDataSource,"sharedDataSource"));
objj_msgSend(_parentViewController,"pushViewController:animated:",_imagePicker,YES);
}
}),new objj_method(sel_getUid("editMetadata:"),function(_3c,_3d,_3e){
with(_3c){
_editor=objj_msgSend(objj_msgSend(MMMetadataEditorController,"alloc"),"initWithDelegate:",_3c);
objj_msgSend(_editor,"presentMetadataItem:inWindow:",objj_msgSend(_3c,"content"),objj_msgSend(objj_msgSend(_3c,"view"),"window"));
}
}),new objj_method(sel_getUid("metadataEditor:didCommitMetadataItem:"),function(_3f,_40,_41,_42){
with(_3f){
if(_dataSource==nil){
_dataSource=objj_msgSend(objj_msgSend(MMMetadataItemDataSource,"alloc"),"initWithDelegate:",_3f);
}
objj_msgSend(_dataSource,"updateRecord:",_42);
}
}),new objj_method(sel_getUid("dataSource:didUpdateRecord:contextInfo:"),function(_43,_44,_45,_46,_47){
with(_43){
if(_45==_dataSource){
objj_msgSend(_editor,"dismissSheet");
}
}
}),new objj_method(sel_getUid("dataSource:didFailToUpdateRecord:withError:contextInfo:"),function(_48,_49,_4a,_4b,_4c,_4d){
with(_48){
if(_4a==_dataSource){
objj_msgSend(AppController,"notifyUserOfError:withTitle:",_4c,"Unable to update metadata");
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("keyPathsForValuesAffectingStatus"),function(_4e,_4f){
with(_4e){
return objj_msgSend(CPSet,"setWithObjects:","content","content.updatedAt");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingFixIncorrectMatchEnabled"),function(_50,_51){
with(_50){
return objj_msgSend(CPSet,"setWithObjects:","content","content.parent");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingTitleForChoosePosterMenuItem"),function(_52,_53){
with(_52){
return objj_msgSend(CPSet,"setWithObjects:","content","content.parent");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingEditMetadataEnabled"),function(_54,_55){
with(_54){
return objj_msgSend(CPSet,"setWithObjects:","content","content.type");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingChooseBannerEnabled"),function(_56,_57){
with(_56){
return objj_msgSend(CPSet,"setWithObjects:","content","content.parent");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingChooseBackgroundArtEnabled"),function(_58,_59){
with(_58){
return objj_msgSend(CPSet,"setWithObjects:","content","content.parent");
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
p;17;Views/HUDButton.jt;382;@STATIC;1.0;I;17;AppKit/CPButton.jt;342;
objj_executeFile("AppKit/CPButton.j",NO);
var _1=objj_allocateClassPair(CPButton,"HUDButton"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("buttonWithTitle:"),function(_3,_4,_5){
with(_3){
return objj_msgSend(_3,"buttonWithTitle:theme:",_5,objj_msgSend(CPTheme,"themeNamed:","Aristo-HUD"));
}
})]);
p;23;Models/MMMetadataItem.jt;21860;@STATIC;1.0;i;10;MMRecord.jt;21825;
objj_executeFile("MMRecord.j",YES);
var _1;
MMMetadataItemTypeShow="show";
MMMetadataItemTypeMovie="movie";
MMMetadataItemTypeArtist="artist";
MMMetadataItemTypeAlbum="album";
MMMetadataItemTypeSeason="season";
MMMetadataItemTypeEpisode="episode";
CPLocalizedString("show","A TV Show");
CPLocalizedString("movie","A movie");
CPLocalizedString("artist","A musical artist");
CPLocalizedString("album","A recording album");
CPLocalizedString("season","A TV Show season");
CPLocalizedString("episode","A TV Show episode");
MMMetadataItemStateCreated=0;
MMMetadataItemStateProgress=1;
MMMetadataItemStateMatching=2;
MMMetadataItemStateDownloadingMetadata=3;
MMMetadataItemStateLoadingMetadata=4;
MMMetadataItemStateIdle=5;
MMMetadataItemStateDeleted=9;
MMMetadataItemTagAttributeMap=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:","writer","writers","director","directors","genre","genres","collection","collections");
var _2=objj_allocateClassPair(MMRecord,"MMMetadataItem"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_key"),new objj_ivar("guid"),new objj_ivar("language"),new objj_ivar("_title"),new objj_ivar("_titleSort"),new objj_ivar("_originalTitle"),new objj_ivar("_tagline"),new objj_ivar("_year"),new objj_ivar("_rating"),new objj_ivar("_index"),new objj_ivar("_duration"),new objj_ivar("_summary"),new objj_ivar("_studio"),new objj_ivar("_contentRating"),new objj_ivar("_originallyAvailableAt"),new objj_ivar("thumb"),new objj_ivar("art"),new objj_ivar("_type"),new objj_ivar("updatedAt"),new objj_ivar("deletedAt"),new objj_ivar("_librarySection"),new objj_ivar("_thumbImage"),new objj_ivar("_artImage"),new objj_ivar("_state"),new objj_ivar("_leafCount"),new objj_ivar("_matching"),new objj_ivar("_idle"),new objj_ivar("_loading"),new objj_ivar("_parent"),new objj_ivar("_writers"),new objj_ivar("_directors"),new objj_ivar("_genres"),new objj_ivar("_collections"),new objj_ivar("_titleLocked"),new objj_ivar("_titleSortLocked"),new objj_ivar("_originalTitleLocked"),new objj_ivar("_taglineLocked"),new objj_ivar("_yearLocked"),new objj_ivar("_ratingLocked"),new objj_ivar("_summaryLocked"),new objj_ivar("_studioLocked"),new objj_ivar("_contentRatingLocked"),new objj_ivar("_originallyAvailableAtLocked"),new objj_ivar("_writersLocked"),new objj_ivar("_directorsLocked"),new objj_ivar("_genresLocked"),new objj_ivar("_collectionLocked"),new objj_ivar("thumbLocked"),new objj_ivar("artLocked"),new objj_ivar("mediaItems")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("key"),function(_4,_5){
with(_4){
return _key;
}
}),new objj_method(sel_getUid("setKey:"),function(_6,_7,_8){
with(_6){
_key=_8;
}
}),new objj_method(sel_getUid("guid"),function(_9,_a){
with(_9){
return guid;
}
}),new objj_method(sel_getUid("setGuid:"),function(_b,_c,_d){
with(_b){
guid=_d;
}
}),new objj_method(sel_getUid("language"),function(_e,_f){
with(_e){
return language;
}
}),new objj_method(sel_getUid("setLanguage:"),function(_10,_11,_12){
with(_10){
language=_12;
}
}),new objj_method(sel_getUid("title"),function(_13,_14){
with(_13){
return _title;
}
}),new objj_method(sel_getUid("setTitle:"),function(_15,_16,_17){
with(_15){
_title=_17;
}
}),new objj_method(sel_getUid("titleSort"),function(_18,_19){
with(_18){
return _titleSort;
}
}),new objj_method(sel_getUid("setTitleSort:"),function(_1a,_1b,_1c){
with(_1a){
_titleSort=_1c;
}
}),new objj_method(sel_getUid("originalTitle"),function(_1d,_1e){
with(_1d){
return _originalTitle;
}
}),new objj_method(sel_getUid("setOriginalTitle:"),function(_1f,_20,_21){
with(_1f){
_originalTitle=_21;
}
}),new objj_method(sel_getUid("tagline"),function(_22,_23){
with(_22){
return _tagline;
}
}),new objj_method(sel_getUid("setTagline:"),function(_24,_25,_26){
with(_24){
_tagline=_26;
}
}),new objj_method(sel_getUid("year"),function(_27,_28){
with(_27){
return _year;
}
}),new objj_method(sel_getUid("setYear:"),function(_29,_2a,_2b){
with(_29){
_year=_2b;
}
}),new objj_method(sel_getUid("rating"),function(_2c,_2d){
with(_2c){
return _rating;
}
}),new objj_method(sel_getUid("setRating:"),function(_2e,_2f,_30){
with(_2e){
_rating=_30;
}
}),new objj_method(sel_getUid("index"),function(_31,_32){
with(_31){
return _index;
}
}),new objj_method(sel_getUid("setIndex:"),function(_33,_34,_35){
with(_33){
_index=_35;
}
}),new objj_method(sel_getUid("duration"),function(_36,_37){
with(_36){
return _duration;
}
}),new objj_method(sel_getUid("setDuration:"),function(_38,_39,_3a){
with(_38){
_duration=_3a;
}
}),new objj_method(sel_getUid("summary"),function(_3b,_3c){
with(_3b){
return _summary;
}
}),new objj_method(sel_getUid("setSummary:"),function(_3d,_3e,_3f){
with(_3d){
_summary=_3f;
}
}),new objj_method(sel_getUid("studio"),function(_40,_41){
with(_40){
return _studio;
}
}),new objj_method(sel_getUid("setStudio:"),function(_42,_43,_44){
with(_42){
_studio=_44;
}
}),new objj_method(sel_getUid("contentRating"),function(_45,_46){
with(_45){
return _contentRating;
}
}),new objj_method(sel_getUid("setContentRating:"),function(_47,_48,_49){
with(_47){
_contentRating=_49;
}
}),new objj_method(sel_getUid("originallyAvailableAt"),function(_4a,_4b){
with(_4a){
return _originallyAvailableAt;
}
}),new objj_method(sel_getUid("setOriginallyAvailableAt:"),function(_4c,_4d,_4e){
with(_4c){
_originallyAvailableAt=_4e;
}
}),new objj_method(sel_getUid("thumb"),function(_4f,_50){
with(_4f){
return thumb;
}
}),new objj_method(sel_getUid("setThumb:"),function(_51,_52,_53){
with(_51){
thumb=_53;
}
}),new objj_method(sel_getUid("art"),function(_54,_55){
with(_54){
return art;
}
}),new objj_method(sel_getUid("setArt:"),function(_56,_57,_58){
with(_56){
art=_58;
}
}),new objj_method(sel_getUid("type"),function(_59,_5a){
with(_59){
return _type;
}
}),new objj_method(sel_getUid("setType:"),function(_5b,_5c,_5d){
with(_5b){
_type=_5d;
}
}),new objj_method(sel_getUid("updatedAt"),function(_5e,_5f){
with(_5e){
return updatedAt;
}
}),new objj_method(sel_getUid("setUpdatedAt:"),function(_60,_61,_62){
with(_60){
updatedAt=_62;
}
}),new objj_method(sel_getUid("deletedAt"),function(_63,_64){
with(_63){
return deletedAt;
}
}),new objj_method(sel_getUid("setDeletedAt:"),function(_65,_66,_67){
with(_65){
deletedAt=_67;
}
}),new objj_method(sel_getUid("librarySection"),function(_68,_69){
with(_68){
return _librarySection;
}
}),new objj_method(sel_getUid("setLibrarySection:"),function(_6a,_6b,_6c){
with(_6a){
_librarySection=_6c;
}
}),new objj_method(sel_getUid("state"),function(_6d,_6e){
with(_6d){
return _state;
}
}),new objj_method(sel_getUid("setState:"),function(_6f,_70,_71){
with(_6f){
_state=_71;
}
}),new objj_method(sel_getUid("leafCount"),function(_72,_73){
with(_72){
return _leafCount;
}
}),new objj_method(sel_getUid("setLeafCount:"),function(_74,_75,_76){
with(_74){
_leafCount=_76;
}
}),new objj_method(sel_getUid("isMatching"),function(_77,_78){
with(_77){
return _matching;
}
}),new objj_method(sel_getUid("isIdle"),function(_79,_7a){
with(_79){
return _idle;
}
}),new objj_method(sel_getUid("isLoading"),function(_7b,_7c){
with(_7b){
return _loading;
}
}),new objj_method(sel_getUid("parent"),function(_7d,_7e){
with(_7d){
return _parent;
}
}),new objj_method(sel_getUid("setParent:"),function(_7f,_80,_81){
with(_7f){
_parent=_81;
}
}),new objj_method(sel_getUid("writers"),function(_82,_83){
with(_82){
return _writers;
}
}),new objj_method(sel_getUid("setWriters:"),function(_84,_85,_86){
with(_84){
_writers=_86;
}
}),new objj_method(sel_getUid("directors"),function(_87,_88){
with(_87){
return _directors;
}
}),new objj_method(sel_getUid("setDirectors:"),function(_89,_8a,_8b){
with(_89){
_directors=_8b;
}
}),new objj_method(sel_getUid("genres"),function(_8c,_8d){
with(_8c){
return _genres;
}
}),new objj_method(sel_getUid("setGenres:"),function(_8e,_8f,_90){
with(_8e){
_genres=_90;
}
}),new objj_method(sel_getUid("collections"),function(_91,_92){
with(_91){
return _collections;
}
}),new objj_method(sel_getUid("setCollections:"),function(_93,_94,_95){
with(_93){
_collections=_95;
}
}),new objj_method(sel_getUid("isTitleLocked"),function(_96,_97){
with(_96){
return _titleLocked;
}
}),new objj_method(sel_getUid("setTitleLocked:"),function(_98,_99,_9a){
with(_98){
_titleLocked=_9a;
}
}),new objj_method(sel_getUid("isTitleSortLocked"),function(_9b,_9c){
with(_9b){
return _titleSortLocked;
}
}),new objj_method(sel_getUid("setTitleSortLocked:"),function(_9d,_9e,_9f){
with(_9d){
_titleSortLocked=_9f;
}
}),new objj_method(sel_getUid("isOriginalTitleLocked"),function(_a0,_a1){
with(_a0){
return _originalTitleLocked;
}
}),new objj_method(sel_getUid("setOriginalTitleLocked:"),function(_a2,_a3,_a4){
with(_a2){
_originalTitleLocked=_a4;
}
}),new objj_method(sel_getUid("isTaglineLocked"),function(_a5,_a6){
with(_a5){
return _taglineLocked;
}
}),new objj_method(sel_getUid("setTaglineLocked:"),function(_a7,_a8,_a9){
with(_a7){
_taglineLocked=_a9;
}
}),new objj_method(sel_getUid("isYearLocked"),function(_aa,_ab){
with(_aa){
return _yearLocked;
}
}),new objj_method(sel_getUid("setYearLocked:"),function(_ac,_ad,_ae){
with(_ac){
_yearLocked=_ae;
}
}),new objj_method(sel_getUid("isRatingLocked"),function(_af,_b0){
with(_af){
return _ratingLocked;
}
}),new objj_method(sel_getUid("setRatingLocked:"),function(_b1,_b2,_b3){
with(_b1){
_ratingLocked=_b3;
}
}),new objj_method(sel_getUid("isSummaryLocked"),function(_b4,_b5){
with(_b4){
return _summaryLocked;
}
}),new objj_method(sel_getUid("setSummaryLocked:"),function(_b6,_b7,_b8){
with(_b6){
_summaryLocked=_b8;
}
}),new objj_method(sel_getUid("isStudioLocked"),function(_b9,_ba){
with(_b9){
return _studioLocked;
}
}),new objj_method(sel_getUid("setStudioLocked:"),function(_bb,_bc,_bd){
with(_bb){
_studioLocked=_bd;
}
}),new objj_method(sel_getUid("isContentRatingLocked"),function(_be,_bf){
with(_be){
return _contentRatingLocked;
}
}),new objj_method(sel_getUid("setContentRatingLocked:"),function(_c0,_c1,_c2){
with(_c0){
_contentRatingLocked=_c2;
}
}),new objj_method(sel_getUid("isOriginallyAvailableAtLocked"),function(_c3,_c4){
with(_c3){
return _originallyAvailableAtLocked;
}
}),new objj_method(sel_getUid("setOriginallyAvailableAtLocked:"),function(_c5,_c6,_c7){
with(_c5){
_originallyAvailableAtLocked=_c7;
}
}),new objj_method(sel_getUid("isWritersLocked"),function(_c8,_c9){
with(_c8){
return _writersLocked;
}
}),new objj_method(sel_getUid("setWritersLocked:"),function(_ca,_cb,_cc){
with(_ca){
_writersLocked=_cc;
}
}),new objj_method(sel_getUid("isDirectorsLocked"),function(_cd,_ce){
with(_cd){
return _directorsLocked;
}
}),new objj_method(sel_getUid("setDirectorsLocked:"),function(_cf,_d0,_d1){
with(_cf){
_directorsLocked=_d1;
}
}),new objj_method(sel_getUid("isGenresLocked"),function(_d2,_d3){
with(_d2){
return _genresLocked;
}
}),new objj_method(sel_getUid("setGenresLocked:"),function(_d4,_d5,_d6){
with(_d4){
_genresLocked=_d6;
}
}),new objj_method(sel_getUid("isCollectionLocked"),function(_d7,_d8){
with(_d7){
return _collectionLocked;
}
}),new objj_method(sel_getUid("setCollectionLocked:"),function(_d9,_da,_db){
with(_d9){
_collectionLocked=_db;
}
}),new objj_method(sel_getUid("isThumbLocked"),function(_dc,_dd){
with(_dc){
return thumbLocked;
}
}),new objj_method(sel_getUid("setThumbLocked:"),function(_de,_df,_e0){
with(_de){
thumbLocked=_e0;
}
}),new objj_method(sel_getUid("isArtLocked"),function(_e1,_e2){
with(_e1){
return artLocked;
}
}),new objj_method(sel_getUid("setArtLocked:"),function(_e3,_e4,_e5){
with(_e3){
artLocked=_e5;
}
}),new objj_method(sel_getUid("mediaItems"),function(_e6,_e7){
with(_e6){
return mediaItems;
}
}),new objj_method(sel_getUid("setMediaItems:"),function(_e8,_e9,_ea){
with(_e8){
mediaItems=_ea;
}
}),new objj_method(sel_getUid("init"),function(_eb,_ec){
with(_eb){
if(_eb=objj_msgSendSuper({receiver:_eb,super_class:objj_getClass("MMMetadataItem").super_class},"init")){
mediaItems=objj_msgSend(CPSet,"set");
}
return _eb;
}
}),new objj_method(sel_getUid("setKey:"),function(_ed,_ee,_ef){
with(_ed){
_key=_ef;
objj_msgSend(_ed,"setId:",objj_msgSend(objj_msgSend(_ed,"class"),"idFromKey:",_ef));
}
}),new objj_method(sel_getUid("mainMediaItem"),function(_f0,_f1){
with(_f0){
return objj_msgSend(mediaItems,"anyObject");
}
}),new objj_method(sel_getUid("addMediaItem:"),function(_f2,_f3,_f4){
with(_f2){
objj_msgSend(_f2,"willChangeValueForKey:","mediaItems");
objj_msgSend(mediaItems,"addObject:",_f4);
objj_msgSend(_f4,"setMetadataItem:",_f2);
objj_msgSend(_f2,"didChangeValueForKey:","mediaItems");
}
}),new objj_method(sel_getUid("removeMediaItem:"),function(_f5,_f6,_f7){
with(_f5){
objj_msgSend(_f5,"willChangeValueForKey:","mediaItems");
objj_msgSend(mediaItems,"removeObject:",_f7);
objj_msgSend(_f7,"setMetadataItem:",nil);
objj_msgSend(_f5,"didChangeValueForKey:","mediaItems");
}
}),new objj_method(sel_getUid("displayTitle"),function(_f8,_f9){
with(_f8){
var _fa=objj_msgSend(CPString,"stringWithFormat:"," (%d)",_year);
if(objj_msgSend(_title,"hasSuffix:",_fa)){
return objj_msgSend(_title,"substringToIndex:",objj_msgSend(_title,"length")-objj_msgSend(_fa,"length"));
}else{
return _title;
}
}
}),new objj_method(sel_getUid("titleSort"),function(_fb,_fc){
with(_fb){
return _titleSort||_title;
}
}),new objj_method(sel_getUid("root"),function(_fd,_fe){
with(_fd){
var _ff=_fd;
while(objj_msgSend(_ff,"parent")){
_ff=objj_msgSend(_ff,"parent");
}
return _ff;
}
}),new objj_method(sel_getUid("setGuid:"),function(self,_100,_101){
with(self){
if(guid===_101){
return;
}
var m=_101&&_101.match(/lang=(\w+)/);
if(m&&m[1]!="xn"){
objj_msgSend(self,"setLanguage:",m[1]);
}
guid=_101;
}
}),new objj_method(sel_getUid("setUpdatedAt:"),function(self,_102,_103){
with(self){
updatedAt=objj_msgSend(self,"parseDate:",_103);
}
}),new objj_method(sel_getUid("setDeletedAt:"),function(self,_104,_105){
with(self){
deletedAt=objj_msgSend(self,"parseDate:",_105);
if(deletedAt){
objj_msgSend(objj_msgSend(self,"librarySection"),"addTrashedItem:",self);
}else{
objj_msgSend(objj_msgSend(self,"librarySection"),"removeTrashedItem:",self);
}
}
}),new objj_method(sel_getUid("setYear:"),function(self,_106,_107){
with(self){
var year=_107;
if(objj_msgSend(year,"isKindOfClass:",CPString)){
year=Number(year);
}
_year=year;
}
}),new objj_method(sel_getUid("setLeafCount:"),function(self,_108,_109){
with(self){
var _10a=_109;
if(objj_msgSend(_10a,"isKindOfClass:",CPString)){
_10a=Number(_10a);
}
_leafCount=_10a;
}
}),new objj_method(sel_getUid("setRating:"),function(self,_10b,_10c){
with(self){
var _10d=_10c;
if(objj_msgSend(_10d,"isKindOfClass:",CPString)){
_10d=Number(_10d);
}
_rating=_10d;
}
}),new objj_method(sel_getUid("setIndex:"),function(self,_10e,_10f){
with(self){
var _110=_10f;
if(objj_msgSend(_110,"isKindOfClass:",CPString)){
_110=Number(_110);
}
_index=_110;
}
}),new objj_method(sel_getUid("setDuration:"),function(self,_111,_112){
with(self){
var _113=_112;
if(objj_msgSend(_113,"isKindOfClass:",CPString)){
_113=Number(_113);
}
_duration=_113;
}
}),new objj_method(sel_getUid("setOriginallyAvailableAt:"),function(self,_114,_115){
with(self){
_originallyAvailableAt=objj_msgSend(self,"parseDate:",_115);
}
}),new objj_method(sel_getUid("setState:"),function(self,_116,_117){
with(self){
if(objj_msgSend(_117,"isKindOfClass:",CPString)){
_117=Number(_117);
}
_state=_117;
}
}),new objj_method(sel_getUid("setThumb:"),function(self,_118,_119){
with(self){
if(thumb===_119){
return;
}
thumb=_119;
_thumbImage=nil;
}
}),new objj_method(sel_getUid("thumbImage"),function(self,_11a){
with(self){
if(!thumb){
return nil;
}
if(!_thumbImage){
_thumbImage=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initByReferencingFile:size:",objj_msgSend(self,"thumbURL"),CGSizeMake(-1,-1));
}
return _thumbImage;
}
}),new objj_method(sel_getUid("thumbURL"),function(self,_11b){
with(self){
if(!thumb){
return nil;
}
return objj_msgSend(PMSURL,"URLWithPath:",thumb);
}
}),new objj_method(sel_getUid("setArt:"),function(self,_11c,_11d){
with(self){
if(art===_11d){
return;
}
art=_11d;
_artImage=nil;
}
}),new objj_method(sel_getUid("artImage"),function(self,_11e){
with(self){
if(!art){
return nil;
}
if(!_artImage){
_artImage=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initByReferencingFile:size:",objj_msgSend(self,"artURL"),CGSizeMake(-1,-1));
}
return _artImage;
}
}),new objj_method(sel_getUid("artURL"),function(self,_11f){
with(self){
if(!art){
return nil;
}
return objj_msgSend(PMSURL,"URLWithPath:",art);
}
}),new objj_method(sel_getUid("isMatching"),function(self,_120){
with(self){
return _state===MMMetadataItemStateMatching;
}
}),new objj_method(sel_getUid("isIdle"),function(self,_121){
with(self){
return _state===MMMetadataItemStateIdle;
}
}),new objj_method(sel_getUid("isLoading"),function(self,_122){
with(self){
return _state===MMMetadataItemStateDownloadingMetadata||_state===MMMetadataItemStateLoadingMetadata;
}
}),new objj_method(sel_getUid("stateString"),function(self,_123){
with(self){
switch(_state){
case MMMetadataItemStateCreated:
return "created";
case MMMetadataItemStateProgress:
return "progress";
case MMMetadataItemStateMatching:
return "matching";
case MMMetadataItemStateDownloadingMetadata:
return "downloading metadata";
case MMMetadataItemStateLoadingMetadata:
return "loading metadata";
case MMMetadataItemStateIdle:
return "idle";
case MMMetadataItemStateDeleted:
return "deleted";
}
}
}),new objj_method(sel_getUid("isEqual:"),function(self,_124,_125){
with(self){
return (self===_125)||(objj_msgSend(_125,"isKindOfClass:",objj_msgSend(self,"class"))&&objj_msgSend(objj_msgSend(self,"id"),"isEqual:",objj_msgSend(_125,"id")));
}
}),new objj_method(sel_getUid("description"),function(self,_126){
with(self){
return objj_msgSend(CPString,"stringWithFormat:","{%@ (%d) %@}",objj_msgSend(self,"title"),objj_msgSend(self,"year"),"0x"+objj_msgSend(CPString,"stringWithHash:",objj_msgSend(self,"UID")));
}
}),new objj_method(sel_getUid("changedAttributeDictionary"),function(self,_127){
with(self){
var _128=objj_msgSend(CPDictionary,"dictionary"),_129=objj_msgSendSuper({receiver:self,super_class:objj_getClass("MMMetadataItem").super_class},"changedAttributeDictionary"),keys=objj_msgSend(_129,"keyEnumerator"),key;
while(key=objj_msgSend(keys,"nextObject")){
var _12a=objj_msgSend(_129,"objectForKey:",key),_12b=key,_12c=objj_msgSend(key,"rangeOfString:","Locked"),_12d=_12a;
if(CPMaxRange(_12c)==objj_msgSend(key,"length")){
var _12e=objj_msgSend(key,"substringToIndex:",_12c.location);
if(objj_msgSend(MMMetadataItemTagAttributeMap,"containsKey:",_12e)){
_12e=objj_msgSend(MMMetadataItemTagAttributeMap,"objectForKey:",_12e);
}
_12b=_12e+".locked";
_12d=_12a?"1":"0";
objj_msgSend(_128,"setObject:forKey:",_12d,_12b);
}else{
if(objj_msgSend(MMMetadataItemTagAttributeMap,"containsKey:",key)){
var tags=objj_msgSend(_129,"objectForKey:",key),_12f=objj_msgSend(MMMetadataItemTagAttributeMap,"objectForKey:",key);
for(var i=0,_130=objj_msgSend(tags,"count");i<_130;i++){
_12b=objj_msgSend(CPString,"stringWithFormat:","%@[%d].tag.tag",_12f,i);
_12d=tags[i];
objj_msgSend(_128,"setObject:forKey:",_12d,_12b);
}
}else{
objj_msgSend(_128,"setObject:forKey:",_12d,_12b);
}
}
}
return _128;
}
}),new objj_method(sel_getUid("unlockAllAttributes"),function(self,_131){
with(self){
var _132=objj_msgSend(objj_msgSend(objj_msgSend(self,"class"),"observedAttributes"),"objectEnumerator"),_133=nil;
while(_133=objj_msgSend(_132,"nextObject")){
if(objj_msgSend(_133,"hasSuffix:","Locked")){
objj_msgSend(self,"setValue:forKey:",NO,_133);
}
}
}
}),new objj_method(sel_getUid("recordWasDeleted"),function(self,_134){
with(self){
if(deletedAt){
objj_msgSend(objj_msgSend(self,"librarySection"),"removeTrashedItem:",self);
}
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("blankThumbImage"),function(self,_135){
with(self){
if(!_1){
_1=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","BlankPoster.png"));
}
return objj_msgSend(_1,"copy");
}
}),new objj_method(sel_getUid("observedAttributes"),function(self,_136){
with(self){
return objj_msgSend(CPSet,"setWithObjects:","title","titleSort","originalTitle","tagline","year","rating","summary","studio","contentRating","originallyAvailableAt","writers","directors","genres","collections","titleLocked","titleSortLocked","originalTitleLocked","taglineLocked","yearLocked","ratingLocked","summaryLocked","studioLocked","contentRatingLocked","originallyAvailableAtLocked","writersLocked","directorsLocked","genresLocked","collectionLocked");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingMatching"),function(self,_137){
with(self){
return objj_msgSend(CPSet,"setWithObject:","state");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingLoading"),function(self,_138){
with(self){
return objj_msgSend(CPSet,"setWithObject:","state");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingIdle"),function(self,_139){
with(self){
return objj_msgSend(CPSet,"setWithObject:","state");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingThumbImage"),function(self,_13a){
with(self){
return objj_msgSend(CPSet,"setWithObject:","thumb");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingArtImage"),function(self,_13b){
with(self){
return objj_msgSend(CPSet,"setWithObject:","art");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingDisplayTitle"),function(self,_13c){
with(self){
return objj_msgSend(CPSet,"setWithObject:","title");
}
}),new objj_method(sel_getUid("idFromKey:"),function(self,_13d,aKey){
with(self){
return aKey&&aKey.replace(/[^\d]/g,"");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingMainMediaItem"),function(self,_13e){
with(self){
return objj_msgSend(CPSet,"setWithObject:","mediaItems");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingRoot"),function(self,_13f){
with(self){
return objj_msgSend(CPSet,"setWithObject:","parent");
}
})]);
p;17;Models/MMRecord.jt;4476;@STATIC;1.0;I;21;Foundation/CPObject.jt;4431;
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
}),new objj_method(sel_getUid("attributeForKeyHasChanged:"),function(_22,_23,key){
with(_22){
return objj_msgSend(_changedAttributes,"containsKey:",key);
}
}),new objj_method(sel_getUid("parseDate:"),function(_24,_25,_26){
with(_24){
if(objj_msgSend(_26,"isKindOfClass:",CPString)){
var _27;
if(/^\d+$/.test(_26)){
return objj_msgSend(objj_msgSend(CPDate,"alloc"),"initWithTimeIntervalSince1970:",_26);
}else{
if(_27=_26.match(/^(\d{4})-(\d\d?)-(\d\d?)$/)){
return new Date(_27[1],Number(_27[2])-1,_27[3]);
}else{
return Date.parse(_26);
}
}
}else{
if(!_26||objj_msgSend(_26,"isKindOfClass:",CPDate)){
return _26;
}else{
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(CPString,"stringWithFormat:","date must be of type %@ (got %@)",CPDate,objj_msgSend(_26,"class")));
}
}
}
}),new objj_method(sel_getUid("recordWasCreated"),function(_28,_29){
with(_28){
}
}),new objj_method(sel_getUid("recordWasUpdated"),function(_2a,_2b){
with(_2a){
}
}),new objj_method(sel_getUid("recordWasDeleted"),function(_2c,_2d){
with(_2c){
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("observedAttributes"),function(_2e,_2f){
with(_2e){
return objj_msgSend(CPSet,"set");
}
}),new objj_method(sel_getUid("allObservedAttributes"),function(_30,_31){
with(_30){
return _1[objj_msgSend(_30,"UID")];
}
}),new objj_method(sel_getUid("_loadObservedAttributes"),function(_32,_33){
with(_32){
if(objj_msgSend(_32,"allObservedAttributes")){
return;
}
var _34=objj_msgSend(objj_msgSend(_32,"observedAttributes"),"copy");
if(objj_msgSend(objj_msgSend(_32,"superclass"),"respondsToSelector:",sel_getUid("_loadObservedAttributes"))){
objj_msgSend(objj_msgSend(_32,"superclass"),"_loadObservedAttributes");
objj_msgSend(_34,"unionSet:",objj_msgSend(objj_msgSend(_32,"superclass"),"allObservedAttributes"));
}
CPLog.debug("[%@ _loadObservedAttributes] observedAttributes: %@",_32,_34);
_1[objj_msgSend(_32,"UID")]=_34;
}
})]);
p;15;Models/PMSURL.jt;1410;@STATIC;1.0;I;18;Foundation/CPURL.ji;16;../PMSSecurity.jt;1347;
objj_executeFile("Foundation/CPURL.j",NO);
objj_executeFile("../PMSSecurity.j",YES);
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
var _11=objj_msgSend(objj_msgSend(PMSSecurity,"sharedSecurity"),"username"),_12=objj_msgSend(objj_msgSend(PMSSecurity,"sharedSecurity"),"hashedPassword");
if(_11&&_12){
if(!_10){
_10="";
}else{
_10+="&";
}
_10+=objj_msgSend(CPString,"stringWithFormat:","X-Plex-User=%@&X-Plex-Pass=%@",_11,_12);
}
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
p;13;PMSSecurity.jt;4056;@STATIC;1.0;I;21;Foundation/CPObject.jI;28;Foundation/CPURLConnection.jI;27;Foundation/CPUserDefaults.jt;3946;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("Foundation/CPURLConnection.j",NO);
objj_executeFile("Foundation/CPUserDefaults.j",NO);
PMSSecurityUserKey="PlexUser";
PMSSecurityPassKey="PlexPass";
var _1=nil;
var _2=nil;
var _3=objj_allocateClassPair(CPObject,"PMSSecurity"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("securityEnabled"),new objj_ivar("username"),new objj_ivar("password"),new objj_ivar("shouldPersistCredentials"),new objj_ivar("userDefaults")]);
objj_registerClassPair(_3);
class_addMethods(_3,[new objj_method(sel_getUid("securityEnabled"),function(_5,_6){
with(_5){
return securityEnabled;
}
}),new objj_method(sel_getUid("setSecurityEnabled:"),function(_7,_8,_9){
with(_7){
securityEnabled=_9;
}
}),new objj_method(sel_getUid("username"),function(_a,_b){
with(_a){
return username;
}
}),new objj_method(sel_getUid("setUsername:"),function(_c,_d,_e){
with(_c){
username=_e;
}
}),new objj_method(sel_getUid("password"),function(_f,_10){
with(_f){
return password;
}
}),new objj_method(sel_getUid("setPassword:"),function(_11,_12,_13){
with(_11){
password=_13;
}
}),new objj_method(sel_getUid("shouldPersistCredentials"),function(_14,_15){
with(_14){
return shouldPersistCredentials;
}
}),new objj_method(sel_getUid("setShouldPersistCredentials:"),function(_16,_17,_18){
with(_16){
shouldPersistCredentials=_18;
}
}),new objj_method(sel_getUid("init"),function(_19,_1a){
with(_19){
if(_19=objj_msgSendSuper({receiver:_19,super_class:objj_getClass("PMSSecurity").super_class},"init")){
userDefaults=objj_msgSend(CPUserDefaults,"standardUserDefaults");
username=objj_msgSend(userDefaults,"stringForKey:",PMSSecurityUserKey);
password=objj_msgSend(userDefaults,"stringForKey:",PMSSecurityPassKey);
shouldPersistCredentials=!!(username&&password);
setTimeout(function(){
objj_msgSend(_19,"beginRefresh");
},1000);
}
return _19;
}
}),new objj_method(sel_getUid("beginRefresh"),function(_1b,_1c){
with(_1b){
objj_msgSend(CPURLConnection,"connectionWithRequest:delegate:",objj_msgSend(CPURLRequest,"requestWithURL:",objj_msgSend(PMSURL,"URLWithPath:","/security")),_1b);
}
}),new objj_method(sel_getUid("connection:didReceiveResponse:"),function(_1d,_1e,_1f,_20){
with(_1d){
if(objj_msgSend(_20,"statusCode")!=200){
objj_msgSend(_1f,"cancel");
}
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",60,_1d,sel_getUid("beginRefresh"),nil,NO);
}
}),new objj_method(sel_getUid("connection:didReceiveData:"),function(_21,_22,_23,_24){
with(_21){
var _25=objj_msgSend(_23,"responseXML");
if(!_25){
return;
}
var _26=_25.documentElement;
objj_msgSend(_21,"setSecurityEnabled:",(_26.getAttribute("security")=="1"));
}
}),new objj_method(sel_getUid("setShouldPersistCredentials:"),function(_27,_28,_29){
with(_27){
_29=!!_29;
if(shouldPersistCredentials===_29){
return;
}
shouldPersistCredentials=_29;
if(shouldPersistCredentials){
objj_msgSend(userDefaults,"setObject:forKey:",username,PMSSecurityUserKey);
objj_msgSend(userDefaults,"setObject:forKey:",password,PMSSecurityPassKey);
}else{
objj_msgSend(userDefaults,"removeObjectForKey:",PMSSecurityUserKey);
objj_msgSend(userDefaults,"removeObjectForKey:",PMSSecurityPassKey);
}
}
}),new objj_method(sel_getUid("setUsername:"),function(_2a,_2b,_2c){
with(_2a){
username=_2c;
if(shouldPersistCredentials){
objj_msgSend(userDefaults,"setObject:forKey:",username,PMSSecurityUserKey);
}
}
}),new objj_method(sel_getUid("setPassword:"),function(_2d,_2e,_2f){
with(_2d){
password=_2f;
if(shouldPersistCredentials){
objj_msgSend(userDefaults,"setObject:forKey:",password,PMSSecurityPassKey);
}
}
}),new objj_method(sel_getUid("hashedPassword"),function(_30,_31){
with(_30){
return username&&password&&Crypto.SHA1(username.toLowerCase()+Crypto.SHA1(password));
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("sharedSecurity"),function(_32,_33){
with(_32){
if(!_1){
_1=objj_msgSend(objj_msgSend(_32,"alloc"),"init");
}
return _1;
}
})]);
p;37;Controllers/MMMatchPickerController.jt;30536;@STATIC;1.0;I;20;Foundation/CPArray.jI;21;Foundation/CPString.jI;22;Foundation/CPRunLoop.jI;33;Foundation/CPNotificationCenter.jI;20;AppKit/CPAnimation.jI;22;AppKit/CPApplication.jI;17;AppKit/CPButton.jI;16;AppKit/CPImage.jI;22;AppKit/CPPopUpButton.jI;21;AppKit/CPScrollView.jI;20;AppKit/CPTableView.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;25;AppKit/CPViewController.ji;23;../Models/MMMediaItem.ji;26;../Models/MMMetadataItem.ji;41;../DataSources/MMMediaMatchesDataSource.ji;34;../DataSources/MMAgentDataSource.jt;30008;
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
objj_executeFile("../Models/MMMediaItem.j",YES);
objj_executeFile("../Models/MMMetadataItem.j",YES);
objj_executeFile("../DataSources/MMMediaMatchesDataSource.j",YES);
objj_executeFile("../DataSources/MMAgentDataSource.j",YES);
var _1=objj_allocateClassPair(CPViewController,"MMMatchPickerController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_delegate"),new objj_ivar("metadataItem"),new objj_ivar("metadataItemWithFilePart"),new objj_ivar("_matchesDataSource"),new objj_ivar("_mediaDataSource"),new objj_ivar("_sheetPanel"),new objj_ivar("_resultView"),new objj_ivar("_descriptiveLabel"),new objj_ivar("_searchResults"),new objj_ivar("_matchesTableView"),new objj_ivar("_matchesScrollView"),new objj_ivar("_selectButton"),new objj_ivar("_cancelButton"),new objj_ivar("_searchButton"),new objj_ivar("_searchFormView"),new objj_ivar("_agentPopUp"),new objj_ivar("_languagePopUp"),new objj_ivar("_titleField"),new objj_ivar("_yearField"),new objj_ivar("_mediaFileField"),new objj_ivar("_submitSearchButton"),new objj_ivar("_cancelSearchButton"),new objj_ivar("_loadingIndicator"),new objj_ivar("_searchResults"),new objj_ivar("_agentDataSource")]);
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
return metadataItem;
}
}),new objj_method(sel_getUid("setMetadataItem:"),function(_a,_b,_c){
with(_a){
metadataItem=_c;
}
}),new objj_method(sel_getUid("metadataItemWithFilePart"),function(_d,_e){
with(_d){
return metadataItemWithFilePart;
}
}),new objj_method(sel_getUid("setMetadataItemWithFilePart:"),function(_f,_10,_11){
with(_f){
metadataItemWithFilePart=_11;
}
}),new objj_method(sel_getUid("initWithDelegate:"),function(_12,_13,_14){
with(_12){
if(_12=objj_msgSendSuper({receiver:_12,super_class:objj_getClass("MMMatchPickerController").super_class},"init")){
_delegate=_14;
_searchResults=objj_msgSend(CPArray,"array");
_matchesDataSource=objj_msgSend(objj_msgSend(MMMediaMatchesDataSource,"alloc"),"initWithDelegate:",_12);
_mediaDataSource=objj_msgSend(objj_msgSend(MMLibraryMediaDataSource,"alloc"),"initWithDelegate:",_12);
_agentDataSource=objj_msgSend(MMAgentDataSource,"sharedDataSource");
}
return _12;
}
}),new objj_method(sel_getUid("initWithMetadataItem:delegate:"),function(_15,_16,_17,_18){
with(_15){
if(_15=objj_msgSend(_15,"initWithDelegate:",_18)){
objj_msgSend(_15,"setMetadataItem:",_17);
}
return _15;
}
}),new objj_method(sel_getUid("presentSheetInWindow:"),function(_19,_1a,_1b){
with(_19){
if(_sheetPanel){
return;
}
_sheetPanel=objj_msgSend(objj_msgSend(CPPanel,"alloc"),"initWithContentRect:styleMask:",objj_msgSend(objj_msgSend(_19,"view"),"bounds"),CPDocModalWindowMask);
objj_msgSend(_sheetPanel,"setContentView:",objj_msgSend(_19,"view"));
objj_msgSend(CPApp,"beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:",_sheetPanel,_1b,nil,nil,nil);
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"performSelector:target:argument:order:modes:",sel_getUid("_resultViewDidActivate"),_19,nil,0,[CPDefaultRunLoopMode]);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_19,sel_getUid("_agentsDidLoad:"),MMDataSourceDidReceiveRecords,_agentDataSource);
objj_msgSend(_agentDataSource,"refreshRecordsWithContextInfo:",objj_msgSend(objj_msgSend(metadataItem,"librarySection"),"type"));
}
}),new objj_method(sel_getUid("dismissSheet"),function(_1c,_1d){
with(_1c){
if(!_sheetPanel){
return;
}
objj_msgSend(CPApp,"endSheet:returnCode:",_sheetPanel,0),_sheetPanel=nil;
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_1c,MMDataSourceDidReceiveRecords,_agentDataSource);
}
}),new objj_method(sel_getUid("setMetadataItem:"),function(_1e,_1f,_20){
with(_1e){
metadataItem=_20;
objj_msgSend(_1e,"setMetadataItemWithFilePart:",metadataItem);
objj_msgSend(_1e,"view");
_searchResults=objj_msgSend(CPArray,"array");
objj_msgSend(_matchesTableView,"reloadData");
objj_msgSend(_matchesDataSource,"refreshRecordsWithContextInfo:",metadataItem);
objj_msgSend(_descriptiveLabel,"setStringValue:",objj_msgSend(_1e,"title"));
objj_msgSend(_descriptiveLabel,"sizeToFit");
objj_msgSend(_titleField,"setStringValue:",objj_msgSend(metadataItem,"title"));
objj_msgSend(_yearField,"setStringValue:",objj_msgSend(metadataItem,"year"));
objj_msgSend(_selectButton,"setTitle:",objj_msgSend(_1e,"_selectButtonTitle"));
}
}),new objj_method(sel_getUid("setMetadataItemWithFilePart:"),function(_21,_22,_23){
with(_21){
metadataItemWithFilePart=_23;
if(!objj_msgSend(objj_msgSend(metadataItemWithFilePart,"mainMediaItem"),"mainPart")){
objj_msgSend(_mediaDataSource,"refreshRecordsWithContextInfo:",metadataItemWithFilePart);
}
}
}),new objj_method(sel_getUid("mediaItemFileName"),function(_24,_25){
with(_24){
var _26=objj_msgSend(objj_msgSend(objj_msgSend(metadataItemWithFilePart,"mainMediaItem"),"mainPart"),"file");
if(!_26){
return nil;
}
var _27,_28=_26,_29=objj_msgSend(_26,"length"),_2a="…",_2b=CPMakeRange(0,0),_2c=objj_msgSend(_mediaFileField,"font"),_2d=CGRectGetWidth(objj_msgSend(_mediaFileField,"frame"))-1;
for(var i=2;i<_29;i++){
_27=objj_msgSend(CPPlatformString,"sizeOfString:withFont:forWidth:",_28,_2c,0);
if(_27.width<_2d){
break;
}
_2b=CPMakeRange(FLOOR((_29-i)/2),i);
_28=objj_msgSend(_26,"substringToIndex:",_2b.location)+_2a+objj_msgSend(_26,"substringFromIndex:",CPMaxRange(_2b));
}
return _28;
}
}),new objj_method(sel_getUid("dataSource:didRequestRecordsWithContextInfo:"),function(_2e,_2f,_30,_31){
with(_2e){
if(_30!=_matchesDataSource){
return;
}
if(objj_msgSend(_31,"isKindOfClass:",CPDictionary)){
_31=objj_msgSend(_31,"objectForKey:","metadataItem");
}
if(objj_msgSend(metadataItem,"isEqual:",_31)){
_searchResults=objj_msgSend(CPArray,"array");
objj_msgSend(_matchesTableView,"reloadData");
objj_msgSend(_loadingIndicator,"setHidden:",NO);
}else{
CPLog.warn("[%@ -dataSource:didRequestRecordsWithContextInfo:] ignoring request for stale context: %@",objj_msgSend(_2e,"class"),_31);
}
}
}),new objj_method(sel_getUid("dataSource:didReceiveRecords:contextInfo:"),function(_32,_33,_34,_35,_36){
with(_32){
if(_34==_matchesDataSource){
if(objj_msgSend(_36,"isKindOfClass:",CPDictionary)){
_36=objj_msgSend(_36,"objectForKey:","metadataItem");
}
if(objj_msgSend(metadataItem,"isEqual:",_36)){
_searchResults=_35;
objj_msgSend(_matchesTableView,"reloadData");
objj_msgSend(_loadingIndicator,"setHidden:",YES);
}else{
CPLog.warn("[%@ -dataSource:didReceiveRecords:contextInfo:] ignoring records for stale context: %@",objj_msgSend(_32,"class"),_36);
}
}else{
if(_34==_mediaDataSource){
objj_msgSend(_32,"setMetadataItemWithFilePart:",objj_msgSend(_35,"count")?objj_msgSend(_35,"objectAtIndex:",0):nil);
}
}
}
}),new objj_method(sel_getUid("dataSource:didFailToReceiveRecordsWithError:contextInfo:"),function(_37,_38,_39,_3a,_3b){
with(_37){
if(_39!=_matchesDataSource){
return;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("matchPicker:didFailWithError:"))){
objj_msgSend(_delegate,"matchPicker:didFailWithError:",_37,_3a);
}
objj_msgSend(_loadingIndicator,"setHidden:",YES);
}
}),new objj_method(sel_getUid("_agentsDidLoad:"),function(_3c,_3d,_3e){
with(_3c){
_agents=objj_msgSend(objj_msgSend(_3e,"userInfo"),"objectForKey:","records");
var _3f=objj_msgSend(objj_msgSend(metadataItem,"librarySection"),"agent"),_40=objj_msgSend(_agents,"indexOfObject:",_3f);
objj_msgSend(_agentPopUp,"removeAllItems");
for(var i=0;i<objj_msgSend(_agents,"count");i++){
objj_msgSend(_agentPopUp,"addItemWithTitle:",objj_msgSend(objj_msgSend(_agents,"objectAtIndex:",i),"name"));
}
objj_msgSend(_agentPopUp,"selectItemAtIndex:",_40);
objj_msgSend(_3c,"_agentSelectionDidChange");
}
}),new objj_method(sel_getUid("_agentSelectionDidChange"),function(_41,_42){
with(_41){
var _43=objj_msgSend(objj_msgSend(_41,"selectedAgent"),"languages"),_44=objj_msgSend(objj_msgSend(metadataItem,"librarySection"),"language"),_45=objj_msgSend(_43,"indexOfObject:",_44);
objj_msgSend(_languagePopUp,"removeAllItems");
for(var i=0;i<objj_msgSend(_43,"count");i++){
objj_msgSend(_languagePopUp,"addItemWithTitle:",objj_msgSend(objj_msgSend(_43,"objectAtIndex:",i),"name"));
}
objj_msgSend(_languagePopUp,"selectItemAtIndex:",_45);
}
}),new objj_method(sel_getUid("selectedAgent"),function(_46,_47){
with(_46){
var _48=objj_msgSend(_agentPopUp,"indexOfSelectedItem");
if(_48==CPNotFound){
return nil;
}
return objj_msgSend(_agents,"objectAtIndex:",_48);
}
}),new objj_method(sel_getUid("selectedLanguage"),function(_49,_4a){
with(_49){
var _4b=objj_msgSend(_languagePopUp,"indexOfSelectedItem");
if(_4b==CPNotFound){
return nil;
}
return objj_msgSend(objj_msgSend(objj_msgSend(_49,"selectedAgent"),"languages"),"objectAtIndex:",_4b);
}
}),new objj_method(sel_getUid("title"),function(_4c,_4d){
with(_4c){
switch(objj_msgSend(objj_msgSend(metadataItem,"librarySection"),"type")){
case MMMetadataItemTypeMovie:
return CPLocalizedString("Select the correct movie from the list below:","Fix Incorrect Match title for movie sections");
case MMMetadataItemTypeArtist:
return CPLocalizedString("Select the correct artist from the list below:","Fix Incorrect Match title for music sections");
case MMMetadataItemTypeShow:
return CPLocalizedString("Select the correct TV show from the list below:","Fix Incorrect Match title for TV show sections");
}
}
}),new objj_method(sel_getUid("loadView"),function(_4e,_4f){
with(_4e){
var _50=10;
_view=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,482,323));
_resultView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",objj_msgSend(_view,"frame"));
objj_msgSend(_view,"addSubview:",_resultView);
_descriptiveLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_descriptiveLabel,"setStringValue:",objj_msgSend(_4e,"title"));
objj_msgSend(_descriptiveLabel,"sizeToFit");
objj_msgSend(_descriptiveLabel,"setFrameOrigin:",CGPointMake(_50,_50));
objj_msgSend(_resultView,"addSubview:",_descriptiveLabel);
_matchesScrollView=objj_msgSend(objj_msgSend(CPScrollView,"alloc"),"initWithFrame:",CGRectMake(_50,CGRectGetMaxY(objj_msgSend(_descriptiveLabel,"frame"))+5,CGRectGetWidth(objj_msgSend(_resultView,"frame"))-_50*2,200));
objj_msgSend(_matchesScrollView,"setBorderType:",CPLineBorder);
objj_msgSend(_matchesScrollView,"setAutohidesScrollers:",YES);
_matchesTableView=objj_msgSend(objj_msgSend(CPTableView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_matchesTableView,"setDataSource:",_4e);
objj_msgSend(_matchesTableView,"setDelegate:",_4e);
objj_msgSend(_matchesTableView,"setTarget:",_4e);
objj_msgSend(_matchesTableView,"setDoubleAction:",sel_getUid("tableViewRowWasDoubleClicked:"));
var _51=objj_msgSend(objj_msgSend(CPTableColumn,"alloc"),"initWithIdentifier:","name");
objj_msgSend(objj_msgSend(_51,"headerView"),"setStringValue:",CPLocalizedString("Name","Name"));
objj_msgSend(_matchesTableView,"addTableColumn:",_51);
var _52=objj_msgSend(objj_msgSend(CPTableColumn,"alloc"),"initWithIdentifier:","year");
objj_msgSend(objj_msgSend(_52,"headerView"),"setStringValue:",CPLocalizedString("Year","Year"));
objj_msgSend(_matchesTableView,"addTableColumn:",_52);
var _53=objj_msgSend(CPPlatformString,"sizeOfString:withFont:forWidth:",(new Date()).getFullYear().toString(),objj_msgSend(objj_msgSend(objj_msgSend(_52,"headerView"),"textField"),"font"),nil).width*1.25;
objj_msgSend(_52,"setWidth:",_53);
objj_msgSend(_52,"setMinWidth:",_53);
objj_msgSend(_52,"setMaxWidth:",_53);
objj_msgSend(_51,"setWidth:",CGRectGetWidth(objj_msgSend(_matchesScrollView,"frame"))-_53*2);
objj_msgSend(_matchesScrollView,"setDocumentView:",_matchesTableView);
objj_msgSend(_resultView,"addSubview:",_matchesScrollView);
var _54=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Media file: ","Label for the path to the file whose match is being fixed"));
objj_msgSend(_54,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_matchesScrollView,"frame")),CGRectGetMaxY(objj_msgSend(_matchesScrollView,"frame"))+_50/2));
objj_msgSend(_resultView,"addSubview:",_54);
_mediaFileField=objj_msgSend(CPTextField,"labelWithTitle:","");
objj_msgSend(_mediaFileField,"setFrame:",CGRectMake(CGRectGetMaxX(objj_msgSend(_54,"frame")),CGRectGetMinY(objj_msgSend(_54,"frame")),CGRectGetWidth(objj_msgSend(_resultView,"frame"))-CGRectGetMaxX(objj_msgSend(_54,"frame"))-_50,CGRectGetHeight(objj_msgSend(_mediaFileField,"frame"))));
objj_msgSend(_mediaFileField,"setLineBreakMode:",CPLineBreakByTruncatingMiddle);
objj_msgSend(_mediaFileField,"bind:toObject:withKeyPath:options:",CPValueBinding,_4e,"mediaItemFileName",nil);
objj_msgSend(_resultView,"addSubview:",_mediaFileField);
var _55=objj_msgSend(objj_msgSend(CPBox,"alloc"),"initWithFrame:",CGRectMake(CGRectGetMinX(objj_msgSend(_matchesScrollView,"frame"))/2,CGRectGetMaxY(objj_msgSend(_54,"frame"))+_50/2,CGRectGetWidth(objj_msgSend(_matchesScrollView,"frame"))+CGRectGetMinX(objj_msgSend(_matchesScrollView,"frame")),1));
objj_msgSend(_resultView,"addSubview:",_55);
_searchButton=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Custom Search","Custom Search"));
objj_msgSend(_searchButton,"setTarget:",_4e);
objj_msgSend(_searchButton,"setAction:",sel_getUid("search:"));
objj_msgSend(_searchButton,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_54,"frame")),CGRectGetMaxY(objj_msgSend(_55,"frame"))+_50));
objj_msgSend(_resultView,"addSubview:",_searchButton);
_selectButton=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Select","Select"));
objj_msgSend(_resultView,"addSubview:",_selectButton);
_cancelButton=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Cancel","Cancel"));
objj_msgSend(_resultView,"addSubview:",_cancelButton);
objj_msgSend(_selectButton,"addObserver:forKeyPath:options:context:",_4e,"title",CPKeyValueObservingOptionNew,nil);
objj_msgSend(_selectButton,"addObserver:forKeyPath:options:context:",_4e,"frame",CPKeyValueObservingOptionNew,nil);
objj_msgSend(_matchesTableView,"addObserver:forKeyPath:options:context:",_4e,"selectedRowIndexes",CPKeyValueObservingOptionNew|CPKeyValueObservingOptionInitial,nil);
objj_msgSend(_selectButton,"setTitle:",objj_msgSend(_4e,"_selectButtonTitle"));
objj_msgSend(_selectButton,"setTarget:",_4e);
objj_msgSend(_selectButton,"setAction:",sel_getUid("chooseMatch:"));
objj_msgSend(_selectButton,"setKeyEquivalent:",CPCarriageReturnCharacter);
objj_msgSend(objj_msgSend(_view,"window"),"setDefaultButton:",_selectButton);
objj_msgSend(_cancelButton,"setTarget:",_4e);
objj_msgSend(_cancelButton,"setAction:",sel_getUid("cancel:"));
objj_msgSend(_cancelButton,"setKeyEquivalent:",CPEscapeFunctionKey);
objj_msgSend(_resultView,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_resultView,"frame")),CGRectGetMaxY(objj_msgSend(_searchButton,"frame"))+_50));
objj_msgSend(_view,"setFrameSize:",objj_msgSend(_resultView,"frame").size);
var _56=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","spinnerGreyBackground.gif"),CGSizeMake(16,16));
_loadingIndicator=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_loadingIndicator,"setImage:",_56);
objj_msgSend(_loadingIndicator,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(_matchesScrollView,"frame"))-objj_msgSend(_56,"size").width,CGRectGetMinY(objj_msgSend(_matchesScrollView,"frame"))-5-objj_msgSend(_56,"size").height));
objj_msgSend(_loadingIndicator,"setFrameSize:",objj_msgSend(_56,"size"));
objj_msgSend(_loadingIndicator,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin);
objj_msgSend(_resultView,"addSubview:",_loadingIndicator);
objj_msgSend(_matchesScrollView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_selectButton,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin);
objj_msgSend(_cancelButton,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin);
objj_msgSend(_searchButton,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxXMargin);
objj_msgSend(_resultView,"setAutoresizingMask:",CPViewMinYMargin|CPViewMinXMargin|CPViewMaxXMargin);
var _57=270,_58=_57*0.6,_59=10;
var _5a=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Search using:","Agent label"));
var _5b=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Language:","Language label"));
var _5c=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Name:","Name label"));
var _5d=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Year:","Year label"));
objj_msgSend(_5a,"setFrameOrigin:",CGPointMake(_59,_59));
objj_msgSend(_5b,"setFrameOrigin:",CGPointMake(_59,CGRectGetMaxY(objj_msgSend(_5a,"frame"))+_59));
objj_msgSend(_5c,"setFrameOrigin:",CGPointMake(_59,CGRectGetMaxY(objj_msgSend(_5b,"frame"))+_59));
objj_msgSend(_5d,"setFrameOrigin:",CGPointMake(_59,CGRectGetMaxY(objj_msgSend(_5c,"frame"))+_59));
var _5e=_57-_50-_58,_5f=MAX(CGRectGetMaxX(objj_msgSend(_5a,"frame"))+5,CGRectGetMaxX(objj_msgSend(_5b,"frame"))+5,CGRectGetMaxX(objj_msgSend(_5c,"frame"))+5,CGRectGetMaxX(objj_msgSend(_5d,"frame"))+5);
if(_5f>_5e){
_57+=(_5f-_5e);
}else{
_5f=_5e;
}
_searchFormView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,_57,0));
_agentPopUp=objj_msgSend(objj_msgSend(CPPopUpButton,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_agentPopUp,"sizeToFit");
objj_msgSend(_agentPopUp,"setTarget:",_4e);
objj_msgSend(_agentPopUp,"setAction:",sel_getUid("_agentSelectionDidChange"));
objj_msgSend(_agentPopUp,"setFrame:",CGRectMake(_5f,CGRectGetMinY(objj_msgSend(_5a,"frame"))+(CGRectGetHeight(objj_msgSend(_5a,"frame"))-CGRectGetHeight(objj_msgSend(_5a,"frame")))/2,_58,CGRectGetHeight(objj_msgSend(_agentPopUp,"frame"))));
objj_msgSend(_searchFormView,"addSubview:",_agentPopUp);
_languagePopUp=objj_msgSend(objj_msgSend(CPPopUpButton,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_languagePopUp,"sizeToFit");
objj_msgSend(_languagePopUp,"setFrame:",CGRectMake(_5f,CGRectGetMinY(objj_msgSend(_5b,"frame"))+(CGRectGetHeight(objj_msgSend(_5b,"frame"))-CGRectGetHeight(objj_msgSend(_5b,"frame")))/2,_58,CGRectGetHeight(objj_msgSend(_languagePopUp,"frame"))));
objj_msgSend(_searchFormView,"addSubview:",_languagePopUp);
_titleField=objj_msgSend(CPTextField,"textFieldWithStringValue:placeholder:width:","","",_58);
objj_msgSend(_titleField,"setFrameOrigin:",CGPointMake(_5f,CGRectGetMinY(objj_msgSend(_5c,"frame"))+(CGRectGetHeight(objj_msgSend(_5c,"frame"))-CGRectGetHeight(objj_msgSend(_titleField,"frame")))/2));
objj_msgSend(_titleField,"setAutoresizingMask:",CPViewMaxXMargin);
objj_msgSend(_searchFormView,"addSubview:",_titleField);
_yearField=objj_msgSend(CPTextField,"textFieldWithStringValue:placeholder:width:","","",_58/2);
objj_msgSend(_yearField,"setFrameOrigin:",CGPointMake(_5f,CGRectGetMinY(objj_msgSend(_5d,"frame"))+(CGRectGetHeight(objj_msgSend(_5d,"frame"))-CGRectGetHeight(objj_msgSend(_yearField,"frame")))/2));
objj_msgSend(_yearField,"setAutoresizingMask:",CPViewMaxXMargin);
objj_msgSend(_searchFormView,"addSubview:",_yearField);
objj_msgSend(_searchFormView,"addSubview:",_5a);
objj_msgSend(_searchFormView,"addSubview:",_5b);
objj_msgSend(_searchFormView,"addSubview:",_5c);
objj_msgSend(_searchFormView,"addSubview:",_5d);
objj_msgSend(_searchFormView,"setAutoresizingMask:",objj_msgSend(_resultView,"autoresizingMask"));
_submitSearchButton=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Search","Search"));
objj_msgSend(_submitSearchButton,"setTarget:",_4e);
objj_msgSend(_submitSearchButton,"setAction:",sel_getUid("submitSearch:"));
objj_msgSend(_submitSearchButton,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(_titleField,"frame"))-CGRectGetWidth(objj_msgSend(_submitSearchButton,"frame")),CGRectGetMaxY(objj_msgSend(_yearField,"frame"))+5));
objj_msgSend(_searchFormView,"addSubview:",_submitSearchButton);
_cancelSearchButton=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Cancel","Cancel"));
objj_msgSend(_cancelSearchButton,"setTarget:",_4e);
objj_msgSend(_cancelSearchButton,"setAction:",sel_getUid("cancelSearch:"));
objj_msgSend(_cancelSearchButton,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_submitSearchButton,"frame"))-5-CGRectGetWidth(objj_msgSend(_cancelSearchButton,"frame")),CGRectGetMinY(objj_msgSend(_submitSearchButton,"frame"))));
objj_msgSend(_searchFormView,"addSubview:",_cancelSearchButton);
objj_msgSend(_searchFormView,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_searchFormView,"frame")),CGRectGetMaxY(objj_msgSend(_cancelSearchButton,"frame"))+_50));
objj_msgSend(_searchFormView,"setHidden:",YES);
objj_msgSend(_agentPopUp,"setAutoresizingMask:",CPViewMaxXMargin);
objj_msgSend(_titleField,"setAutoresizingMask:",CPViewMaxXMargin);
objj_msgSend(_languagePopUp,"setAutoresizingMask:",CPViewMaxXMargin);
objj_msgSend(_submitSearchButton,"setAutoresizingMask:",CPViewMinXMargin);
objj_msgSend(_cancelSearchButton,"setAutoresizingMask:",CPViewMinXMargin);
objj_msgSend(_view,"addSubview:",_searchFormView);
}
}),new objj_method(sel_getUid("_selectButtonTitle"),function(_60,_61){
with(_60){
var _62={artist:CPLocalizedString("Artist","Artist"),movie:CPLocalizedString("Movie","Movie"),show:CPLocalizedString("Show","Show")}[objj_msgSend(objj_msgSend(metadataItem,"librarySection"),"type")];
return objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Select %@","Confirm button title for selecting"),_62);
}
}),new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"),function(_63,_64,_65,_66,_67,_68){
with(_63){
if(objj_msgSend(_66,"isEqual:",_selectButton)&&_65=="title"){
objj_msgSend(_selectButton,"sizeToFit");
objj_msgSend(_selectButton,"setFrameOrigin:",CPPointMake(CGRectGetWidth(objj_msgSend(objj_msgSend(_selectButton,"superview"),"frame"))-10-CGRectGetWidth(objj_msgSend(_selectButton,"frame")),CGRectGetMinY(objj_msgSend(_searchButton,"frame"))));
}else{
if(objj_msgSend(_66,"isEqual:",_selectButton)&&_65=="frame"){
objj_msgSend(_cancelButton,"setFrameOrigin:",CPPointMake(CGRectGetMinX(objj_msgSend(_selectButton,"frame"))-10-CGRectGetWidth(objj_msgSend(_cancelButton,"frame")),CGRectGetMinY(objj_msgSend(_selectButton,"frame"))));
}else{
if(objj_msgSend(_66,"isEqual:",_matchesTableView)&&_65=="selectedRowIndexes"){
var _69=objj_msgSend(_67,"objectForKey:",CPKeyValueChangeNewKey);
if(objj_msgSend(_69,"count")){
var _6a=objj_msgSend(_searchResults,"objectAtIndex:",objj_msgSend(_69,"firstIndex"));
objj_msgSend(_titleField,"setStringValue:",objj_msgSend(_6a,"name"));
objj_msgSend(_yearField,"setStringValue:",objj_msgSend(_6a,"year"));
objj_msgSend(_selectButton,"setEnabled:",YES);
}else{
objj_msgSend(_titleField,"setStringValue:",objj_msgSend(metadataItem,"title"));
objj_msgSend(_yearField,"setStringValue:",objj_msgSend(metadataItem,"year"));
objj_msgSend(_selectButton,"setEnabled:",NO);
}
}else{
CPLog.warn("[%@ -observeValueForKeyPath:ofObject:change:context:] ignoring unrecognized change notice (%@ @ %@)",_66,_65);
}
}
}
}
}),new objj_method(sel_getUid("_selectSearchResult:"),function(_6b,_6c,_6d){
with(_6b){
if(_6d&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("matchPicker:didSelectSearchResult:"))){
objj_msgSend(_delegate,"matchPicker:didSelectSearchResult:",_6b,_6d);
}
}
}),new objj_method(sel_getUid("_searchResultAtIndex:"),function(_6e,_6f,_70){
with(_6e){
if(_70==CPNotFound||_70>=objj_msgSend(_searchResults,"count")){
return nil;
}
return objj_msgSend(_searchResults,"objectAtIndex:",_70);
}
}),new objj_method(sel_getUid("cancel:"),function(_71,_72,_73){
with(_71){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("matchPickerDidCancel:"))){
objj_msgSend(_delegate,"matchPickerDidCancel:",_71);
}
}
}),new objj_method(sel_getUid("chooseMatch:"),function(_74,_75,_76){
with(_74){
objj_msgSend(_74,"_selectSearchResult:",objj_msgSend(_74,"_searchResultAtIndex:",objj_msgSend(_matchesTableView,"selectedRow")));
}
}),new objj_method(sel_getUid("search:"),function(_77,_78,_79){
with(_77){
objj_msgSend(_77,"_transitionFromSubview:toSubview:",_resultView,_searchFormView);
}
}),new objj_method(sel_getUid("submitSearch:"),function(_7a,_7b,_7c){
with(_7a){
objj_msgSend(_matchesDataSource,"refreshRecordsForMetadataItem:title:agent:language:year:",metadataItem,objj_msgSend(_titleField,"stringValue"),objj_msgSend(_7a,"selectedAgent"),objj_msgSend(_7a,"selectedLanguage"),objj_msgSend(_yearField,"stringValue"));
objj_msgSend(_7a,"_transitionFromSubview:toSubview:",_searchFormView,_resultView);
}
}),new objj_method(sel_getUid("cancelSearch:"),function(_7d,_7e,_7f){
with(_7d){
objj_msgSend(_7d,"_transitionFromSubview:toSubview:",_searchFormView,_resultView);
}
}),new objj_method(sel_getUid("_transitionFromSubview:toSubview:"),function(_80,_81,_82,_83){
with(_80){
objj_msgSend(_80,"_willTransitionFromSubview:toSubview:",_82,_83);
var _84=objj_msgSend(objj_msgSend(_80,"view"),"window"),_85=objj_msgSend(_84,"frame"),_86=objj_msgSend(_83,"frame").size,_87=CGRectMake(CGRectGetMidX(_85)-_86.width/2,CGRectGetMinY(_85),CGRectGetWidth(objj_msgSend(_83,"frame")),CGRectGetHeight(objj_msgSend(_83,"frame"))),_88=objj_msgSend(_84,"animationResizeTime:",_87);
var _89=objj_msgSend(objj_msgSend(CPViewAnimation,"alloc"),"initWithDuration:animationCurve:",_88,CPAnimationLinear);
objj_msgSend(_89,"setViewAnimations:",objj_msgSend(CPArray,"arrayWithObjects:",objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_82,CPViewAnimationTargetKey,objj_msgSend(_82,"frame"),CPViewAnimationStartFrameKey,objj_msgSend(_82,"frame"),CPViewAnimationEndFrameKey,CPViewAnimationFadeOutEffect,CPViewAnimationEffectKey),objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_83,CPViewAnimationTargetKey,objj_msgSend(_83,"frame"),CPViewAnimationStartFrameKey,objj_msgSend(_83,"frame"),CPViewAnimationEndFrameKey,CPViewAnimationFadeInEffect,CPViewAnimationEffectKey)));
objj_msgSend(_89,"startAnimation");
objj_msgSend(_84,"setFrame:display:animate:",_87,YES,YES);
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",_88,_80,sel_getUid("_didTransitionWithTimer:"),objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_83,"toSubview",_82,"fromSubview"),NO);
}
}),new objj_method(sel_getUid("_didTransitionWithTimer:"),function(_8a,_8b,_8c){
with(_8a){
var _8d=objj_msgSend(_8c,"userInfo"),_8e=objj_msgSend(_8d,"objectForKey:","fromSubview"),_8f=objj_msgSend(_8d,"objectForKey:","toSubview");
objj_msgSend(_8a,"_didTransitionFromSubview:toSubview:",_8e,_8f);
}
}),new objj_method(sel_getUid("_willTransitionFromSubview:toSubview:"),function(_90,_91,_92,_93){
with(_90){
if(objj_msgSend(_93,"isEqual:",_resultView)){
objj_msgSend(_90,"_resultViewWillActivate");
}else{
if(objj_msgSend(_93,"isEqual:",_searchFormView)){
objj_msgSend(_90,"_searchViewWillActivate");
}
}
}
}),new objj_method(sel_getUid("_didTransitionFromSubview:toSubview:"),function(_94,_95,_96,_97){
with(_94){
if(objj_msgSend(_97,"isEqual:",_resultView)){
objj_msgSend(_94,"_resultViewDidActivate");
}else{
if(objj_msgSend(_97,"isEqual:",_searchFormView)){
objj_msgSend(_94,"_searchViewDidActivate");
}
}
}
}),new objj_method(sel_getUid("_resultViewWillActivate"),function(_98,_99){
with(_98){
objj_msgSend(objj_msgSend(objj_msgSend(_98,"view"),"window"),"setDefaultButton:",_selectButton);
objj_msgSend(_cancelButton,"setKeyEquivalent:",CPEscapeFunctionKey);
objj_msgSend(_cancelSearchButton,"setKeyEquivalent:",nil);
}
}),new objj_method(sel_getUid("_resultViewDidActivate"),function(_9a,_9b){
with(_9a){
objj_msgSend(objj_msgSend(objj_msgSend(_9a,"view"),"window"),"makeFirstResponder:",_matchesTableView);
}
}),new objj_method(sel_getUid("_searchViewWillActivate"),function(_9c,_9d){
with(_9c){
objj_msgSend(objj_msgSend(objj_msgSend(_9c,"view"),"window"),"setDefaultButton:",_submitSearchButton);
objj_msgSend(_cancelSearchButton,"setKeyEquivalent:",CPEscapeFunctionKey);
objj_msgSend(_cancelButton,"setKeyEquivalent:",nil);
}
}),new objj_method(sel_getUid("_searchViewDidActivate"),function(_9e,_9f){
with(_9e){
objj_msgSend(objj_msgSend(objj_msgSend(_9e,"view"),"window"),"makeFirstResponder:",_titleField);
objj_msgSend(_titleField,"selectAll:",_9e);
}
}),new objj_method(sel_getUid("tableViewRowWasDoubleClicked:"),function(_a0,_a1,_a2){
with(_a0){
objj_msgSend(_a0,"_selectSearchResult:",objj_msgSend(_a0,"_searchResultAtIndex:",objj_msgSend(_matchesTableView,"clickedRow")));
}
}),new objj_method(sel_getUid("numberOfRowsInTableView:"),function(_a3,_a4,_a5){
with(_a3){
return objj_msgSend(_searchResults,"count");
}
}),new objj_method(sel_getUid("tableView:objectValueForTableColumn:row:"),function(_a6,_a7,_a8,_a9,_aa){
with(_a6){
return objj_msgSend(objj_msgSend(_searchResults,"objectAtIndex:",_aa),"valueForKey:",objj_msgSend(_a9,"identifier"));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("keyPathsForValuesAffectingMediaItemFileName"),function(_ab,_ac){
with(_ab){
return objj_msgSend(CPSet,"setWithObjects:","metadataItemWithFilePart","metadataItemWithFilePart.mainMediaItem.mainPart","metadataItemWithFilePart.mainMediaItem.mainPart.file");
}
})]);
p;20;Models/MMMediaItem.jt;1836;@STATIC;1.0;I;18;Foundation/CPSet.ji;10;MMRecord.ji;18;MMLibrarySection.ji;17;MMMediaItemPart.ji;8;PMSURL.jt;1722;
objj_executeFile("Foundation/CPSet.j",NO);
objj_executeFile("MMRecord.j",YES);
objj_executeFile("MMLibrarySection.j",YES);
objj_executeFile("MMMediaItemPart.j",YES);
objj_executeFile("PMSURL.j",YES);
var _1=objj_allocateClassPair(MMRecord,"MMMediaItem"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("metadataItem"),new objj_ivar("parts")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("metadataItem"),function(_3,_4){
with(_3){
return metadataItem;
}
}),new objj_method(sel_getUid("setMetadataItem:"),function(_5,_6,_7){
with(_5){
metadataItem=_7;
}
}),new objj_method(sel_getUid("parts"),function(_8,_9){
with(_8){
return parts;
}
}),new objj_method(sel_getUid("setParts:"),function(_a,_b,_c){
with(_a){
if(parts!==_c){
parts=objj_msgSend(_c,"copy");
}
}
}),new objj_method(sel_getUid("mainPart"),function(_d,_e){
with(_d){
if(objj_msgSend(parts,"count")==0){
return nil;
}
return objj_msgSend(parts,"objectAtIndex:",0);
}
}),new objj_method(sel_getUid("size"),function(_f,_10){
with(_f){
var _11=0;
for(var i=0,_12=objj_msgSend(parts,"count");i<_12;i++){
_11+=objj_msgSend(parts[i],"size");
}
return _11;
}
}),new objj_method(sel_getUid("setMetadataItem:"),function(_13,_14,_15){
with(_13){
if(metadataItem==_15){
return;
}
var _16=metadataItem,_17=_15;
metadataItem=_17;
objj_msgSend(_16,"removeMediaItem:",_13);
objj_msgSend(_17,"addMediaItem:",_13);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("keyPathsForValuesAffectingMainPart"),function(_18,_19){
with(_18){
return objj_msgSend(CPSet,"setWithObject:","parts");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingSize"),function(_1a,_1b){
with(_1a){
return objj_msgSend(CPSet,"setWithObjects:","parts");
}
})]);
p;25;Models/MMLibrarySection.jt;7087;@STATIC;1.0;i;10;MMRecord.ji;8;PMSURL.jt;7041;
objj_executeFile("MMRecord.j",YES);
objj_executeFile("PMSURL.j",YES);
MMLibrarySectionTypeMovie="movie";
MMLibrarySectionTypeShow="show";
MMLibrarySectionTypeSeason="season";
MMLibrarySectionTypeEpisode="episode";
MMLibrarySectionTypeTrailer="trailer";
MMLibrarySectionTypeComic="comic";
MMLibrarySectionTypePerson="person";
MMLibrarySectionTypeArtist="artist";
MMLibrarySectionTypeAlbum="album";
MMLibrarySectionTypeTrack="track";
MMLibrarySectionTypePicture="picture";
MMLibrarySectionTypeClip="clip";
MMLibrarySectionDefaultMoviesAgent="com.plexapp.agents.imdb";
MMLibrarySectionDefaultTVAgent="com.plexapp.agents.thetvdb";
MMLibrarySectionDefaultHomeMoviesAgent="com.plexapp.agents.none";
MMLibrarySectionDefaultArtistAgent="com.plexapp.agents.lastfm";
var _1=objj_allocateClassPair(MMRecord,"MMLibrarySection"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_title"),new objj_ivar("_type"),new objj_ivar("_agent"),new objj_ivar("_scanner"),new objj_ivar("_language"),new objj_ivar("_locations"),new objj_ivar("updatedAt"),new objj_ivar("updateQueueSize"),new objj_ivar("trashedItems"),new objj_ivar("_refreshing")]);
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
return updatedAt;
}
}),new objj_method(sel_getUid("setUpdatedAt:"),function(_23,_24,_25){
with(_23){
updatedAt=_25;
}
}),new objj_method(sel_getUid("updateQueueSize"),function(_26,_27){
with(_26){
return updateQueueSize;
}
}),new objj_method(sel_getUid("setUpdateQueueSize:"),function(_28,_29,_2a){
with(_28){
updateQueueSize=_2a;
}
}),new objj_method(sel_getUid("trashedItems"),function(_2b,_2c){
with(_2b){
return trashedItems;
}
}),new objj_method(sel_getUid("isRefreshing"),function(_2d,_2e){
with(_2d){
return _refreshing;
}
}),new objj_method(sel_getUid("setRefreshing:"),function(_2f,_30,_31){
with(_2f){
_refreshing=_31;
}
}),new objj_method(sel_getUid("init"),function(_32,_33){
with(_32){
if(_32=objj_msgSendSuper({receiver:_32,super_class:objj_getClass("MMLibrarySection").super_class},"init")){
trashedItems=objj_msgSend(CPMutableSet,"set");
}
return _32;
}
}),new objj_method(sel_getUid("key"),function(_34,_35){
with(_34){
return objj_msgSend(_34,"id");
}
}),new objj_method(sel_getUid("setKey:"),function(_36,_37,_38){
with(_36){
objj_msgSend(_36,"setId:",_38);
}
}),new objj_method(sel_getUid("setAgent:"),function(_39,_3a,_3b){
with(_39){
if(objj_msgSend(_3b,"isKindOfClass:",CPString)){
_agent=objj_msgSend(objj_msgSend(MMAgent,"alloc"),"initWithIdentifier:",_3b);
}else{
if(objj_msgSend(_3b,"isKindOfClass:",MMAgent)){
_agent=_3b;
}else{
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(CPString,"stringWithFormat:","agent must be of type %@",MMAgent));
}
}
}
}),new objj_method(sel_getUid("setLanguage:"),function(_3c,_3d,_3e){
with(_3c){
if(objj_msgSend(_3e,"isKindOfClass:",CPString)){
_language=objj_msgSend(objj_msgSend(LanguageConfig,"alloc"),"initWithCode:",_3e);
}else{
if(objj_msgSend(_3e,"isKindOfClass:",LanguageConfig)){
_language=_3e;
}else{
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,objj_msgSend(CPString,"stringWithFormat:","language must be of type %@",LanguageConfig));
}
}
}
}),new objj_method(sel_getUid("setUpdatedAt:"),function(_3f,_40,_41){
with(_3f){
updatedAt=objj_msgSend(_3f,"parseDate:",_41);
}
}),new objj_method(sel_getUid("setUpdateQueueSize:"),function(_42,_43,_44){
with(_42){
if(objj_msgSend(_44,"isKindOfClass:",CPString)){
_44=Number(_44);
}
updateQueueSize=_44;
}
}),new objj_method(sel_getUid("setRefreshing:"),function(_45,_46,_47){
with(_45){
if(typeof _47=="string"){
_47=(_47=="1");
}
_refreshing=!!_47;
}
}),new objj_method(sel_getUid("addTrashedItem:"),function(_48,_49,_4a){
with(_48){
objj_msgSend(_48,"willChangeValueForKey:","trashedItems");
objj_msgSend(trashedItems,"addObject:",_4a);
objj_msgSend(_48,"didChangeValueForKey:","trashedItems");
}
}),new objj_method(sel_getUid("removeTrashedItem:"),function(_4b,_4c,_4d){
with(_4b){
objj_msgSend(_4b,"willChangeValueForKey:","trashedItems");
objj_msgSend(trashedItems,"removeObject:",_4d);
objj_msgSend(_4b,"didChangeValueForKey:","trashedItems");
}
}),new objj_method(sel_getUid("emptyTrash"),function(_4e,_4f){
with(_4e){
var _50=objj_msgSend(CPURLRequest,"requestWithURL:",objj_msgSend(_4e,"URLWithSuffix:","/emptyTrash"));
objj_msgSend(_50,"setHTTPMethod:","PUT");
objj_msgSend(MMURLConnection,"connectionWithRequest:delegate:",_50,_4e);
}
}),new objj_method(sel_getUid("allMediaItemsURL"),function(_51,_52){
with(_51){
return objj_msgSend(_51,"URLWithSuffix:","/all");
}
}),new objj_method(sel_getUid("URL"),function(_53,_54){
with(_53){
return objj_msgSend(_53,"URLWithSuffix:","");
}
}),new objj_method(sel_getUid("URLWithSuffix:"),function(_55,_56,_57){
with(_55){
return objj_msgSend(PMSURL,"URLWithPath:",objj_msgSend(CPString,"stringWithFormat:","/library/sections/%@%@",objj_msgSend(_55,"key"),_57));
}
}),new objj_method(sel_getUid("isEqual:"),function(_58,_59,_5a){
with(_58){
return objj_msgSend(_5a,"isKindOfClass:",objj_msgSend(_58,"class"))&&objj_msgSend(objj_msgSend(_58,"key"),"isEqualToString:",objj_msgSend(_5a,"key"));
}
}),new objj_method(sel_getUid("description"),function(_5b,_5c){
with(_5b){
return objj_msgSend(CPString,"stringWithFormat:","{%@ title=%@, key=%@, type=%@}",objj_msgSend(_5b,"class"),objj_msgSend(_5b,"title"),objj_msgSend(_5b,"key"),objj_msgSend(_5b,"type"));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("keyPathsForValuesAffectingKey"),function(_5d,_5e){
with(_5d){
return objj_msgSend(CPSet,"setWithObject:","id");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingId"),function(_5f,_60){
with(_5f){
return objj_msgSend(CPSet,"setWithObject:","key");
}
}),new objj_method(sel_getUid("keyFromURL:"),function(_61,_62,URL){
with(_61){
if(!URL){
return nil;
}
var _63=objj_msgSend(URL,"absoluteString").match(/\/library\/sections\/([^\/]+)/i);
if(!_63){
return nil;
}
return _63[1];
}
})]);
p;16;Models/MMAgent.jt;2310;@STATIC;1.0;I;21;Foundation/CPObject.jt;2265;
objj_executeFile("Foundation/CPObject.j",NO);
var _1=objj_allocateClassPair(CPObject,"MMAgent"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("name"),new objj_ivar("identifier"),new objj_ivar("languages"),new objj_ivar("mediaType"),new objj_ivar("primary")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("name"),function(_3,_4){
with(_3){
return name;
}
}),new objj_method(sel_getUid("setName:"),function(_5,_6,_7){
with(_5){
name=_7;
}
}),new objj_method(sel_getUid("identifier"),function(_8,_9){
with(_8){
return identifier;
}
}),new objj_method(sel_getUid("setIdentifier:"),function(_a,_b,_c){
with(_a){
identifier=_c;
}
}),new objj_method(sel_getUid("languages"),function(_d,_e){
with(_d){
return languages;
}
}),new objj_method(sel_getUid("setLanguages:"),function(_f,_10,_11){
with(_f){
languages=_11;
}
}),new objj_method(sel_getUid("mediaType"),function(_12,_13){
with(_12){
return mediaType;
}
}),new objj_method(sel_getUid("setMediaType:"),function(_14,_15,_16){
with(_14){
mediaType=_16;
}
}),new objj_method(sel_getUid("isPrimary"),function(_17,_18){
with(_17){
return primary;
}
}),new objj_method(sel_getUid("setPrimary:"),function(_19,_1a,_1b){
with(_19){
primary=_1b;
}
}),new objj_method(sel_getUid("initWithIdentifier:"),function(_1c,_1d,_1e){
with(_1c){
if(_1c=objj_msgSend(_1c,"init")){
objj_msgSend(_1c,"setIdentifier:",_1e);
}
return _1c;
}
}),new objj_method(sel_getUid("isEqual:"),function(_1f,_20,_21){
with(_1f){
return objj_msgSend(_21,"isKindOfClass:",objj_msgSend(_1f,"class"))&&objj_msgSend(objj_msgSend(_21,"identifier"),"isEqualToString:",objj_msgSend(_1f,"identifier"));
}
}),new objj_method(sel_getUid("description"),function(_22,_23){
with(_22){
return objj_msgSend(CPString,"stringWithFormat:","%@ (%@)",name,identifier);
}
}),new objj_method(sel_getUid("asURLParam"),function(_24,_25){
with(_24){
return identifier;
}
}),new objj_method(sel_getUid("copy"),function(_26,_27){
with(_26){
var _28=objj_msgSend(objj_msgSend(objj_msgSend(_26,"class"),"alloc"),"initWithIdentifier:",identifier);
objj_msgSend(_28,"setName:",name);
objj_msgSend(_28,"setLanguages:",objj_msgSend(languages,"copy"));
objj_msgSend(_28,"setMediaType:",mediaType);
objj_msgSend(_28,"setPrimary:",primary);
return _28;
}
})]);
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
p;17;MMURLConnection.jt;1881;@STATIC;1.0;I;27;Foundation/CPUserDefaults.ji;13;PMSSecurity.ji;40;Controllers/MMAuthenticationController.jt;1767;
objj_executeFile("Foundation/CPUserDefaults.j",NO);
objj_executeFile("PMSSecurity.j",YES);
objj_executeFile("Controllers/MMAuthenticationController.j",YES);
var _1=objj_allocateClassPair(CPURLConnection,"MMURLConnection"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithRequest:delegate:startImmediately:"),function(_3,_4,_5,_6,_7){
with(_3){
var _8=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("MMURLConnection").super_class},"initWithRequest:delegate:startImmediately:",_5,_6,NO);
_isLocalFileConnection=NO;
objj_msgSend(_3,"setAuthenticationHeaders");
if(_7){
objj_msgSend(_3,"start");
}
return _8;
}
}),new objj_method(sel_getUid("setAuthenticationHeaders"),function(_9,_a){
with(_9){
var _b=objj_msgSend(objj_msgSend(PMSSecurity,"sharedSecurity"),"username"),_c=objj_msgSend(objj_msgSend(PMSSecurity,"sharedSecurity"),"hashedPassword");
if(_b&&_c){
objj_msgSend(_request,"setValue:forHTTPHeaderField:",_b,"X-Plex-User");
objj_msgSend(_request,"setValue:forHTTPHeaderField:",_c,"X-Plex-Pass");
}
}
}),new objj_method(sel_getUid("_readyStateDidChange"),function(_d,_e){
with(_d){
if(_HTTPRequest.readyState()===CFHTTPRequest.CompleteState){
var _f=_HTTPRequest.status();
if(_f===406||_f===401){
objj_msgSend(objj_msgSend(MMAuthenticationController,"sharedAuthenticationController"),"connectionDidReceiveAuthenticationChallenge:",_d);
}else{
objj_msgSend(objj_msgSend(MMAuthenticationController,"sharedAuthenticationController"),"connectionSucceeded:",_d);
objj_msgSendSuper({receiver:_d,super_class:objj_getClass("MMURLConnection").super_class},"_readyStateDidChange");
}
}else{
objj_msgSendSuper({receiver:_d,super_class:objj_getClass("MMURLConnection").super_class},"_readyStateDidChange");
}
}
})]);
p;40;Controllers/MMAuthenticationController.jt;7372;@STATIC;1.0;I;21;Foundation/CPObject.ji;16;../PMSSecurity.jt;7306;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("../PMSSecurity.j",YES);
var _1=nil;
var _2=objj_allocateClassPair(CPObject,"MMAuthenticationController"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("loginPrompt"),new objj_ivar("usernameField"),new objj_ivar("passwordField"),new objj_ivar("rememberMeCheckbox"),new objj_ivar("authenticateButton"),new objj_ivar("connectionsToRetry"),new objj_ivar("displayingLoginPrompt"),new objj_ivar("enabled")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("enabled"),function(_4,_5){
with(_4){
return enabled;
}
}),new objj_method(sel_getUid("setEnabled:"),function(_6,_7,_8){
with(_6){
enabled=_8;
}
}),new objj_method(sel_getUid("init"),function(_9,_a){
with(_9){
if(_9=objj_msgSendSuper({receiver:_9,super_class:objj_getClass("MMAuthenticationController").super_class},"init")){
connectionsToRetry=objj_msgSend(CPArray,"array");
loginPrompt=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(loginPrompt,"setTheme:",objj_msgSend(CPTheme,"defaultHudTheme"));
objj_msgSend(loginPrompt,"setAlertStyle:",CPInformationalAlertStyle);
objj_msgSend(loginPrompt,"setTitle:",CPLocalizedString("Authentication Required","Login prompt title"));
objj_msgSend(loginPrompt,"setMessageText:",CPLocalizedString("Plex Media Server requires a username and password:","Login prompt message"));
objj_msgSend(loginPrompt,"addButtonWithTitle:",CPLocalizedString("Authenticate","Authenticate"));
usernameField=objj_msgSend(CPTextField,"textFieldWithStringValue:placeholder:width:","",CPLocalizedString("Username","Username field placeholder"),309);
objj_msgSend(usernameField,"setDelegate:",_9);
passwordField=objj_msgSend(CPTextField,"textFieldWithStringValue:placeholder:width:","",CPLocalizedString("Password","Password field placeholder"),309);
objj_msgSend(passwordField,"setDelegate:",_9);
objj_msgSend(passwordField,"setFrameOrigin:",CGPointMake(0,CGRectGetMaxY(objj_msgSend(usernameField,"frame"))+5));
objj_msgSend(passwordField,"setSecure:",YES);
rememberMeCheckbox=objj_msgSend(CPCheckBox,"checkBoxWithTitle:",CPLocalizedString("Remember me on this computer","Check box label for the login prompt"));
objj_msgSend(rememberMeCheckbox,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(rememberMeCheckbox,"setFrameOrigin:",CGPointMake(5,CGRectGetMaxY(objj_msgSend(passwordField,"frame"))+5));
var _b=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,309,CGRectGetMaxY(objj_msgSend(rememberMeCheckbox,"frame"))));
objj_msgSend(_b,"addSubview:",usernameField);
objj_msgSend(_b,"addSubview:",passwordField);
objj_msgSend(_b,"addSubview:",rememberMeCheckbox);
objj_msgSend(loginPrompt,"setDelegate:",_9);
objj_msgSend(loginPrompt,"setAccessoryView:",_b);
authenticateButton=objj_msgSend(objj_msgSend(loginPrompt,"buttons"),"objectAtIndex:",0);
objj_msgSend(authenticateButton,"setEnabled:",NO);
objj_msgSend(authenticateButton,"setTarget:",_9);
objj_msgSend(authenticateButton,"setAction:",sel_getUid("authenticate:"));
objj_msgSend(_9,"restoreStateFromUserDefaults");
}
return _9;
}
}),new objj_method(sel_getUid("presentAuthenticationWindow"),function(_c,_d){
with(_c){
if(displayingLoginPrompt&&objj_msgSend(_c,"enabled")){
return;
}
objj_msgSend(_c,"setEnabled:",YES);
if(displayingLoginPrompt){
objj_msgSend(_c,"shakeLoginPrompt");
objj_msgSend(passwordField,"selectAll:",nil);
objj_msgSend(objj_msgSend(passwordField,"window"),"makeFirstResponder:",passwordField);
}else{
objj_msgSend(loginPrompt,"runModal");
objj_msgSend(objj_msgSend(usernameField,"window"),"makeFirstResponder:",usernameField);
}
displayingLoginPrompt=YES;
}
}),new objj_method(sel_getUid("restoreStateFromUserDefaults"),function(_e,_f){
with(_e){
var _10=objj_msgSend(objj_msgSend(PMSSecurity,"sharedSecurity"),"username"),_11=objj_msgSend(objj_msgSend(PMSSecurity,"sharedSecurity"),"password");
objj_msgSend(usernameField,"setStringValue:",_10);
objj_msgSend(passwordField,"setStringValue:",_11);
objj_msgSend(rememberMeCheckbox,"setState:",objj_msgSend(objj_msgSend(PMSSecurity,"sharedSecurity"),"shouldPersistCredentials")?CPOnState:CPOffState);
}
}),new objj_method(sel_getUid("shakeLoginPrompt"),function(_12,_13){
with(_12){
var _14=30,_15=3,_16=0.18,_17=0,_18=objj_msgSend(loginPrompt._window,"frame").origin,_19=_18.x,_1a=_18.y;
for(var i=0;i<_15;i++){
var _1b;
_1b=_16/_15/4;
objj_msgSend(_12,"animateLoginPromptOrigin:duration:afterDelay:",CGPointMake(_19-_14,_1a),_1b,_17);
_17+=_1b;
_1b=_16/_15/2;
objj_msgSend(_12,"animateLoginPromptOrigin:duration:afterDelay:",CGPointMake(_19+_14,_1a),_1b,_17);
_17+=_1b;
_1b=_16/_15/4;
objj_msgSend(_12,"animateLoginPromptOrigin:duration:afterDelay:",CGPointMake(_19,_1a),_1b,_17);
_17+=_1b;
}
}
}),new objj_method(sel_getUid("animateLoginPromptOrigin:duration:afterDelay:"),function(_1c,_1d,_1e,_1f,_20){
with(_1c){
setTimeout(function(){
var _21=loginPrompt._window,_22=objj_msgSend(objj_msgSend(CPViewAnimation,"alloc"),"initWithDuration:animationCurve:",_1f,CPAnimationEaseInOut),_23=objj_msgSend(_21,"frame"),_24=CGRectMake(_1e.x,_1e.y,CGRectGetWidth(_23),CGRectGetHeight(_23));
objj_msgSend(_22,"setViewAnimations:",[objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_21,CPViewAnimationTargetKey,_23,CPViewAnimationStartFrameKey,_24,CPViewAnimationEndFrameKey)]);
objj_msgSend(_22,"startAnimation");
},_20*1000);
}
}),new objj_method(sel_getUid("connectionDidReceiveAuthenticationChallenge:"),function(_25,_26,_27){
with(_25){
objj_msgSend(connectionsToRetry,"addObject:",_27);
objj_msgSend(_27,"cancel");
objj_msgSend(_25,"presentAuthenticationWindow");
}
}),new objj_method(sel_getUid("connectionSucceeded:"),function(_28,_29,_2a){
with(_28){
objj_msgSend(CPApp,"abortModal");
objj_msgSend(loginPrompt._window,"close");
displayingLoginPrompt=NO;
}
}),new objj_method(sel_getUid("authenticate:"),function(_2b,_2c,_2d){
with(_2b){
objj_msgSend(_2b,"setEnabled:",NO);
var _2e=objj_msgSend(usernameField,"stringValue"),_2f=objj_msgSend(passwordField,"stringValue");
objj_msgSend(objj_msgSend(PMSSecurity,"sharedSecurity"),"setUsername:",_2e);
objj_msgSend(objj_msgSend(PMSSecurity,"sharedSecurity"),"setPassword:",_2f);
objj_msgSend(objj_msgSend(PMSSecurity,"sharedSecurity"),"setShouldPersistCredentials:",objj_msgSend(rememberMeCheckbox,"state")==CPOnState);
var _30=nil;
while(_30=connectionsToRetry.shift()){
objj_msgSend(_30,"setAuthenticationHeaders");
objj_msgSend(_30,"start");
}
}
}),new objj_method(sel_getUid("controlTextDidChange:"),function(_31,_32,_33){
with(_31){
objj_msgSend(authenticateButton,"setEnabled:",objj_msgSend(usernameField,"stringValue")&&objj_msgSend(passwordField,"stringValue"));
}
}),new objj_method(sel_getUid("setEnabled:"),function(_34,_35,_36){
with(_34){
_36=!!_36;
if(enabled===_36){
return;
}
enabled=_36;
objj_msgSend(authenticateButton,"setEnabled:",enabled&&objj_msgSend(usernameField,"stringValue")&&objj_msgSend(passwordField,"stringValue"));
objj_msgSend(usernameField,"setEnabled:",enabled);
objj_msgSend(passwordField,"setEnabled:",enabled);
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("sharedAuthenticationController"),function(_37,_38){
with(_37){
if(!_1){
_1=objj_msgSend(objj_msgSend(_37,"alloc"),"init");
objj_msgSend(MMURLConnection,"setClassDelegate:",_1);
}
return _1;
}
})]);
p;24;Models/MMMediaItemPart.jt;948;@STATIC;1.0;i;10;MMRecord.jt;915;
objj_executeFile("MMRecord.j",YES);
var _1=objj_allocateClassPair(MMRecord,"MMMediaItemPart"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_file"),new objj_ivar("_size")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("file"),function(_3,_4){
with(_3){
return _file;
}
}),new objj_method(sel_getUid("setFile:"),function(_5,_6,_7){
with(_5){
_file=_7;
}
}),new objj_method(sel_getUid("size"),function(_8,_9){
with(_8){
return _size;
}
}),new objj_method(sel_getUid("setSize:"),function(_a,_b,_c){
with(_a){
_size=_c;
}
}),new objj_method(sel_getUid("key"),function(_d,_e){
with(_d){
return objj_msgSend(_d,"id");
}
}),new objj_method(sel_getUid("setKey:"),function(_f,_10,_11){
with(_f){
objj_msgSend(_f,"setId:",_11);
}
}),new objj_method(sel_getUid("setSize:"),function(_12,_13,_14){
with(_12){
if(objj_msgSend(_14,"isKindOfClass:",CPString)){
_14=Number(_14);
}
_size=_14;
}
})]);
p;38;DataSources/MMMediaMatchesDataSource.jt;3326;@STATIC;1.0;i;14;MMDataSource.ji;26;../Models/MMSearchResult.ji;26;../Models/MMMetadataItem.ji;19;../Models/MMAgent.ji;18;../Models/PMSURL.ji;27;../CPDictionary+URLParams.jt;3147;
objj_executeFile("MMDataSource.j",YES);
objj_executeFile("../Models/MMSearchResult.j",YES);
objj_executeFile("../Models/MMMetadataItem.j",YES);
objj_executeFile("../Models/MMAgent.j",YES);
objj_executeFile("../Models/PMSURL.j",YES);
objj_executeFile("../CPDictionary+URLParams.j",YES);
var _1=objj_allocateClassPair(MMDataSource,"MMMediaMatchesDataSource"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("refreshRecordsForMetadataItem:title:agent:language:year:"),function(_3,_4,_5,_6,_7,_8,_9){
with(_3){
objj_msgSend(_3,"refreshRecordsWithContextInfo:",objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_5||objj_msgSend(CPNull,"null"),"metadataItem",_6||objj_msgSend(CPNull,"null"),"title",_9||objj_msgSend(CPNull,"null"),"year",_7||objj_msgSend(CPNull,"null"),"agent",_8||objj_msgSend(CPNull,"null"),"language"));
}
}),new objj_method(sel_getUid("selectMatch:forMetadataItem:"),function(_a,_b,_c,_d){
with(_a){
objj_msgSend(_a,"updateRecord:contextInfo:URL:HTTPBody:",_c,_d,objj_msgSend(_a,"URLForUpdatedRecord:action:params:",_d,"match",objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[objj_msgSend(_c,"name"),objj_msgSend(_c,"guid")],["name","guid"])),objj_msgSend(_a,"HTTPBodyForUpdatedRecord:contextInfo:",_c,_d));
}
}),new objj_method(sel_getUid("refreshMatchForMetadataItem:"),function(_e,_f,_10){
with(_e){
objj_msgSend(_e,"updateRecord:contextInfo:URL:HTTPBody:",nil,_10,objj_msgSend(_e,"URLForUpdatedRecord:action:params:",_10,"refresh",nil),nil);
}
}),new objj_method(sel_getUid("unmatchItem:"),function(_11,_12,_13){
with(_11){
objj_msgSend(_11,"updateRecord:contextInfo:URL:HTTPBody:",nil,_13,objj_msgSend(_11,"URLForUpdatedRecord:action:params:",_13,"unmatch",nil),nil);
}
}),new objj_method(sel_getUid("URLForUpdatedRecord:action:params:"),function(_14,_15,_16,_17,_18){
with(_14){
return objj_msgSend(PMSURL,"URLWithPath:params:",objj_msgSend(CPString,"stringWithFormat:","/library/metadata/%@/%@",objj_msgSend(_16,"id"),_17),_18);
}
}),new objj_method(sel_getUid("URLForRecordsWithContextInfo:"),function(_19,_1a,_1b){
with(_19){
var _1c,_1d;
if(objj_msgSend(_1b,"isKindOfClass:",MMMetadataItem)){
_1c=_1b,_1d=nil;
}else{
if(objj_msgSend(_1b,"isKindOfClass:",CPDictionary)){
_1b=objj_msgSend(_1b,"copy");
_1c=objj_msgSend(_1b,"objectForKey:","metadataItem");
objj_msgSend(_1b,"removeObjectForKey:","metadataItem");
_1d=objj_msgSend(_1b,"URLParamsOmittingNullValues:",YES);
}
}
return objj_msgSend(PMSURL,"URLWithPath:query:",objj_msgSend(CPString,"stringWithFormat:","/library/metadata/%@/matches",objj_msgSend(_1c,"id")),_1d);
}
}),new objj_method(sel_getUid("HTTPBodyForUpdatedRecord:contextInfo:"),function(_1e,_1f,_20,_21){
with(_1e){
return nil;
}
}),new objj_method(sel_getUid("shouldProcessNode:contextInfo:"),function(_22,_23,_24,_25){
with(_22){
return String(_24.nodeName)=="SearchResult";
}
}),new objj_method(sel_getUid("recordFromElement:contextInfo:"),function(_26,_27,_28,_29){
with(_26){
var _2a=objj_msgSend(objj_msgSend(MMSearchResult,"alloc"),"init");
objj_msgSend(_2a,"setValuesForNodeAttributes:ignoreUndefinedKeys:",_28,YES);
return _2a;
}
})]);
p;26;DataSources/MMDataSource.jt;22988;@STATIC;1.0;I;21;Foundation/CPObject.jI;18;Foundation/CPURL.ji;20;../MMURLConnection.ji;13;MMDataStore.jt;22876;
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
if(_7b.nodeType==1&&(!_75||objj_msgSend(_70,"shouldProcessNode:contextInfo:",_7b,_74))){
_77=objj_msgSend(_77,"arrayByAddingObjectsFromArray:",objj_msgSend(_70,"recordsFromElement:contextInfo:",_7b,_74));
}
}
for(var i=0,_7a=objj_msgSend(_77,"count");i<_7a;i++){
var _7c=_77[i];
if(objj_msgSend(_7c,"respondsToSelector:",sel_getUid("acceptChangedAttributes"))){
objj_msgSend(_7c,"acceptChangedAttributes");
}
}
if(_76){
for(var i=0,_7a=objj_msgSend(_77,"count");i<_7a;i++){
if(_7b.nodeType==1&&objj_msgSend(_70,"shouldSelectRecord:element:contextInfo:",_77[i],_7b,_74)){
objj_msgSend(_79,"addIndex:",i);
}
}
}
objj_msgSend(_70,"didReceiveRecords:connection:contextInfo:",_77,_73,_74);
if(_76){
objj_msgSend(_70,"setSelectionIndexes:",_79);
}
CPLog.trace("[%@ -didReceiveRecordsAsData:connection:contextInfo:] END",objj_msgSend(_70,"class"));
}
}),new objj_method(sel_getUid("recordsFromElement:contextInfo:"),function(_7d,_7e,_7f,_80){
with(_7d){
return objj_msgSend(CPArray,"arrayWithObject:",objj_msgSend(_7d,"recordFromElement:contextInfo:",_7f,_80));
}
}),new objj_method(sel_getUid("didFailToReceiveRecordsWithError:contextInfo:"),function(_81,_82,_83,_84){
with(_81){
CPLog.trace("[%@ -didFailToReceiveRecordsWithError:contextInfo:] START",objj_msgSend(_81,"class"));
if(delegateRespondsTo_dataSource_didFailToReceiveRecords_withError_contextInfo){
objj_msgSend(delegate,"dataSource:didFailToReceiveRecordsWithError:contextInfo:",_81,_83,_84);
}
objj_msgSend(notificationCenter,"postNotificationName:object:userInfo:",MMDataSourceDidFailToReceiveRecords,_81,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_84,"contextInfo"));
CPLog.trace("[%@ -didFailToReceiveRecordsWithError:contextInfo:] END",objj_msgSend(_81,"class"));
}
}),new objj_method(sel_getUid("didDeleteRecord:contextInfo:"),function(_85,_86,_87,_88){
with(_85){
if(delegateRespondsTo_dataSource_didDeleteRecord_contextInfo){
objj_msgSend(delegate,"dataSource:didDeleteRecord:contextInfo:",_85,_87,_88);
}
objj_msgSend(notificationCenter,"postNotificationName:object:userInfo:",MMDataSourceDidDeleteRecord,_85,objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_88,_87],["contextInfo","record"]));
}
}),new objj_method(sel_getUid("didFailToDeleteRecord:withError:contextInfo:"),function(_89,_8a,_8b,_8c,_8d){
with(_89){
CPLog.trace("[%@ -didFailToDeleteRecord:withError:contextInfo:] START",objj_msgSend(_89,"class"));
if(delegateRespondsTo_dataSource_didFailToDeleteRecord_withError_contextInfo){
objj_msgSend(delegate,"dataSource:didFailToDeleteRecord:withError:contextInfo:",_89,_8b,_8c,_8d);
}
objj_msgSend(notificationCenter,"postNotificationName:object:userInfo:",MMDataSourceDidFailToDeleteRecord,_89,objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_8d,_8b,_8c],["contextInfo","record","error"]));
CPLog.trace("[%@ -didFailToDeleteRecord:withError:contextInfo:] END",objj_msgSend(_89,"class"));
}
}),new objj_method(sel_getUid("didUpdateRecord:contextInfo:"),function(_8e,_8f,_90,_91){
with(_8e){
if(objj_msgSend(_90,"respondsToSelector:",sel_getUid("acceptChangedAttributes"))){
objj_msgSend(_90,"acceptChangedAttributes");
}
if(delegateRespondsTo_dataSource_didUpdateRecord_contextInfo){
objj_msgSend(delegate,"dataSource:didUpdateRecord:contextInfo:",_8e,_90,_91);
}
objj_msgSend(notificationCenter,"postNotificationName:object:userInfo:",MMDataSourceDidUpdateRecord,_8e,objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_91,_90],["contextInfo","record"]));
}
}),new objj_method(sel_getUid("didFailToUpdateRecord:withError:contextInfo:"),function(_92,_93,_94,_95,_96){
with(_92){
CPLog.trace("[%@ -didFailToUpdateRecord:withError:contextInfo:] START",objj_msgSend(_92,"class"));
if(delegateRespondsTo_dataSource_didFailToUpdateRecord_withError_contextInfo){
objj_msgSend(delegate,"dataSource:didFailToUpdateRecord:withError:contextInfo:",_92,_94,_95,_96);
}
objj_msgSend(notificationCenter,"postNotificationName:object:userInfo:",MMDataSourceDidFailToUpdateRecord,_92,objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_96,_94,_95],["contextInfo","record","error"]));
CPLog.trace("[%@ -didFailToUpdateRecord:withError:contextInfo:] END",objj_msgSend(_92,"class"));
}
}),new objj_method(sel_getUid("didCreateRecord:contextInfo:"),function(_97,_98,_99,_9a){
with(_97){
objj_msgSend(dataStore,"storeRecord:",_99);
objj_msgSend(_99,"acceptChangedAttributes");
if(delegateRespondsTo_dataSource_didCreateRecord_contextInfo){
objj_msgSend(delegate,"dataSource:didCreateRecord:contextInfo:",_97,_99,_9a);
}
objj_msgSend(notificationCenter,"postNotificationName:object:userInfo:",MMDataSourceDidCreateRecord,_97,objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_9a,_99],["contextInfo","record"]));
}
}),new objj_method(sel_getUid("didFailToCreateRecord:withError:contextInfo:"),function(_9b,_9c,_9d,_9e,_9f){
with(_9b){
CPLog.trace("[%@ -didFailToCreateRecord:withError:contextInfo:] START",objj_msgSend(_9b,"class"));
if(delegateRespondsTo_dataSource_didFailToCreateRecord_withError_contextInfo){
objj_msgSend(delegate,"dataSource:didFailToCreateRecord:withError:contextInfo:",_9b,_9d,_9e,_9f);
}
objj_msgSend(notificationCenter,"postNotificationName:object:userInfo:",MMDataSourceDidFailToCreateRecord,_9b,objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_9f,_9d,_9e],["contextInfo","record","error"]));
CPLog.trace("[%@ -didFailToCreateRecord:withError:contextInfo:] END",objj_msgSend(_9b,"class"));
}
}),new objj_method(sel_getUid("connection:didReceiveResponse:"),function(_a0,_a1,_a2,_a3){
with(_a0){
var _a4=objj_msgSend(_a3,"respondsToSelector:",sel_getUid("statusCode"))&&objj_msgSend(_a3,"statusCode");
CPLog.trace("[%@ -connection:didReceiveResponse:] START (statusCode=%@)",objj_msgSend(_a0,"class"),_a4);
objj_msgSend(statusCodeByConnection,"setObject:forKey:",_a4,_a2);
CPLog.trace("[%@ -connection:didReceiveResponse:] END",objj_msgSend(_a0,"class"));
}
}),new objj_method(sel_getUid("connection:didReceiveData:"),function(_a5,_a6,_a7,_a8){
with(_a5){
CPLog.trace("[%@ -connection:didReceiveData:] START",objj_msgSend(_a5,"class"));
var _a9=objj_msgSend(statusCodeByConnection,"objectForKey:",_a7),_aa=objj_msgSend(contextInfoByConnection,"objectForKey:",_a7);
if(!_a9||_a9>=400){
objj_msgSend(_a5,"connection:didFailWithError:",_a7,_a8);
}else{
if(objj_msgSend(recordsByRefreshConnection,"containsKey:",_a7)){
objj_msgSend(_a5,"didReceiveRecordsAsData:connection:contextInfo:",_a8,_a7,_aa);
}else{
if(objj_msgSend(recordsByDeleteConnection,"containsKey:",_a7)){
var _ab=objj_msgSend(recordsByDeleteConnection,"objectForKey:",_a7);
objj_msgSend(_a5,"didDeleteRecord:contextInfo:",_ab,_aa);
}else{
if(objj_msgSend(recordsByCreateConnection,"containsKey:",_a7)){
var _ab=objj_msgSend(recordsByCreateConnection,"objectForKey:",_a7);
objj_msgSend(_a5,"didCreateRecord:contextInfo:",_ab,_aa);
}else{
if(objj_msgSend(recordsByUpdateConnection,"containsKey:",_a7)){
var _ab=objj_msgSend(recordsByUpdateConnection,"objectForKey:",_a7);
objj_msgSend(_a5,"didUpdateRecord:contextInfo:",_ab,_aa);
}else{
CPLog.warn("[%@ -connection:didReceiveData:] got message for unknown connection: %@ data: %@",objj_msgSend(_a5,"class"),_a7,_a8);
}
}
}
}
}
objj_msgSend(recordsByRefreshConnection,"removeObjectForKey:",_a7);
objj_msgSend(recordsByDeleteConnection,"removeObjectForKey:",_a7);
objj_msgSend(recordsByCreateConnection,"removeObjectForKey:",_a7);
objj_msgSend(recordsByUpdateConnection,"removeObjectForKey:",_a7);
objj_msgSend(contextInfoByConnection,"removeObjectForKey:",_a7);
CPLog.trace("[%@ -connection:didReceiveData:] END",objj_msgSend(_a5,"class"));
}
}),new objj_method(sel_getUid("connection:didFailWithError:"),function(_ac,_ad,_ae,_af){
with(_ac){
CPLog.trace("[%@ -connection:didFailWithError:] START (error=%@)",objj_msgSend(_ac,"class"),_af);
if(objj_msgSend(recordsByRefreshConnection,"containsKey:",_ae)){
objj_msgSend(recordsByRefreshConnection,"removeObjectForKey:",_ae);
objj_msgSend(_ac,"didFailToReceiveRecordsWithError:contextInfo:",_af,objj_msgSend(contextInfoByConnection,"objectForKey:",_ae));
}else{
if(objj_msgSend(recordsByDeleteConnection,"containsKey:",_ae)){
var _b0=objj_msgSend(recordsByDeleteConnection,"objectForKey:",_ae);
objj_msgSend(recordsByDeleteConnection,"removeObjectForKey:",_ae);
objj_msgSend(_ac,"didFailToDeleteRecord:withError:contextInfo:",_b0,_af,objj_msgSend(contextInfoByConnection,"objectForKey:",_ae));
}else{
if(objj_msgSend(recordsByCreateConnection,"containsKey:",_ae)){
var _b0=objj_msgSend(recordsByCreateConnection,"objectForKey:",_ae);
objj_msgSend(recordsByCreateConnection,"removeObjectForKey:",_ae);
objj_msgSend(_ac,"didFailToCreateRecord:withError:contextInfo:",_b0,_af,objj_msgSend(contextInfoByConnection,"objectForKey:",_ae));
}else{
if(objj_msgSend(recordsByUpdateConnection,"containsKey:",_ae)){
var _b0=objj_msgSend(recordsByUpdateConnection,"objectForKey:",_ae);
objj_msgSend(recordsByUpdateConnection,"removeObjectForKey:",_ae);
objj_msgSend(_ac,"didFailToUpdateRecord:withError:contextInfo:",_b0,_af,objj_msgSend(contextInfoByConnection,"objectForKey:",_ae));
}
}
}
}
CPLog.trace("[%@ -connection:didFailWithError:] END",objj_msgSend(_ac,"class"));
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("sharedDataSource"),function(_b1,_b2){
with(_b1){
var _b3=objj_msgSend(_1,"objectForKey:",CPStringFromClass(_b1));
if(!_b3){
_b3=objj_msgSend(objj_msgSend(_b1,"alloc"),"init");
objj_msgSend(_1,"setObject:forKey:",_b3,CPStringFromClass(_b1));
}
return _b3;
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
p;31;DataSources/MMAgentDataSource.jt;4710;@STATIC;1.0;i;14;MMDataSource.ji;19;../Models/MMAgent.ji;26;../Models/LanguageConfig.ji;18;../Models/PMSURL.jt;4594;
objj_executeFile("MMDataSource.j",YES);
objj_executeFile("../Models/MMAgent.j",YES);
objj_executeFile("../Models/LanguageConfig.j",YES);
objj_executeFile("../Models/PMSURL.j",YES);
var _1=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:","1",MMLibrarySectionTypeMovie,"2",MMLibrarySectionTypeShow,"3",MMLibrarySectionTypeSeason,"4",MMLibrarySectionTypeEpisode,"5",MMLibrarySectionTypeTrailer,"6",MMLibrarySectionTypeComic,"7",MMLibrarySectionTypePerson,"8",MMLibrarySectionTypeArtist,"9",MMLibrarySectionTypeAlbum,"10",MMLibrarySectionTypeTrack,"11",MMLibrarySectionTypePicture,"12",MMLibrarySectionTypeClip);
var _2=objj_allocateClassPair(MMDataSource,"MMAgentDataSource"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_cache")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("init"),function(_4,_5){
with(_4){
if(_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("MMAgentDataSource").super_class},"init")){
_cache=objj_msgSend(CPDictionary,"dictionary");
}
return _4;
}
}),new objj_method(sel_getUid("refreshRecordsWithContextInfo:"),function(_6,_7,_8){
with(_6){
var _9=objj_msgSend(_6,"cacheValueForKey:",_8);
if(!_9){
objj_msgSendSuper({receiver:_6,super_class:objj_getClass("MMAgentDataSource").super_class},"refreshRecordsWithContextInfo:",_8);
}else{
window.setTimeout(function(){
objj_msgSendSuper({receiver:_6,super_class:objj_getClass("MMAgentDataSource").super_class},"didReceiveRecords:connection:contextInfo:",_9,nil,_8);
},0);
}
}
}),new objj_method(sel_getUid("URLForRecordsWithContextInfo:"),function(_a,_b,_c){
with(_a){
var _d=_c;
if(objj_msgSend(_1,"containsKey:",_d)){
_d=objj_msgSend(_1,"objectForKey:",_d);
}
return objj_msgSend(PMSURL,"URLWithPath:params:","/system/agents",_d&&objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_d,"mediaType"));
}
}),new objj_method(sel_getUid("shouldProcessNode:contextInfo:"),function(_e,_f,_10,_11){
with(_e){
return String(_10.nodeName)=="Agent";
}
}),new objj_method(sel_getUid("recordsFromElement:contextInfo:"),function(_12,_13,_14,_15){
with(_12){
var _16=objj_msgSend(CPArray,"array"),_17=objj_msgSend(objj_msgSend(MMAgent,"alloc"),"init");
objj_msgSend(_17,"setValuesForNodeAttributes:ignoreUndefinedKeys:",_14,YES);
objj_msgSend(_17,"setPrimary:",_14.getAttribute("primary")=="1");
var _18=_14.childNodes;
if(_15){
objj_msgSend(_17,"setLanguages:",objj_msgSend(_12,"languagesFromNodeList:",_18));
objj_msgSend(_17,"setMediaType:",_15);
objj_msgSend(_16,"addObject:",_17);
}else{
for(var i=0,_19=_18.length;i<_19;i++){
var _1a=_18[i];
if(String(_1a.nodeName)!="MediaType"){
continue;
}
agentForMediaType=objj_msgSend(_17,"copy");
objj_msgSend(agentForMediaType,"setName:",String(_1a.getAttribute("name")));
objj_msgSend(agentForMediaType,"setLanguages:",objj_msgSend(_12,"languagesFromNodeList:",_1a.childNodes));
objj_msgSend(agentForMediaType,"setMediaType:",objj_msgSend(objj_msgSend(_1,"allKeysForObject:",String(_1a.getAttribute("mediaType"))),"objectAtIndex:",0));
objj_msgSend(_16,"addObject:",agentForMediaType);
}
}
return _16;
}
}),new objj_method(sel_getUid("languagesFromNodeList:"),function(_1b,_1c,_1d){
with(_1b){
var _1e=objj_msgSend(CPArray,"array"),_1f=nil;
for(var i=_1d.length;i--;){
var _1f=_1d[i];
if(String(_1f.nodeName)=="Language"){
var _20=objj_msgSend(objj_msgSend(LanguageConfig,"alloc"),"initWithCode:",_1f.getAttribute("code"));
objj_msgSend(_1e,"insertObject:atIndex:",_20,0);
}
}
return _1e;
}
}),new objj_method(sel_getUid("didReceiveRecords:connection:contextInfo:"),function(_21,_22,_23,_24,_25){
with(_21){
objj_msgSend(_21,"setCacheValue:forKey:",_23,_25);
objj_msgSendSuper({receiver:_21,super_class:objj_getClass("MMAgentDataSource").super_class},"didReceiveRecords:connection:contextInfo:",_23,_24,_25);
}
}),new objj_method(sel_getUid("setCacheValue:forKey:"),function(_26,_27,_28,key){
with(_26){
CPLog.debug("[%@ -setCacheValue:forKey:] cache SET for key=%@",objj_msgSend(_26,"class"),key);
objj_msgSend(_cache,"setValue:forKey:",_28,objj_msgSend(_26,"_cacheKeyForContextInfo:",key));
}
}),new objj_method(sel_getUid("cacheValueForKey:"),function(_29,_2a,key){
with(_29){
var _2b=objj_msgSend(_cache,"valueForKey:",objj_msgSend(_29,"_cacheKeyForContextInfo:",key));
CPLog.debug("[%@ -cacheValueForKey:] cache %@ for key=%@",objj_msgSend(_29,"class"),_2b?"HIT":"MISS",key);
return _2b;
}
}),new objj_method(sel_getUid("_cacheKeyForContextInfo:"),function(_2c,_2d,_2e){
with(_2c){
if(objj_msgSend(_2e,"respondsToSelector:",sel_getUid("stringValue"))){
return objj_msgSend(_2e,"stringValue");
}else{
return _2e||"null";
}
}
})]);
p;38;DataSources/MMLibraryMediaDataSource.jt;3920;@STATIC;1.0;I;21;Foundation/CPObject.ji;23;../Models/MMMediaItem.ji;27;../Models/MMMediaItemPart.ji;14;MMDataSource.ji;27;../CPObject+XMLAttributes.jt;3764;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("../Models/MMMediaItem.j",YES);
objj_executeFile("../Models/MMMediaItemPart.j",YES);
objj_executeFile("MMDataSource.j",YES);
objj_executeFile("../CPObject+XMLAttributes.j",YES);
var _1=objj_msgSend(CPSet,"setWithObjects:","key","guid","title","titleSort","originalTitle","tagline","year","rating","summary","studio","contentRating","originallyAvailableAt","art","thumb","index","duration","type","leafCount","deletedAt","state");
var _2=objj_allocateClassPair(MMDataSource,"MMLibraryMediaDataSource"),_3=_2.isa;
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("URLForRecordsWithContextInfo:"),function(_4,_5,_6){
with(_4){
if(objj_msgSend(_6,"respondsToSelector:",sel_getUid("allMediaItemsURL"))){
return objj_msgSend(_6,"allMediaItemsURL");
}else{
return objj_msgSend(PMSURL,"URLWithPath:",objj_msgSend(_6,"key"));
}
}
}),new objj_method(sel_getUid("URLForRecord:contextInfo:"),function(_7,_8,_9,_a){
with(_7){
return objj_msgSend(_9,"URL");
}
}),new objj_method(sel_getUid("URLForUpdatedRecord:contextInfo:"),function(_b,_c,_d,_e){
with(_b){
return objj_msgSend(PMSURL,"URLWithPath:params:",objj_msgSend(CPString,"stringWithFormat:","/library/metadata/%@",objj_msgSend(_d,"id")),objj_msgSend(_d,"changedAttributeDictionary"));
}
}),new objj_method(sel_getUid("HTTPBodyForUpdatedRecord:contextInfo:"),function(_f,_10,_11,_12){
with(_f){
return nil;
}
}),new objj_method(sel_getUid("shouldProcessNode:contextInfo:"),function(_13,_14,_15,_16){
with(_13){
return /^(Video|Directory|Media|Track)$/.test(String(_15.nodeName))&&_15.getAttribute("type");
}
}),new objj_method(sel_getUid("recordFromElement:contextInfo:"),function(_17,_18,_19,_1a){
with(_17){
var id=objj_msgSend(MMMetadataItem,"idFromKey:",String(_19.getAttribute("key"))),_1b=objj_msgSend(objj_msgSend(_17,"dataStore"),"recordWithClass:id:",MMMetadataItem,id);
if(_1b==_1a){
return nil;
}
if(objj_msgSend(_1a,"isKindOfClass:",MMLibrarySection)){
objj_msgSend(_1b,"setLibrarySection:",_1a);
}else{
if(objj_msgSend(_1a,"isKindOfClass:",MMMetadataItem)){
objj_msgSend(_1b,"setParent:",_1a);
objj_msgSend(_1b,"setLibrarySection:",objj_msgSend(_1a,"librarySection"));
}
}
objj_msgSend(_17,"readValuesForRecord:fromElement:",_1b,_19);
var _1c=_19.childNodes,_1d=objj_msgSend(CPArray,"array");
for(var i=0;i<_1c.length;i++){
var _1e=_1c[i];
switch(String(_1e.nodeName)){
case "Media":
var _1f=String(_1e.getAttribute("id")),_20=objj_msgSend(objj_msgSend(_17,"dataStore"),"recordWithClass:id:",MMMediaItem,_1f);
var _21=_1e.childNodes;
for(var j=0;j<_21.length;j++){
var _22=_21[j];
if(!_22||!_22.nodeName||(String(_22.nodeName)!="Part")){
continue;
}
var id=String(_22.getAttribute("key")),_23=objj_msgSend(objj_msgSend(_17,"dataStore"),"recordWithClass:id:",MMMediaItemPart,id);
objj_msgSend(_23,"setValuesForNodeAttributes:ignoreUndefinedKeys:",_22,YES);
objj_msgSend(_1d,"addObject:",_23);
}
break;
case "Field":
var _24=_1e.getAttribute("name"),_25=(_1e.getAttribute("locked")=="1");
objj_msgSend(_1b,"setValue:forKey:",_25,_24+"Locked");
break;
case "Writer":
case "Director":
case "Genre":
var key=String(_1e.nodeName).toLowerCase()+"s";
var _26=objj_msgSend(_1b,"valueForKey:",key)||[];
objj_msgSend(_26,"addObject:",_1e.getAttribute("tag"));
objj_msgSend(_1b,"setValue:forKey:",_26,key);
break;
}
}
objj_msgSend(_20,"setParts:",_1d);
objj_msgSend(_20,"setMetadataItem:",_1b);
objj_msgSend(_1b,"acceptChangedAttributes");
return _1b;
}
}),new objj_method(sel_getUid("readValuesForRecord:fromElement:"),function(_27,_28,_29,_2a){
with(_27){
var _2b=objj_msgSend(_1,"objectEnumerator"),_2c=nil;
while(_2c=objj_msgSend(_2b,"nextObject")){
objj_msgSend(_29,"setValue:forKey:",_2a.getAttribute(_2c),_2c);
}
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
p;37;Controllers/MMImagePickerController.jt;12136;@STATIC;1.0;I;33;Foundation/CPNotificationCenter.jI;25;AppKit/CPViewController.ji;34;../Controllers/MMScrollAnimation.ji;27;../Models/MMMetadataImage.ji;40;../CPValueTransformer+FunctionCallback.ji;27;../Views/MMCollectionView.ji;28;../Views/MMImagePickerCell.ji;25;../Views/MMScrollButton.ji;33;../Views/MMHorizontalScrollView.ji;20;../Views/MMToolbar.ji;20;../Views/HUDButton.jt;11749;
objj_executeFile("Foundation/CPNotificationCenter.j",NO);
objj_executeFile("AppKit/CPViewController.j",NO);
objj_executeFile("../Controllers/MMScrollAnimation.j",YES);
objj_executeFile("../Models/MMMetadataImage.j",YES);
objj_executeFile("../CPValueTransformer+FunctionCallback.j",YES);
objj_executeFile("../Views/MMCollectionView.j",YES);
objj_executeFile("../Views/MMImagePickerCell.j",YES);
objj_executeFile("../Views/MMScrollButton.j",YES);
objj_executeFile("../Views/MMHorizontalScrollView.j",YES);
objj_executeFile("../Views/MMToolbar.j",YES);
objj_executeFile("../Views/HUDButton.j",YES);
var _1=objj_allocateClassPair(CPViewController,"MMImagePickerController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_delegate"),new objj_ivar("metadataItem"),new objj_ivar("_imagesController"),new objj_ivar("_dataSource"),new objj_ivar("_imageGridView"),new objj_ivar("_itemSize"),new objj_ivar("_imagePreview"),new objj_ivar("_parentViewController"),new objj_ivar("scrollView")]);
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
return metadataItem;
}
}),new objj_method(sel_getUid("setMetadataItem:"),function(_a,_b,_c){
with(_a){
metadataItem=_c;
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
}),new objj_method(sel_getUid("parentViewController"),function(_19,_1a){
with(_19){
return _parentViewController;
}
}),new objj_method(sel_getUid("setParentViewController:"),function(_1b,_1c,_1d){
with(_1b){
_parentViewController=_1d;
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
}),new objj_method(sel_getUid("setMetadataItem:"),function(_23,_24,_25){
with(_23){
if(objj_msgSend(metadataItem,"isEqual:",_25)){
return;
}
metadataItem=_25;
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
if(metadataItem){
objj_msgSend(_dataSource,"refreshRecordsWithContextInfo:",metadataItem);
}
}
}),new objj_method(sel_getUid("wasPushedOntoContentController:"),function(_2e,_2f,_30){
with(_2e){
objj_msgSend(_imageGridView,"notifySubviewsOfVisibility");
objj_msgSend(_imagePreview,"setHidden:",NO);
}
}),new objj_method(sel_getUid("willBePoppedOffContentController:"),function(_31,_32,_33){
with(_31){
var _34=objj_msgSend(objj_msgSend(CPViewAnimation,"alloc"),"initWithViewAnimations:",[objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_imagePreview,CPViewAnimationTargetKey,CPViewAnimationFadeOutEffect,CPViewAnimationEffectKey)]);
objj_msgSend(_34,"setDuration:",0.25);
objj_msgSend(_34,"setAnimationCurve:",CPAnimationLinear);
objj_msgSend(_34,"startAnimation");
}
}),new objj_method(sel_getUid("viewDidMoveToSuperview"),function(_35,_36){
with(_35){
objj_msgSendSuper({receiver:_35,super_class:objj_getClass("MMImagePickerController").super_class},"viewDidMoveToSuperview");
objj_msgSend(objj_msgSend(objj_msgSend(_35,"view"),"window"),"makeFirstResponder:",_imageGridView);
}
}),new objj_method(sel_getUid("isNavigable"),function(_37,_38){
with(_37){
return NO;
}
}),new objj_method(sel_getUid("loadView"),function(_39,_3a){
with(_39){
var _3b=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,800,800)),_3c=30;
_imageGridView=objj_msgSend(objj_msgSend(MMCollectionView,"alloc"),"initWithFrame:",CGRectMakeZero());
var _3d=_itemSize.height+objj_msgSend(_imageGridView,"verticalMargin")*2;
scrollView=objj_msgSend(objj_msgSend(MMHorizontalScrollView,"alloc"),"initWithFrame:",CGRectMake(0,CGRectGetHeight(objj_msgSend(_3b,"frame"))-_3c-_3d,CGRectGetWidth(objj_msgSend(_3b,"frame")),_3d));
objj_msgSend(_3b,"addSubview:",scrollView);
_imagePreview=objj_msgSend(objj_msgSend(MMImageView,"alloc"),"initWithFrame:",CGRectMake(0,50,CGRectGetWidth(objj_msgSend(_3b,"frame")),CGRectGetMinY(objj_msgSend(scrollView,"frame"))-100));
objj_msgSend(_imagePreview,"setSizeConstraint:",CGSizeMake(512,512));
objj_msgSend(_imagePreview,"setImageAlignment:",CPImageAlignCenter);
objj_msgSend(_imagePreview,"setImageScaling:",CPScaleProportionally);
objj_msgSend(_imagePreview,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_imagePreview,"setHasShadow:",YES);
objj_msgSend(_imagePreview,"setShadowBlurDistance:",20);
objj_msgSend(_3b,"addSubview:",_imagePreview);
objj_msgSend(objj_msgSend(scrollView,"contentView"),"setInsetShadowAlignment:",MMClipViewInsetShadowAlignTop);
objj_msgSend(objj_msgSend(scrollView,"contentView"),"setBackgroundColor:",objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",50/255,1));
objj_msgSend(scrollView,"setDocumentView:",_imageGridView);
objj_msgSend(scrollView,"setAutoresizingMask:",CPViewWidthSizable|CPViewMinYMargin);
objj_msgSend(objj_msgSend(scrollView,"leftScrollButton"),"setHasBackgroundGradient:",YES);
objj_msgSend(objj_msgSend(scrollView,"rightScrollButton"),"setHasBackgroundGradient:",YES);
var _3e=objj_msgSend(objj_msgSend(CPCollectionViewItem,"alloc"),"init");
objj_msgSend(_3e,"setView:",objj_msgSend(objj_msgSend(MMImagePickerCell,"alloc"),"initWithFrame:",{origin:CGPointMake(0,0),size:_itemSize}));
objj_msgSend(_imageGridView,"setDelegate:",_39);
objj_msgSend(_imageGridView,"setItemPrototype:",_3e);
objj_msgSend(_imageGridView,"setMinItemSize:",_itemSize);
objj_msgSend(_imageGridView,"setMaxItemSize:",_itemSize);
objj_msgSend(_imageGridView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_imageGridView,"bind:toObject:withKeyPath:options:","selectionIndexes",_imagesController,"selectionIndexes",nil);
objj_msgSend(_39,"bind:toObject:withKeyPath:options:","content",_imagesController,"arrangedObjects",nil);
objj_msgSend(_39,"bind:toObject:withKeyPath:options:","selectionIndexes",_imagesController,"selectionIndexes",nil);
objj_msgSend(_3b,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_3b,"frame")),CGRectGetHeight(objj_msgSend(objj_msgSend(_3e,"view"),"frame"))+(2*objj_msgSend(_imageGridView,"verticalMargin"))+_3c));
var _3f=objj_msgSend(objj_msgSend(MMToolbar,"alloc"),"initWithFrame:style:",CGRectMake(0,CGRectGetMaxY(objj_msgSend(scrollView,"frame")),CGRectGetWidth(objj_msgSend(scrollView,"frame")),30),MMToolbarHUDStyle);
objj_msgSend(_3f,"setAutoresizingMask:",CPViewWidthSizable|CPViewMinYMargin);
objj_msgSend(_3b,"addSubview:",_3f);
var _40=objj_msgSend(HUDButton,"buttonWithTitle:",CPLocalizedString("Select Image","Select Image"));
objj_msgSend(_40,"setFrameOrigin:",CGPointMake(CGRectGetWidth(objj_msgSend(_3f,"frame"))-5-CGRectGetWidth(objj_msgSend(_40,"frame")),(CGRectGetHeight(objj_msgSend(_3f,"frame"))-CGRectGetHeight(objj_msgSend(_40,"frame")))/2));
objj_msgSend(_40,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin|CPViewMinXMargin);
objj_msgSend(_40,"setTarget:",_39);
objj_msgSend(_40,"setAction:",sel_getUid("chooseImage:"));
objj_msgSend(_40,"setKeyEquivalent:",CPCarriageReturnCharacter);
objj_msgSend(_40,"bind:toObject:withKeyPath:options:","enabled",_imagesController,"selectionIndexes",objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(CPValueTransformer,"valueTransformerForFunction:",function(_41){
return objj_msgSend(_41,"count")>0;
}),CPValueTransformerBindingOption));
objj_msgSend(_3f,"addSubview:",_40);
var _42=objj_msgSend(HUDButton,"buttonWithTitle:",CPLocalizedString("Cancel","Cancel"));
objj_msgSend(_42,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_40,"frame"))-5-CGRectGetWidth(objj_msgSend(_42,"frame")),CGRectGetMinY(objj_msgSend(_40,"frame"))));
objj_msgSend(_42,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin|CPViewMinXMargin);
objj_msgSend(_42,"setAutoresizingMask:",objj_msgSend(_40,"autoresizingMask"));
objj_msgSend(_42,"setTarget:",_39);
objj_msgSend(_42,"setAction:",sel_getUid("cancel:"));
objj_msgSend(_42,"setKeyEquivalent:",CPEscapeFunctionKey);
objj_msgSend(_3f,"addSubview:",_42);
objj_msgSend(_39,"setView:",_3b);
}
}),new objj_method(sel_getUid("setContent:"),function(_43,_44,_45){
with(_43){
objj_msgSend(_imageGridView,"setContent:",_45);
objj_msgSend(_imageGridView,"sizeToFitNumberOfColumns:withHorizontalMargin:",objj_msgSend(_45,"count"),0);
}
}),new objj_method(sel_getUid("setSelectionIndexes:"),function(_46,_47,_48){
with(_46){
var _49=objj_msgSend(_imagesController,"selectedObjects");
if(objj_msgSend(_49,"count")>0){
objj_msgSend(_imagePreview,"setImage:",objj_msgSend(objj_msgSend(_49,"objectAtIndex:",0),"image"));
}
}
}),new objj_method(sel_getUid("chooseImage:"),function(_4a,_4b,_4c){
with(_4a){
var _4d=objj_msgSend(_imagesController,"selectedObjects");
if(objj_msgSend(_4d,"count")==0){
return;
}
var _4e=objj_msgSend(_4d,"objectAtIndex:",0);
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("imagePicker:didChooseImage:"))){
objj_msgSend(_delegate,"imagePicker:didChooseImage:",_4a,_4e);
}
objj_msgSend(_4a,"_updateMetadataItemWithMetadataImage:",_4e);
objj_msgSend(_parentViewController,"popViewControllerAnimated:",YES);
}
}),new objj_method(sel_getUid("collectionView:didDoubleClickOnItemAtIndex:"),function(_4f,_50,_51,_52){
with(_4f){
var _53=objj_msgSend(objj_msgSend(_51,"content"),"objectAtIndex:",_52);
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("imagePicker:didChooseImage:"))){
objj_msgSend(_delegate,"imagePicker:didChooseImage:",_4f,_53);
}
objj_msgSend(_4f,"_updateMetadataItemWithMetadataImage:",_53);
objj_msgSend(_parentViewController,"popViewControllerAnimated:",YES);
}
}),new objj_method(sel_getUid("_updateMetadataItemWithMetadataImage:"),function(_54,_55,_56){
with(_54){
objj_msgSend(_dataSource,"selectMetadataImage:forMetadataItem:",_56,metadataItem);
}
}),new objj_method(sel_getUid("cancel:"),function(_57,_58,_59){
with(_57){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("imagePickerDidCancel:"))){
objj_msgSend(_delegate,"imagePickerDidCancel:",_57);
}
objj_msgSend(_parentViewController,"popViewControllerAnimated:",YES);
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
p;25;Views/MMImagePickerCell.jt;3636;@STATIC;1.0;I;33;Foundation/CPNotificationCenter.ji;24;../CPImage+Transcoding.ji;23;../Models/MMMediaItem.ji;13;MMImageView.ji;12;MMLazyView.jt;3487;
objj_executeFile("Foundation/CPNotificationCenter.j",NO);
objj_executeFile("../CPImage+Transcoding.j",YES);
objj_executeFile("../Models/MMMediaItem.j",YES);
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
objj_msgSend(_13,"_drawImage:",objj_msgSend(MMMetadataItem,"blankThumbImage"));
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
p;22;Views/MMScrollButton.jt;4697;@STATIC;1.0;I;18;AppKit/CPControl.jt;4655;
objj_executeFile("AppKit/CPControl.j",NO);
MMScrollButtonDirectionLeft="MMScrollButtonDirectionLeft";
MMScrollButtonDirectionRight="MMScrollButtonDirectionRight";
var _1=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","scrollLeft.png"));
var _2=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","scrollRight.png"));
var _3=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","scrollLeftBackground.png")));
var _4=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","scrollRightBackground.png")));
var _5=objj_allocateClassPair(CPControl,"MMScrollButton"),_6=_5.isa;
class_addIvars(_5,[new objj_ivar("direction"),new objj_ivar("hasBackgroundGradient"),new objj_ivar("verticalMargin"),new objj_ivar("arrow")]);
objj_registerClassPair(_5);
class_addMethods(_5,[new objj_method(sel_getUid("direction"),function(_7,_8){
with(_7){
return direction;
}
}),new objj_method(sel_getUid("setDirection:"),function(_9,_a,_b){
with(_9){
direction=_b;
}
}),new objj_method(sel_getUid("hasBackgroundGradient"),function(_c,_d){
with(_c){
return hasBackgroundGradient;
}
}),new objj_method(sel_getUid("setHasBackgroundGradient:"),function(_e,_f,_10){
with(_e){
hasBackgroundGradient=_10;
}
}),new objj_method(sel_getUid("verticalMargin"),function(_11,_12){
with(_11){
return verticalMargin;
}
}),new objj_method(sel_getUid("setVerticalMargin:"),function(_13,_14,_15){
with(_13){
verticalMargin=_15;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_16,_17,_18){
with(_16){
if(_16=objj_msgSendSuper({receiver:_16,super_class:objj_getClass("MMScrollButton").super_class},"initWithFrame:",_18)){
arrow=objj_msgSend(objj_msgSend(MMImageView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_16,"addSubview:",arrow);
}
return _16;
}
}),new objj_method(sel_getUid("setDirection:"),function(_19,_1a,_1b){
with(_19){
if(direction==_1b){
return;
}
direction=_1b;
objj_msgSend(_19,"setNeedsLayout");
objj_msgSend(_19,"redraw");
}
}),new objj_method(sel_getUid("setHasBackgroundGradient:"),function(_1c,_1d,_1e){
with(_1c){
hasBackgroundGradient=_1e;
objj_msgSend(_1c,"redraw");
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_1f,_20){
with(_1f){
var _21=CGSizeMake(23,35),_22=15,_23=verticalMargin||(CGRectGetHeight(objj_msgSend(_1f,"frame"))-_21.height)/2;
switch(direction){
case MMScrollButtonDirectionLeft:
objj_msgSend(arrow,"setFrame:",CGRectMake(_22,_23,_21.width,_21.height));
break;
case MMScrollButtonDirectionRight:
objj_msgSend(arrow,"setFrame:",CGRectMake(CGRectGetWidth(objj_msgSend(_1f,"frame"))-_22-_21.width,_23,_21.width,_21.height));
break;
}
objj_msgSendSuper({receiver:_1f,super_class:objj_getClass("MMScrollButton").super_class},"layoutSubviews");
}
}),new objj_method(sel_getUid("redraw"),function(_24,_25){
with(_24){
var _26,_27;
switch(direction){
case MMScrollButtonDirectionLeft:
_26=_3;
_27=_1;
break;
case MMScrollButtonDirectionRight:
_26=_4;
_27=_2;
break;
}
objj_msgSend(arrow,"setImage:",_27);
if(hasBackgroundGradient){
objj_msgSend(_24,"setBackgroundColor:",_26);
}
}
}),new objj_method(sel_getUid("hitTest:"),function(_28,_29,_2a){
with(_28){
var _2b=objj_msgSendSuper({receiver:_28,super_class:objj_getClass("MMScrollButton").super_class},"hitTest:",_2a);
if(_2b!=_28){
return _2b;
}
var _2c=objj_msgSend(_28,"convertPoint:fromView:",_2a,nil);
switch(direction){
case MMScrollButtonDirectionLeft:
return (_2c.x>CGRectGetMaxX(objj_msgSend(arrow,"frame")))?nil:_28;
case MMScrollButtonDirectionRight:
return (_2c.x<CGRectGetMinX(objj_msgSend(arrow,"frame")))?nil:_28;
}
return _28;
}
})]);
class_addMethods(_6,[new objj_method(sel_getUid("leftScrollButton"),function(_2d,_2e){
with(_2d){
var _2f=objj_msgSend(objj_msgSend(_2d,"alloc"),"initWithFrame:",CGRectMake(0,0,objj_msgSend(objj_msgSend(_3,"patternImage"),"size").width,objj_msgSend(_1,"size").height*2));
objj_msgSend(_2f,"setDirection:",MMScrollButtonDirectionLeft);
return _2f;
}
}),new objj_method(sel_getUid("rightScrollButton"),function(_30,_31){
with(_30){
var _32=objj_msgSend(objj_msgSend(_30,"alloc"),"initWithFrame:",CGRectMake(0,0,objj_msgSend(objj_msgSend(_4,"patternImage"),"size").width,objj_msgSend(_2,"size").height*2));
objj_msgSend(_32,"setDirection:",MMScrollButtonDirectionRight);
return _32;
}
})]);
p;30;Views/MMHorizontalScrollView.jt;5085;@STATIC;1.0;I;21;AppKit/CPScrollView.ji;16;MMScrollButton.ji;34;../Controllers/MMScrollAnimation.jt;4980;
objj_executeFile("AppKit/CPScrollView.j",NO);
objj_executeFile("MMScrollButton.j",YES);
objj_executeFile("../Controllers/MMScrollAnimation.j",YES);
var _1=objj_allocateClassPair(CPView,"MMHorizontalScrollView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("scrollView"),new objj_ivar("leftScrollButton"),new objj_ivar("rightScrollButton"),new objj_ivar("scrollAnimation")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("leftScrollButton"),function(_3,_4){
with(_3){
return leftScrollButton;
}
}),new objj_method(sel_getUid("rightScrollButton"),function(_5,_6){
with(_5){
return rightScrollButton;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_7,_8,_9){
with(_7){
if(_7=objj_msgSendSuper({receiver:_7,super_class:objj_getClass("MMHorizontalScrollView").super_class},"initWithFrame:",_9)){
scrollView=objj_msgSend(objj_msgSend(MMScrollView,"alloc"),"initWithFrame:",objj_msgSend(_7,"bounds"));
objj_msgSend(scrollView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(scrollView,"setHasVerticalScroller:",NO);
objj_msgSend(scrollView,"setHasHorizontalScroller:",NO);
objj_msgSend(scrollView,"addObserver:forKeyPath:options:context:",_7,"scrollPoint",CPKeyValueChangeNewKey,nil);
objj_msgSend(scrollView,"setPostsFrameChangedNotifications:",YES);
objj_msgSend(scrollView,"addObserver:forKeyPath:options:context:",_7,"frame",CPKeyValueChangeNewKey,nil);
leftScrollButton=objj_msgSend(MMScrollButton,"leftScrollButton");
rightScrollButton=objj_msgSend(MMScrollButton,"rightScrollButton");
objj_msgSend(leftScrollButton,"setFrame:",CGRectMake(0,CGRectGetMinY(objj_msgSend(scrollView,"frame")),CGRectGetWidth(objj_msgSend(leftScrollButton,"frame")),CGRectGetHeight(objj_msgSend(scrollView,"frame"))));
objj_msgSend(rightScrollButton,"setFrame:",CGRectMake(CGRectGetMaxX(objj_msgSend(scrollView,"frame"))-CGRectGetWidth(objj_msgSend(rightScrollButton,"frame")),CGRectGetMinY(objj_msgSend(scrollView,"frame")),CGRectGetWidth(objj_msgSend(leftScrollButton,"frame")),CGRectGetHeight(objj_msgSend(scrollView,"frame"))));
objj_msgSend(leftScrollButton,"setAutoresizingMask:",CPViewMaxXMargin|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(rightScrollButton,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(leftScrollButton,"setTarget:",_7);
objj_msgSend(leftScrollButton,"setAction:",sel_getUid("scrollLeft:"));
objj_msgSend(rightScrollButton,"setTarget:",_7);
objj_msgSend(rightScrollButton,"setAction:",sel_getUid("scrollRight:"));
objj_msgSend(_7,"addSubview:",scrollView);
objj_msgSend(_7,"addSubview:",leftScrollButton);
objj_msgSend(_7,"addSubview:",rightScrollButton);
}
return _7;
}
}),new objj_method(sel_getUid("scrollLeft:"),function(_a,_b,_c){
with(_a){
objj_msgSend(scrollAnimation,"stopAnimation");
var _d=objj_msgSend(scrollView,"contentView"),_e=objj_msgSend(_d,"bounds"),_f=MAX(0,CGRectGetMinX(_e)-CGRectGetWidth(_e)+40);
scrollAnimation=objj_msgSend(objj_msgSend(MMScrollAnimation,"alloc"),"initWithView:toPoint:",_d,CGPointMake(_f,0));
objj_msgSend(scrollAnimation,"startAnimation");
}
}),new objj_method(sel_getUid("scrollRight:"),function(_10,_11,_12){
with(_10){
objj_msgSend(scrollAnimation,"stopAnimation");
var _13=objj_msgSend(scrollView,"contentView"),_14=objj_msgSend(_13,"bounds"),_15=MIN(CGRectGetWidth(objj_msgSend(objj_msgSend(scrollView,"documentView"),"frame")),CGRectGetMinX(_14)+CGRectGetWidth(_14)-40);
scrollAnimation=objj_msgSend(objj_msgSend(MMScrollAnimation,"alloc"),"initWithView:toPoint:",_13,CGPointMake(_15,0));
objj_msgSend(scrollAnimation,"startAnimation");
}
}),new objj_method(sel_getUid("showOrHideScrollButtons"),function(_16,_17){
with(_16){
var _18=objj_msgSend(objj_msgSend(scrollView,"contentView"),"bounds"),_19=0,_1a=CGRectGetWidth(objj_msgSend(objj_msgSend(scrollView,"documentView"),"frame"));
objj_msgSend(leftScrollButton,"setHidden:",(CGRectGetMinX(_18)<=_19));
objj_msgSend(rightScrollButton,"setHidden:",(CGRectGetMaxX(_18)>=_1a));
}
}),new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"),function(_1b,_1c,_1d,_1e,_1f,_20){
with(_1b){
if(_1e==scrollView&&(_1d=="scrollPoint"||_1d=="frame")){
objj_msgSend(_1b,"showOrHideScrollButtons");
}else{
if(_1e==objj_msgSend(scrollView,"documentView")&&_1d=="frame"){
objj_msgSend(_1b,"showOrHideScrollButtons");
}
}
}
}),new objj_method(sel_getUid("contentView"),function(_21,_22){
with(_21){
return objj_msgSend(scrollView,"contentView");
}
}),new objj_method(sel_getUid("documentView"),function(_23,_24){
with(_23){
return objj_msgSend(scrollView,"documentView");
}
}),new objj_method(sel_getUid("setDocumentView:"),function(_25,_26,_27){
with(_25){
objj_msgSend(objj_msgSend(scrollView,"documentView"),"removeObserver:",_25);
objj_msgSend(_27,"setPostsFrameChangedNotifications:",YES);
objj_msgSend(_27,"addObserver:forKeyPath:options:context:",_25,"frame",CPKeyValueChangeNewKey,nil);
objj_msgSend(scrollView,"setDocumentView:",_27);
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
p;40;DataSources/MMPosterMetadataDataSource.jt;1203;@STATIC;1.0;i;27;MMImageMetadataDataSource.ji;18;../Models/PMSURL.ji;26;../Models/MMMetadataItem.jt;1098;
objj_executeFile("MMImageMetadataDataSource.j",YES);
objj_executeFile("../Models/PMSURL.j",YES);
objj_executeFile("../Models/MMMetadataItem.j",YES);
var _1=objj_allocateClassPair(MMImageMetadataDataSource,"MMPosterMetadataDataSource"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("selectMetadataImage:forMetadataItem:"),function(_3,_4,_5,_6){
with(_3){
objj_msgSend(_6,"setThumb:",objj_msgSend(_5,"thumb"));
objj_msgSendSuper({receiver:_3,super_class:objj_getClass("MMPosterMetadataDataSource").super_class},"selectMetadataImage:forMetadataItem:",_5,_6);
}
}),new objj_method(sel_getUid("URLForRecordsWithContextInfo:"),function(_7,_8,_9){
with(_7){
return objj_msgSend(_7,"URLForMetadataItem:withSuffix:",_9,"/posters");
}
}),new objj_method(sel_getUid("URLForUpdatedRecord:contextInfo:"),function(_a,_b,_c,_d){
with(_a){
var _e=_c,_f=_d;
return objj_msgSend(PMSURL,"URLWithPath:params:",objj_msgSend(_a,"URLForMetadataItem:withSuffix:",_f,"/poster"),objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(_e,"ratingKey"),"url"));
}
})]);
p;39;DataSources/MMImageMetadataDataSource.jt;1445;@STATIC;1.0;i;14;MMDataSource.ji;26;../Models/MMMetadataItem.ji;18;../Models/PMSURL.jt;1353;
objj_executeFile("MMDataSource.j",YES);
objj_executeFile("../Models/MMMetadataItem.j",YES);
objj_executeFile("../Models/PMSURL.j",YES);
var _1=objj_allocateClassPair(MMDataSource,"MMImageMetadataDataSource"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("URLForMetadataItem:withSuffix:"),function(_3,_4,_5,_6){
with(_3){
return objj_msgSend(PMSURL,"URLWithPath:",objj_msgSend(CPString,"stringWithFormat:","/library/metadata/%@%@",objj_msgSend(_5,"id"),_6));
}
}),new objj_method(sel_getUid("selectMetadataImage:forMetadataItem:"),function(_7,_8,_9,_a){
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
p;40;DataSources/MMBannerMetadataDataSource.jt;812;@STATIC;1.0;i;27;MMImageMetadataDataSource.ji;18;../Models/PMSURL.jt;739;
objj_executeFile("MMImageMetadataDataSource.j",YES);
objj_executeFile("../Models/PMSURL.j",YES);
var _1=objj_allocateClassPair(MMImageMetadataDataSource,"MMBannerMetadataDataSource"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("URLForRecordsWithContextInfo:"),function(_3,_4,_5){
with(_3){
return objj_msgSend(_3,"URLForMetadataItem:withSuffix:",_5,"/banners");
}
}),new objj_method(sel_getUid("URLForUpdatedRecord:contextInfo:"),function(_6,_7,_8,_9){
with(_6){
var _a=_8,_b=_9;
return objj_msgSend(PMSURL,"URLWithPath:params:",objj_msgSend(_6,"URLForMetadataItem:withSuffix:",_b,"/banner"),objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(_a,"ratingKey"),"url"));
}
})]);
p;47;DataSources/MMBackgroundArtMetadataDataSource.jt;1519;@STATIC;1.0;i;27;MMImageMetadataDataSource.ji;26;../Models/MMMetadataItem.ji;18;../Models/PMSURL.jt;1414;
objj_executeFile("MMImageMetadataDataSource.j",YES);
objj_executeFile("../Models/MMMetadataItem.j",YES);
objj_executeFile("../Models/PMSURL.j",YES);
var _1=objj_allocateClassPair(MMImageMetadataDataSource,"MMBackgroundArtMetadataDataSource"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("selectMetadataImage:forMetadataItem:"),function(_3,_4,_5,_6){
with(_3){
var _7=objj_msgSend(CPDictionary,"dictionaryFromURLParams:",objj_msgSend(objj_msgSend(_6,"artURL"),"parameterString"));
objj_msgSend(_7,"setObject:forKey:",FLOOR(objj_msgSend(CPDate,"date").getTime()/1000),"t");
objj_msgSend(_6,"setArt:",objj_msgSend(objj_msgSend(PMSURL,"URLWithPath:params:",objj_msgSend(objj_msgSend(_6,"artURL"),"path"),_7),"description"));
objj_msgSendSuper({receiver:_3,super_class:objj_getClass("MMBackgroundArtMetadataDataSource").super_class},"selectMetadataImage:forMetadataItem:",_5,_6);
}
}),new objj_method(sel_getUid("URLForRecordsWithContextInfo:"),function(_8,_9,_a){
with(_8){
return objj_msgSend(_8,"URLForMetadataItem:withSuffix:",_a,"/arts");
}
}),new objj_method(sel_getUid("URLForUpdatedRecord:contextInfo:"),function(_b,_c,_d,_e){
with(_b){
var _f=_d,_10=_e;
return objj_msgSend(PMSURL,"URLWithPath:params:",objj_msgSend(_b,"URLForMetadataItem:withSuffix:",_10,"/art"),objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(_f,"ratingKey"),"url"));
}
})]);
p;40;Controllers/MMMetadataEditorController.jt;17764;@STATIC;1.0;I;25;AppKit/CPViewController.ji;22;../CPDateTransformer.ji;26;../Models/MMMetadataItem.ji;21;../CPView+sizeToFit.ji;27;../Views/MMSheetContainer.ji;23;../Views/MMLockButton.jt;17570;
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
}),new objj_method(sel_getUid("dismissSheet"),function(_4c,_4d){
with(_4c){
if(!_sheetPanel){
return;
}
objj_msgSend(CPApp,"endSheet:returnCode:",_sheetPanel,0),_sheetPanel=nil;
}
}),new objj_method(sel_getUid("save:"),function(_4e,_4f,_50){
with(_4e){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("metadataEditor:didCommitMetadataItem:"))){
objj_msgSend(_delegate,"metadataEditor:didCommitMetadataItem:",_4e,_metadataItem);
}
}
}),new objj_method(sel_getUid("cancel:"),function(_51,_52,_53){
with(_51){
objj_msgSend(_51,"dismissSheet");
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("metadataEditorDidCancel:"))){
objj_msgSend(_delegate,"metadataEditorDidCancel:",_51);
}
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
p;24;Views/MMSheetContainer.jt;324;@STATIC;1.0;t;306;
var _1=objj_allocateClassPair(CPView,"MMSheetContainer"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("themeAttributes"),function(_3,_4){
with(_3){
return objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",CGInsetMake(15,15,15,15),"content-inset");
}
})]);
p;20;Views/MMLockButton.jt;3595;@STATIC;1.0;I;17;AppKit/CPButton.jI;26;AppKit/CPKeyValueBinding.jt;3523;
objj_executeFile("AppKit/CPButton.j",NO);
objj_executeFile("AppKit/CPKeyValueBinding.j",NO);
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
p;38;DataSources/MMMetadataItemDataSource.jt;1819;@STATIC;1.0;I;21;Foundation/CPObject.ji;23;../Models/MMMediaItem.ji;14;MMDataSource.ji;27;../CPObject+XMLAttributes.jt;1695;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("../Models/MMMediaItem.j",YES);
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
var id=objj_msgSend(MMMetadataItem,"idFromKey:",String(_9.getAttribute("key"))),_b=objj_msgSend(objj_msgSend(_7,"dataStore"),"recordWithClass:id:",MMMetadataItem,id);
objj_msgSend(_7,"readValuesForRecord:fromElement:",_b,_9);
objj_msgSend(_b,"setLibrarySection:",_a);
objj_msgSend(_b,"setWriters:",[]);
objj_msgSend(_b,"setDirectors:",[]);
objj_msgSend(_b,"setGenres:",[]);
objj_msgSend(_b,"unlockAllAttributes");
var _c=_9.childNodes;
for(var i=_c.length;i--;){
var _d=_c[i];
switch(String(_d.nodeName)){
case "Field":
var _e=_d.getAttribute("name"),_f=(_d.getAttribute("locked")=="1"),_10=_e+"Locked";
if(objj_msgSend(_b,"respondsToSelector:",CPSelectorFromString(_10))){
objj_msgSend(_b,"setValue:forKey:",_f,_10);
}
break;
case "Writer":
case "Director":
case "Genre":
var key=String(_d.nodeName).toLowerCase()+"s";
var _11=objj_msgSend(_b,"valueForKey:",key)||[];
objj_msgSend(_11,"addObject:",_d.getAttribute("tag"));
objj_msgSend(_b,"setValue:forKey:",_11,key);
break;
}
}
objj_msgSend(_b,"acceptChangedAttributes");
return _b;
}
})]);
p;25;Views/MMAlbumDetailView.jt;9154;@STATIC;1.0;I;15;AppKit/CPView.ji;13;MMImageView.ji;21;MMTitleAndYearLabel.jt;9071;
objj_executeFile("AppKit/CPView.j",NO);
objj_executeFile("MMImageView.j",YES);
objj_executeFile("MMTitleAndYearLabel.j",YES);
var _1=CGSizeMake(512,512);
var _2=objj_allocateClassPair(CPView,"MMAlbumDetailView"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("titleAndYearLabel"),new objj_ivar("_summaryLabel"),new objj_ivar("_thumbView"),new objj_ivar("_trackTableView"),new objj_ivar("_trackTitleColumn"),new objj_ivar("_title"),new objj_ivar("_year"),new objj_ivar("_summary"),new objj_ivar("_thumbImage"),new objj_ivar("_tracksController")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("title"),function(_4,_5){
with(_4){
return _title;
}
}),new objj_method(sel_getUid("setTitle:"),function(_6,_7,_8){
with(_6){
_title=_8;
}
}),new objj_method(sel_getUid("year"),function(_9,_a){
with(_9){
return _year;
}
}),new objj_method(sel_getUid("setYear:"),function(_b,_c,_d){
with(_b){
_year=_d;
}
}),new objj_method(sel_getUid("summary"),function(_e,_f){
with(_e){
return _summary;
}
}),new objj_method(sel_getUid("setSummary:"),function(_10,_11,_12){
with(_10){
_summary=_12;
}
}),new objj_method(sel_getUid("thumbImage"),function(_13,_14){
with(_13){
return _thumbImage;
}
}),new objj_method(sel_getUid("setThumbImage:"),function(_15,_16,_17){
with(_15){
_thumbImage=_17;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_18,_19,_1a){
with(_18){
if(_18=objj_msgSendSuper({receiver:_18,super_class:objj_getClass("MMAlbumDetailView").super_class},"initWithFrame:",_1a)){
var _1b=20;
_tracksController=objj_msgSend(objj_msgSend(CPArrayController,"alloc"),"init");
_thumbView=objj_msgSend(objj_msgSend(MMImageView,"alloc"),"initWithFrame:",CGRectMake(_1b,_1b,200,200));
objj_msgSend(_thumbView,"setHasShadow:",YES);
objj_msgSend(_thumbView,"setShadowColor:",objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",51/255,53/255,56/255,1));
objj_msgSend(_thumbView,"setShadowBlurDistance:",40);
objj_msgSend(_thumbView,"setBorderRadius:",7);
objj_msgSend(_thumbView,"setImageScaling:",CPScaleToFit);
objj_msgSend(_thumbView,"setImageAlignment:",CPImageAlignTop);
objj_msgSend(_thumbView,"setPlaceholder:",objj_msgSend(MMMetadataItem,"blankThumbImage"));
objj_msgSend(_thumbView,"setSizeConstraint:",_1);
objj_msgSend(_thumbView,"addObserver:forKeyPath:options:context:",_18,"imageRect",CPKeyValueChangeNewKey,nil);
objj_msgSend(_thumbView,"bind:toObject:withKeyPath:options:","image",_18,"thumbImage",nil);
objj_msgSend(_18,"addSubview:",_thumbView);
titleAndYearLabel=objj_msgSend(objj_msgSend(MMTitleAndYearLabel,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(titleAndYearLabel,"sizeToFit");
objj_msgSend(titleAndYearLabel,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(_thumbView,"frame"))+_1b,CGRectGetMinY(objj_msgSend(_thumbView,"frame"))));
objj_msgSend(_18,"addSubview:",titleAndYearLabel);
_summaryLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(CGRectGetMinX(objj_msgSend(titleAndYearLabel,"frame")),CGRectGetMaxY(objj_msgSend(titleAndYearLabel,"frame")),CGRectGetWidth(_1a)-CGRectGetMinX(objj_msgSend(titleAndYearLabel,"frame"))-_1b,CGRectGetHeight(_1a)-CGRectGetMaxY(objj_msgSend(titleAndYearLabel,"frame"))-_1b*2));
objj_msgSend(_summaryLabel,"bind:toObject:withKeyPath:options:",CPValueBinding,_18,"summary",nil);
objj_msgSend(_summaryLabel,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_summaryLabel,"setLineBreakMode:",CPLineBreakByWordWrapping);
objj_msgSend(_18,"addSubview:",_summaryLabel);
_trackTableView=objj_msgSend(objj_msgSend(MMTrackTableView,"alloc"),"initWithFrame:",CGRectMake(CGRectGetMinX(objj_msgSend(_thumbView,"frame")),CGRectGetMaxY(objj_msgSend(_thumbView,"frame")),CGRectGetWidth(objj_msgSend(_thumbView,"frame")),CGRectGetHeight(_1a)-CGRectGetMaxY(objj_msgSend(_thumbView,"frame"))-_1b));
objj_msgSend(_trackTableView,"setDelegate:",_18);
objj_msgSend(_trackTableView,"setAutoresizingMask:",CPViewHeightSizable|CPViewMaxYMargin);
objj_msgSend(_trackTableView,"bind:toObject:withKeyPath:options:","content",_tracksController,"arrangedObjects",nil);
var _1c=objj_msgSend(objj_msgSend(CPTableColumn,"alloc"),"initWithIdentifier:","index");
objj_msgSend(_1c,"setWidth:",25);
var _1d=objj_msgSend(_1c,"dataView");
objj_msgSend(_1d,"setAlignment:",CPRightTextAlignment);
objj_msgSend(_1c,"setDataView:",_1d);
objj_msgSend(_1c,"bind:toObject:withKeyPath:options:",CPValueBinding,_tracksController,"arrangedObjects.index",objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(objj_msgSend(MMAlbumIndexTransformer,"alloc"),"init"),CPValueTransformerBindingOption));
objj_msgSend(_trackTableView,"addTableColumn:",_1c);
_trackTitleColumn=objj_msgSend(objj_msgSend(CPTableColumn,"alloc"),"initWithIdentifier:","title");
objj_msgSend(_trackTitleColumn,"setWidth:",CGRectGetWidth(objj_msgSend(_trackTableView,"frame"))-75);
var _1e=objj_msgSend(_trackTitleColumn,"dataView");
objj_msgSend(_1e,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(_trackTitleColumn,"setDataView:",_1e);
objj_msgSend(_trackTitleColumn,"bind:toObject:withKeyPath:options:",CPValueBinding,_tracksController,"arrangedObjects.displayTitle",nil);
objj_msgSend(_trackTableView,"addTableColumn:",_trackTitleColumn);
var _1f=objj_msgSend(objj_msgSend(CPTableColumn,"alloc"),"initWithIdentifier:","duration");
objj_msgSend(_1f,"setWidth:",50);
var _20=objj_msgSend(_1f,"dataView");
objj_msgSend(_20,"setAlignment:",CPRightTextAlignment);
objj_msgSend(_1f,"setDataView:",_20);
objj_msgSend(_1f,"bind:toObject:withKeyPath:options:",CPValueBinding,_tracksController,"arrangedObjects.duration",objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(objj_msgSend(MMAlbumDurationTransformer,"alloc"),"init"),CPValueTransformerBindingOption));
objj_msgSend(_trackTableView,"addTableColumn:",_1f);
objj_msgSend(_18,"addSubview:",_trackTableView);
}
return _18;
}
}),new objj_method(sel_getUid("tracks"),function(_21,_22){
with(_21){
return objj_msgSend(_tracksController,"content");
}
}),new objj_method(sel_getUid("setTracks:"),function(_23,_24,_25){
with(_23){
objj_msgSend(_tracksController,"setContent:",_25);
}
}),new objj_method(sel_getUid("setTitle:"),function(_26,_27,_28){
with(_26){
_title=_28;
objj_msgSend(titleAndYearLabel,"setTitle:",_title);
}
}),new objj_method(sel_getUid("setYear:"),function(_29,_2a,_2b){
with(_29){
_year=_2b;
objj_msgSend(titleAndYearLabel,"setYear:",_year);
}
}),new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"),function(_2c,_2d,_2e,_2f,_30,_31){
with(_2c){
if(_2e=="imageRect"&&_2f==_thumbView){
objj_msgSend(_2c,"setNeedsLayout");
}
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_32,_33){
with(_32){
objj_msgSendSuper({receiver:_32,super_class:objj_getClass("MMAlbumDetailView").super_class},"layoutSubviews");
objj_msgSend(titleAndYearLabel,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_32,"frame"))-20-CGRectGetMinX(objj_msgSend(titleAndYearLabel,"frame")),CGRectGetHeight(objj_msgSend(titleAndYearLabel,"frame"))));
objj_msgSend(_trackTableView,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_thumbView,"frame")),CGRectGetHeight(objj_msgSend(_trackTableView,"frame"))));
var _34=CGRectGetWidth(objj_msgSend(_trackTableView,"frame")),_35=objj_msgSend(_trackTableView,"tableColumns");
for(var i=0,_36=objj_msgSend(_35,"count");i<_36;i++){
var _37=_35[i];
if(_37!=_trackTitleColumn){
_34-=objj_msgSend(_37,"width");
}
}
_34-=(objj_msgSend(_35,"count")-1)*objj_msgSend(_trackTableView,"intercellSpacing").width+1;
objj_msgSend(_trackTitleColumn,"setWidth:",_34);
}
}),new objj_method(sel_getUid("tableView:shouldSelectRow:"),function(_38,_39,_3a,_3b){
with(_38){
return NO;
}
})]);
var _2=objj_allocateClassPair(CPValueTransformer,"MMAlbumIndexTransformer"),_3=_2.isa;
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("transformedValue:"),function(_3c,_3d,_3e){
with(_3c){
return objj_msgSend(CPString,"stringWithFormat:","%d.",_3e);
}
})]);
var _2=objj_allocateClassPair(CPValueTransformer,"MMAlbumDurationTransformer"),_3=_2.isa;
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("transformedValue:"),function(_3f,_40,_41){
with(_3f){
if(objj_msgSend(_41,"isKindOfClass:",CPArray)){
_41=objj_msgSend(_41,"count")?objj_msgSend(_41,"objectAtIndex:",0):nil;
}
return objj_msgSend((_41/1000),"timeString");
}
})]);
var _2=objj_allocateClassPair(CPTableView,"MMTrackTableView"),_3=_2.isa;
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithFrame:"),function(_42,_43,_44){
with(_42){
if(_42=objj_msgSendSuper({receiver:_42,super_class:objj_getClass("MMTrackTableView").super_class},"initWithFrame:",_44)){
objj_msgSend(_42,"setSelectionHighlightStyle:",CPTableViewSelectionHighlightStyleNone);
objj_msgSend(_42,"setBackgroundColor:",nil);
}
return _42;
}
}),new objj_method(sel_getUid("isOpaque"),function(_45,_46){
with(_45){
return NO;
}
}),new objj_method(sel_getUid("drawBackgroundInClipRect:"),function(_47,_48,_49){
with(_47){
}
})]);
p;27;Views/MMTitleAndYearLabel.jt;3147;@STATIC;1.0;I;15;AppKit/CPView.jt;3108;
objj_executeFile("AppKit/CPView.j",NO);
var _1=objj_allocateClassPair(CPView,"MMTitleAndYearLabel"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("titleLabel"),new objj_ivar("yearLabel"),new objj_ivar("title"),new objj_ivar("year")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("title"),function(_3,_4){
with(_3){
return title;
}
}),new objj_method(sel_getUid("setTitle:"),function(_5,_6,_7){
with(_5){
title=_7;
}
}),new objj_method(sel_getUid("year"),function(_8,_9){
with(_8){
return year;
}
}),new objj_method(sel_getUid("setYear:"),function(_a,_b,_c){
with(_a){
year=_c;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_d,_e,_f){
with(_d){
if(_d=objj_msgSendSuper({receiver:_d,super_class:objj_getClass("MMTitleAndYearLabel").super_class},"initWithFrame:",_f)){
titleLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(titleLabel,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",32));
objj_msgSend(titleLabel,"sizeToFit");
objj_msgSend(titleLabel,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(_d,"addSubview:",titleLabel);
yearLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(yearLabel,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",24));
objj_msgSend(yearLabel,"sizeToFit");
objj_msgSend(_d,"addSubview:",yearLabel);
}
return _d;
}
}),new objj_method(sel_getUid("setTitle:"),function(_10,_11,_12){
with(_10){
title=_12;
objj_msgSend(titleLabel,"setStringValue:",title);
objj_msgSend(_10,"setNeedsLayout");
}
}),new objj_method(sel_getUid("setYear:"),function(_13,_14,_15){
with(_13){
year=_15;
objj_msgSend(yearLabel,"setStringValue:",year?objj_msgSend(CPString,"stringWithFormat:","(%@)",year):"");
objj_msgSend(_13,"setNeedsLayout");
}
}),new objj_method(sel_getUid("sizeToFit"),function(_16,_17){
with(_16){
objj_msgSend(titleLabel,"sizeToFit");
objj_msgSend(yearLabel,"sizeToFit");
objj_msgSend(_16,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(titleLabel,"frame"))+CGRectGetWidth(objj_msgSend(yearLabel,"frame")),MAX(CGRectGetMaxY(objj_msgSend(titleLabel,"frame")),CGRectGetMaxY(objj_msgSend(yearLabel,"frame")))));
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_18,_19){
with(_18){
objj_msgSendSuper({receiver:_18,super_class:objj_getClass("MMTitleAndYearLabel").super_class},"layoutSubviews");
objj_msgSend(titleLabel,"sizeToFit");
objj_msgSend(yearLabel,"sizeToFit");
var _1a=CGRectGetWidth(objj_msgSend(_18,"frame"))-CGRectGetWidth(objj_msgSend(yearLabel,"frame"));
if(CGRectGetWidth(objj_msgSend(titleLabel,"frame"))>_1a){
objj_msgSend(titleLabel,"setFrameSize:",CGSizeMake(_1a,CGRectGetHeight(objj_msgSend(titleLabel,"frame"))));
}
objj_msgSend(titleLabel,"setFrameOrigin:",CGPointMake(0,(CGRectGetHeight(objj_msgSend(_18,"frame"))-CGRectGetHeight(objj_msgSend(titleLabel,"frame")))/2));
objj_msgSend(yearLabel,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(titleLabel,"frame")),(CGRectGetHeight(objj_msgSend(_18,"frame"))-CGRectGetHeight(objj_msgSend(yearLabel,"frame")))/2));
}
})]);
p;45;Controllers/MMLibrarySectionsViewController.jt;11533;@STATIC;1.0;I;25;AppKit/CPViewController.jI;26;AppKit/CPArrayController.jI;22;AppKit/CPOutlineView.ji;28;../Models/MMLibrarySection.ji;44;../DataSources/MMLibrarySectionsDataSource.ji;39;../Views/MMLibrarySectionTableRowView.jt;11299;
objj_executeFile("AppKit/CPViewController.j",NO);
objj_executeFile("AppKit/CPArrayController.j",NO);
objj_executeFile("AppKit/CPOutlineView.j",NO);
objj_executeFile("../Models/MMLibrarySection.j",YES);
objj_executeFile("../DataSources/MMLibrarySectionsDataSource.j",YES);
objj_executeFile("../Views/MMLibrarySectionTableRowView.j",YES);
var _1=objj_allocateClassPair(CPViewController,"MMLibrarySectionsViewController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_delegate"),new objj_ivar("_dataSource"),new objj_ivar("_librarySections"),new objj_ivar("_librarySectionsController"),new objj_ivar("pendingSelection"),new objj_ivar("outlineView"),new objj_ivar("librarySectionsGroupNode"),new objj_ivar("hasLoadedSections"),new objj_ivar("_suppressSelectionChangeNotification"),new objj_ivar("selectedLibrarySection"),new objj_ivar("desiredLibrarySectionIdSelection")]);
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
return hasLoadedSections;
}
}),new objj_method(sel_getUid("selectedLibrarySection"),function(_16,_17){
with(_16){
return selectedLibrarySection;
}
}),new objj_method(sel_getUid("setSelectedLibrarySection:"),function(_18,_19,_1a){
with(_18){
selectedLibrarySection=_1a;
}
}),new objj_method(sel_getUid("initWithDelegate:"),function(_1b,_1c,_1d){
with(_1b){
return _1b=objj_msgSend(_1b,"initWithDelegate:dataSource:",_1d,objj_msgSend(MMLibrarySectionsDataSource,"sharedDataSource"));
}
}),new objj_method(sel_getUid("initWithDelegate:dataSource:"),function(_1e,_1f,_20,_21){
with(_1e){
if(_1e=objj_msgSend(_1e,"init")){
objj_msgSend(_1e,"setDelegate:",_20);
objj_msgSend(_1e,"setDataSource:",_21);
}
return _1e;
}
}),new objj_method(sel_getUid("setDataSource:"),function(_22,_23,_24){
with(_22){
var _25=objj_msgSend(CPNotificationCenter,"defaultCenter");
objj_msgSend(_25,"removeObserver:name:object:",_22,MMDataSourceDidReceiveRecords,_dataSource);
objj_msgSend(_25,"removeObserver:name:object:",_22,MMDataSourceDidCreateRecord,_dataSource);
objj_msgSend(_25,"removeObserver:name:object:",_22,MMDataSourceDidDeleteRecord,_dataSource);
_dataSource=_24;
objj_msgSend(_25,"addObserver:selector:name:object:",_22,sel_getUid("_dataSourceDidReceiveRecords:"),MMDataSourceDidReceiveRecords,_dataSource);
objj_msgSend(_25,"addObserver:selector:name:object:",_22,sel_getUid("_dataSourceDidCreateRecord:"),MMDataSourceDidCreateRecord,_dataSource);
objj_msgSend(_25,"addObserver:selector:name:object:",_22,sel_getUid("_dataSourceDidDeleteRecord:"),MMDataSourceDidDeleteRecord,_dataSource);
objj_msgSend(_25,"addObserver:selector:name:object:",_22,sel_getUid("_dataSourceDidUpdateRecord:"),MMDataSourceDidUpdateRecord,_dataSource);
}
}),new objj_method(sel_getUid("selectSectionWithId:"),function(_26,_27,_28){
with(_26){
if(!hasLoadedSections){
CPLog.debug("[%@ selectSectionWithId:] saving %@ for later",objj_msgSend(_26,"class"),_28);
desiredLibrarySectionIdSelection=_28;
return;
}
desiredLibrarySectionIdSelection=nil;
var _29=objj_msgSend(_librarySectionsController,"arrangedObjects"),_2a=objj_msgSend(_29,"objectEnumerator"),_2b=nil;
while(_2b=objj_msgSend(_2a,"nextObject")){
if(objj_msgSend(objj_msgSend(_2b,"id"),"isEqual:",_28)){
break;
}
}
if(!_2b&&objj_msgSend(_29,"count")){
_2b=objj_msgSend(_29,"objectAtIndex:",0);
}
objj_msgSend(_26,"setSelectedLibrarySection:",_2b);
}
}),new objj_method(sel_getUid("_dataSourceDidReceiveRecords:"),function(_2c,_2d,_2e){
with(_2c){
var _2f=!hasLoadedSections;
objj_msgSend(_2c,"willChangeValueForKey:","hasLoadedSections");
hasLoadedSections=YES;
objj_msgSend(_2c,"didChangeValueForKey:","hasLoadedSections");
var _30=objj_msgSend(objj_msgSend(_2e,"userInfo"),"objectForKey:","records");
if(objj_msgSend(_30,"count")==0){
objj_msgSend(_2c,"setSelectedLibrarySection:",nil);
}
if(_2f||!objj_msgSend(_30,"isEqual:",objj_msgSend(_librarySectionsController,"content"))){
objj_msgSend(_librarySectionsController,"setContent:",_30);
objj_msgSend(outlineView,"reloadData");
objj_msgSend(outlineView,"expandItem:expandChildren:",nil,YES);
}
if(!desiredLibrarySectionIdSelection&&!selectedLibrarySection){
objj_msgSend(_2c,"selectSectionWithId:",nil);
}else{
if(desiredLibrarySectionIdSelection){
CPLog.debug("[%@ _dataSourceDidReceiveRecords:] attempting to restore desired id=%@",objj_msgSend(_2c,"class"),desiredLibrarySectionIdSelection);
objj_msgSend(_2c,"selectSectionWithId:",desiredLibrarySectionIdSelection);
}
}
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",6,_2c,sel_getUid("_reloadLibrarySections"),nil,NO);
}
}),new objj_method(sel_getUid("_dataSourceDidCreateRecord:"),function(_31,_32,_33){
with(_31){
var _34=objj_msgSend(objj_msgSend(_33,"userInfo"),"objectForKey:","record");
objj_msgSend(_librarySectionsController,"addObject:",_34);
objj_msgSend(outlineView,"reloadData");
objj_msgSend(_dataSource,"refreshRecords");
objj_msgSend(_31,"setSelectedLibrarySection:",_34);
}
}),new objj_method(sel_getUid("_dataSourceDidDeleteRecord:"),function(_35,_36,_37){
with(_35){
var _38=objj_msgSend(objj_msgSend(_37,"userInfo"),"objectForKey:","record");
objj_msgSend(_librarySectionsController,"removeObject:",_38);
objj_msgSend(outlineView,"reloadData");
objj_msgSend(_dataSource,"refreshRecords");
if(_38!=selectedLibrarySection){
return;
}
var _39=objj_msgSend(outlineView,"selectedRow"),_3a=nil;
if(_39!=CPNotFound){
_3a=objj_msgSend(outlineView,"itemAtRow:",_39);
}
objj_msgSend(_35,"setSelectedLibrarySection:",_3a);
}
}),new objj_method(sel_getUid("_dataSourceDidUpdateRecord:"),function(_3b,_3c,_3d){
with(_3b){
_suppressSelectionChangeNotification=YES;
objj_msgSend(_dataSource,"refreshRecords");
}
}),new objj_method(sel_getUid("loadView"),function(_3e,_3f){
with(_3e){
_librarySectionsController=objj_msgSend(objj_msgSend(CPArrayController,"alloc"),"init");
objj_msgSend(_librarySectionsController,"setSortDescriptors:",objj_msgSend(CPArray,"arrayWithObject:",objj_msgSend(CPSortDescriptor,"sortDescriptorWithKey:ascending:","title",YES)));
outlineView=objj_msgSend(objj_msgSend(CPOutlineView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(outlineView,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",222/255,228/255,234/255,1));
objj_msgSend(outlineView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(outlineView,"setDelegate:",_3e);
objj_msgSend(outlineView,"setDataSource:",_3e);
objj_msgSend(outlineView,"setTarget:",_3e);
objj_msgSend(outlineView,"setDoubleAction:",sel_getUid("outlineViewRowWasDoubleClicked:"));
objj_msgSend(outlineView,"setAllowsEmptySelection:",NO);
objj_msgSend(outlineView,"setHeaderView:",nil);
objj_msgSend(outlineView,"setCornerView:",nil);
var _40=objj_msgSend(objj_msgSend(CPTableColumn,"alloc"),"initWithIdentifier:","title");
objj_msgSend(_40,"setWidth:",190);
objj_msgSend(outlineView,"addTableColumn:",_40);
objj_msgSend(_3e,"setView:",outlineView);
objj_msgSend(_3e,"_reloadLibrarySections");
}
}),new objj_method(sel_getUid("_reloadLibrarySections"),function(_41,_42){
with(_41){
objj_msgSend(_dataSource,"refreshRecords");
}
}),new objj_method(sel_getUid("setSelectedLibrarySection:"),function(_43,_44,_45){
with(_43){
selectedLibrarySection=_45;
var _46=objj_msgSend(outlineView,"rowForItem:",selectedLibrarySection),_47=nil;
if(_46==CPNotFound){
_47=objj_msgSend(CPIndexSet,"indexSet");
}else{
_47=objj_msgSend(CPIndexSet,"indexSetWithIndex:",_46);
}
objj_msgSend(outlineView,"selectRowIndexes:byExtendingSelection:",_47,NO);
}
}),new objj_method(sel_getUid("outlineViewRowWasDoubleClicked:"),function(_48,_49,_4a){
with(_48){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("librarySectionWasActivated:"))){
var _4b=objj_msgSend(_4a,"itemAtRow:",objj_msgSend(_4a,"clickedRow"));
if(_4b!=librarySectionsGroupNode){
objj_msgSend(_delegate,"librarySectionWasActivated:",_4b);
}
}
}
}),new objj_method(sel_getUid("outlineView:child:ofItem:"),function(_4c,_4d,_4e,_4f,_50){
with(_4c){
if(!_50){
if(!librarySectionsGroupNode){
librarySectionsGroupNode=objj_msgSend(objj_msgSend(CPObject,"alloc"),"init");
}
return librarySectionsGroupNode;
}
if(_50==librarySectionsGroupNode){
return objj_msgSend(objj_msgSend(_librarySectionsController,"arrangedObjects"),"objectAtIndex:",_4f);
}
}
}),new objj_method(sel_getUid("outlineView:numberOfChildrenOfItem:"),function(_51,_52,_53,_54){
with(_51){
if(!_54){
return 1;
}
if(_54==librarySectionsGroupNode){
return objj_msgSend(objj_msgSend(_librarySectionsController,"arrangedObjects"),"count");
}
return 0;
}
}),new objj_method(sel_getUid("outlineView:isItemExpandable:"),function(_55,_56,_57,_58){
with(_55){
if(!_58){
return YES;
}
if(_58==librarySectionsGroupNode){
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("outlineView:isGroupItem:"),function(_59,_5a,_5b,_5c){
with(_59){
return _5c==librarySectionsGroupNode;
}
}),new objj_method(sel_getUid("outlineView:objectValueForTableColumn:byItem:"),function(_5d,_5e,_5f,_60,_61){
with(_5d){
if(_61==librarySectionsGroupNode){
return CPLocalizedString("LIBRARY SECTIONS","Sidebar group title for library sections");
}
return objj_msgSend(_61,"title");
}
}),new objj_method(sel_getUid("outlineViewSelectionDidChange:"),function(_62,_63,_64){
with(_62){
var _65=objj_msgSend(outlineView,"selectedRow"),_66=nil;
if(_65!=CPNotFound){
_66=objj_msgSend(outlineView,"itemAtRow:",_65);
}
objj_msgSend(_62,"setSelectedLibrarySection:",_66);
}
}),new objj_method(sel_getUid("outlineView:shouldSelectItem:"),function(_67,_68,_69,_6a){
with(_67){
return _6a!=librarySectionsGroupNode;
}
}),new objj_method(sel_getUid("outlineView:dataViewForTableColumn:item:"),function(_6b,_6c,_6d,_6e,_6f){
with(_6b){
if(_6f==librarySectionsGroupNode){
return objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
}
return objj_msgSend(objj_msgSend(MMLibrarySectionTableRowView,"alloc"),"initWithFrame:",CGRectMakeZero());
}
}),new objj_method(sel_getUid("outlineView:willDisplayView:forTableColumn:item:"),function(_70,_71,_72,_73,_74,_75){
with(_70){
if(_75==librarySectionsGroupNode){
return;
}
objj_msgSend(_73,"bind:toObject:withKeyPath:options:","title",_75,"title",nil);
objj_msgSend(_73,"bind:toObject:withKeyPath:options:","type",_75,"type",nil);
objj_msgSend(_73,"bind:toObject:withKeyPath:options:","refreshing",_75,"refreshing",nil);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("keyPathsForValuesAffectingSelectedLibrarySection"),function(_76,_77){
with(_76){
return objj_msgSend(CPSet,"setWithObject:","librarySectionsController.selectionIndex");
}
})]);
p;41;DataSources/MMLibrarySectionsDataSource.jt;3628;@STATIC;1.0;i;28;../Models/MMLibrarySection.ji;18;../Models/PMSURL.ji;14;MMDataSource.jt;3534;
objj_executeFile("../Models/MMLibrarySection.j",YES);
objj_executeFile("../Models/PMSURL.j",YES);
objj_executeFile("MMDataSource.j",YES);
var _1=objj_allocateClassPair(MMDataSource,"MMLibrarySectionsDataSource"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("refreshSection:forceUpdate:withDeepScan:"),function(_3,_4,_5,_6,_7){
with(_3){
var _8=objj_msgSend(CPMutableDictionary,"dictionary");
if(_6){
objj_msgSend(_8,"setObject:forKey:",1,"force");
}
if(_7){
objj_msgSend(_8,"setObject:forKey:",1,"deep");
}
objj_msgSend(_3,"updateRecord:contextInfo:URL:HTTPBody:",_5,nil,objj_msgSend(PMSURL,"URLWithPath:params:",objj_msgSend(CPString,"stringWithFormat:","%@/refresh",objj_msgSend(objj_msgSend(_5,"URL"),"path")),_8),nil);
}
}),new objj_method(sel_getUid("URLForRecordsWithContextInfo:"),function(_9,_a,_b){
with(_9){
return objj_msgSend(PMSURL,"URLWithPath:","/library/sections");
}
}),new objj_method(sel_getUid("URLForRecord:contextInfo:"),function(_c,_d,_e,_f){
with(_c){
return objj_msgSend(_e,"URL");
}
}),new objj_method(sel_getUid("URLForNewRecord:contextInfo:"),function(_10,_11,_12,_13){
with(_10){
return objj_msgSend(PMSURL,"URLWithPath:params:","/library/sections",objj_msgSend(_10,"_paramsForRecord:",_12));
}
}),new objj_method(sel_getUid("URLForUpdatedRecord:contextInfo:"),function(_14,_15,_16,_17){
with(_14){
return objj_msgSend(PMSURL,"URLWithPath:params:",objj_msgSend(objj_msgSend(_16,"URL"),"path"),objj_msgSend(_14,"_paramsForRecord:",_16));
}
}),new objj_method(sel_getUid("_paramsForRecord:"),function(_18,_19,_1a){
with(_18){
return objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",objj_msgSend(_1a,"title")||objj_msgSend(CPNull,"null"),"name",objj_msgSend(_1a,"type")||objj_msgSend(CPNull,"null"),"type",objj_msgSend(_1a,"agent")||objj_msgSend(CPNull,"null"),"agent",objj_msgSend(_1a,"scanner")||objj_msgSend(CPNull,"null"),"scanner",objj_msgSend(_1a,"language")||objj_msgSend(CPNull,"null"),"language",objj_msgSend(_1a,"locations")||objj_msgSend(CPNull,"null"),"location");
}
}),new objj_method(sel_getUid("connection:didReceiveResponse:"),function(_1b,_1c,_1d,_1e){
with(_1b){
objj_msgSendSuper({receiver:_1b,super_class:objj_getClass("MMLibrarySectionsDataSource").super_class},"connection:didReceiveResponse:",_1d,_1e);
var _1f=objj_msgSend(recordsByCreateConnection,"objectForKey:",_1d),_20=objj_msgSend(_1d,"locationHeader");
if(_1f&&_20){
objj_msgSend(_1f,"setKey:",objj_msgSend(objj_msgSend(_1f,"class"),"keyFromURL:",objj_msgSend(CPURL,"URLWithString:",_20)));
}
}
}),new objj_method(sel_getUid("HTTPBodyForNewRecord:contextInfo:"),function(_21,_22,_23,_24){
with(_21){
return nil;
}
}),new objj_method(sel_getUid("HTTPBodyForUpdatedRecord:contextInfo:"),function(_25,_26,_27,_28){
with(_25){
return nil;
}
}),new objj_method(sel_getUid("shouldProcessNode:contextInfo:"),function(_29,_2a,_2b,_2c){
with(_29){
return String(_2b.nodeName)=="Directory";
}
}),new objj_method(sel_getUid("recordFromElement:contextInfo:"),function(_2d,_2e,_2f,_30){
with(_2d){
var id=String(_2f.getAttribute("key"));
var _31=objj_msgSend(objj_msgSend(_2d,"dataStore"),"recordWithClass:id:",MMLibrarySection,id);
objj_msgSend(_31,"setValuesForNodeAttributes:ignoreUndefinedKeys:",_2f,YES);
var _32=objj_msgSend(CPArray,"array"),_33=_2f.childNodes;
for(var j=_33.length;j--;){
var _34=_33[j];
if(String(_34.nodeName)!="Location"){
continue;
}
objj_msgSend(_32,"addObject:",String(_34.getAttribute("path")));
}
objj_msgSend(_31,"setLocations:",_32);
return _31;
}
})]);
p;36;Views/MMLibrarySectionTableRowView.jt;6391;@STATIC;1.0;I;20;AppKit/CPTableView.jI;20;AppKit/CPTextField.jI;21;EKSpinner/EKSpinner.ji;13;MMImageView.jt;6278;
objj_executeFile("AppKit/CPTableView.j",NO);
objj_executeFile("AppKit/CPTextField.j",NO);
objj_executeFile("EKSpinner/EKSpinner.j",NO);
objj_executeFile("MMImageView.j",YES);
var _1=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","SourceIconMovies.png"),CGSizeMake(16,16));
var _2=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","SourceIconTVShows.png"),CGSizeMake(16,16));
var _3=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","SourceIconMusic.png"),CGSizeMake(16,16));
var _4=objj_allocateClassPair(CPView,"MMLibrarySectionTableRowView"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("typeIcon"),new objj_ivar("titleField"),new objj_ivar("spinner"),new objj_ivar("objectValue"),new objj_ivar("type"),new objj_ivar("title"),new objj_ivar("refreshing")]);
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("objectValue"),function(_6,_7){
with(_6){
return objectValue;
}
}),new objj_method(sel_getUid("setObjectValue:"),function(_8,_9,_a){
with(_8){
objectValue=_a;
}
}),new objj_method(sel_getUid("type"),function(_b,_c){
with(_b){
return type;
}
}),new objj_method(sel_getUid("setType:"),function(_d,_e,_f){
with(_d){
type=_f;
}
}),new objj_method(sel_getUid("title"),function(_10,_11){
with(_10){
return title;
}
}),new objj_method(sel_getUid("setTitle:"),function(_12,_13,_14){
with(_12){
title=_14;
}
}),new objj_method(sel_getUid("isRefreshing"),function(_15,_16){
with(_15){
return refreshing;
}
}),new objj_method(sel_getUid("setRefreshing:"),function(_17,_18,_19){
with(_17){
refreshing=_19;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_1a,_1b,_1c){
with(_1a){
if(_1a=objj_msgSendSuper({receiver:_1a,super_class:objj_getClass("MMLibrarySectionTableRowView").super_class},"initWithFrame:",_1c)){
typeIcon=objj_msgSend(objj_msgSend(MMImageView,"alloc"),"initWithFrame:",CGRectMake(0,0,objj_msgSend(_1,"size").width,objj_msgSend(_1,"size").height));
objj_msgSend(_1a,"addSubview:",typeIcon);
spinner=objj_msgSend(objj_msgSend(EKSpinner,"alloc"),"initWithFrame:andStyle:",CGRectMake(0,0,18,18),EKSpinnerStyleMediumBlack);
objj_msgSend(spinner,"setSpinning:",NO);
objj_msgSend(_1a,"addSubview:",spinner);
titleField=objj_msgSend(CPTextField,"labelWithTitle:","");
objj_msgSend(titleField,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(_1a,"addSubview:",titleField);
}
return _1a;
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_1d,_1e){
with(_1d){
objj_msgSend(typeIcon,"setFrameOrigin:",CGPointMake(16,(CGRectGetHeight(objj_msgSend(_1d,"frame"))-CGRectGetHeight(objj_msgSend(typeIcon,"frame")))/2));
objj_msgSend(spinner,"setFrameOrigin:",CGPointMake(CGRectGetWidth(objj_msgSend(_1d,"frame"))-CGRectGetWidth(objj_msgSend(spinner,"frame"))-2,(CGRectGetHeight(objj_msgSend(_1d,"frame"))-CGRectGetHeight(objj_msgSend(spinner,"frame")))/2));
objj_msgSend(titleField,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(typeIcon,"frame"))+2,(CGRectGetHeight(objj_msgSend(_1d,"frame"))-CGRectGetHeight(objj_msgSend(titleField,"frame")))/2));
objj_msgSend(titleField,"setFrameSize:",CGSizeMake(CGRectGetMinX(objj_msgSend(spinner,"frame"))-2-CGRectGetMinX(objj_msgSend(titleField,"frame")),CGRectGetHeight(objj_msgSend(titleField,"frame"))));
}
}),new objj_method(sel_getUid("setThemeState:"),function(_1f,_20,_21){
with(_1f){
objj_msgSendSuper({receiver:_1f,super_class:objj_getClass("MMLibrarySectionTableRowView").super_class},"setThemeState:",_21);
objj_msgSend(titleField,"setThemeState:",_21);
objj_msgSend(typeIcon,"setThemeState:",_21);
objj_msgSend(_1f,"_themeStateChanged");
}
}),new objj_method(sel_getUid("unsetThemeState:"),function(_22,_23,_24){
with(_22){
objj_msgSendSuper({receiver:_22,super_class:objj_getClass("MMLibrarySectionTableRowView").super_class},"unsetThemeState:",_24);
objj_msgSend(titleField,"unsetThemeState:",_24);
objj_msgSend(typeIcon,"unsetThemeState:",_24);
objj_msgSend(_22,"_themeStateChanged");
}
}),new objj_method(sel_getUid("_themeStateChanged"),function(_25,_26){
with(_25){
objj_msgSend(spinner,"setStyle:",(objj_msgSend(_25,"themeState")&CPThemeStateSelectedDataView)?EKSpinnerStyleMediumWhite:EKSpinnerStyleMediumBlack);
objj_msgSend(_25,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("setType:"),function(_27,_28,_29){
with(_27){
type=_29;
switch(type){
case MMMetadataItemTypeMovie:
objj_msgSend(typeIcon,"setImage:",_1);
break;
case MMMetadataItemTypeShow:
objj_msgSend(typeIcon,"setImage:",_2);
break;
case MMMetadataItemTypeArtist:
objj_msgSend(typeIcon,"setImage:",_3);
break;
default:
objj_msgSend(typeIcon,"setImage:",nil);
break;
}
}
}),new objj_method(sel_getUid("setTitle:"),function(_2a,_2b,_2c){
with(_2a){
title=_2c;
objj_msgSend(titleField,"setStringValue:",title);
}
}),new objj_method(sel_getUid("setRefreshing:"),function(_2d,_2e,_2f){
with(_2d){
refreshing=_2f;
objj_msgSend(spinner,"setSpinning:",refreshing);
}
})]);
var _30="MMLibrarySectionTableRowViewTitleFieldKey";
var _31="MMLibrarySectionTableRowViewTypeIconKey";
var _32="MMLibrarySectionTableRowViewSpinnerKey";
var _4=objj_getClass("MMLibrarySectionTableRowView");
if(!_4){
throw new SyntaxError("*** Could not find definition for class \"MMLibrarySectionTableRowView\"");
}
var _5=_4.isa;
class_addMethods(_4,[new objj_method(sel_getUid("encodeWithCoder:"),function(_33,_34,_35){
with(_33){
objj_msgSendSuper({receiver:_33,super_class:objj_getClass("MMLibrarySectionTableRowView").super_class},"encodeWithCoder:",_35);
objj_msgSend(_35,"encodeObject:forKey:",titleField,_30);
objj_msgSend(_35,"encodeObject:forKey:",typeIcon,_31);
objj_msgSend(_35,"encodeObject:forKey:",spinner,_32);
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_36,_37,_38){
with(_36){
if(_36=objj_msgSendSuper({receiver:_36,super_class:objj_getClass("MMLibrarySectionTableRowView").super_class},"initWithCoder:",_38)){
titleField=objj_msgSend(_38,"decodeObjectForKey:",_30);
typeIcon=objj_msgSend(_38,"decodeObjectForKey:",_31);
spinner=objj_msgSend(_38,"decodeObjectForKey:",_32);
}
return _36;
}
})]);
p;32;Frameworks/EKSpinner/EKSpinner.jt;3691;@STATIC;1.0;t;3672;
EKSpinnerStyleSmallWhite="small_white";
EKSpinnerStyleSmallGray="small_gray";
EKSpinnerStyleSmallBlack="small_black";
EKSpinnerStyleMediumWhite="medium_white";
EKSpinnerStyleMediumGray="medium_gray";
EKSpinnerStyleMediumBlack="medium_black";
EKSpinnerStyleLargeWhite="big_white";
EKSpinnerStyleLargeGray="big_gray";
EKSpinnerStyleLargeBlack="big_black";
var _1=objj_allocateClassPair(CPImageView,"EKSpinner"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("frames"),new objj_ivar("interval"),new objj_ivar("spinning"),new objj_ivar("style"),new objj_ivar("imageNumber"),new objj_ivar("timer"),new objj_ivar("imageStack")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("frames"),function(_3,_4){
with(_3){
return frames;
}
}),new objj_method(sel_getUid("setFrames:"),function(_5,_6,_7){
with(_5){
frames=_7;
}
}),new objj_method(sel_getUid("interval"),function(_8,_9){
with(_8){
return interval;
}
}),new objj_method(sel_getUid("setInterval:"),function(_a,_b,_c){
with(_a){
interval=_c;
}
}),new objj_method(sel_getUid("isSpinning"),function(_d,_e){
with(_d){
return spinning;
}
}),new objj_method(sel_getUid("setSpinning:"),function(_f,_10,_11){
with(_f){
spinning=_11;
}
}),new objj_method(sel_getUid("style"),function(_12,_13){
with(_12){
return style;
}
}),new objj_method(sel_getUid("setStyle:"),function(_14,_15,_16){
with(_14){
style=_16;
}
}),new objj_method(sel_getUid("initWithFrame:andStyle:"),function(_17,_18,_19,_1a){
with(_17){
if(_17=objj_msgSendSuper({receiver:_17,super_class:objj_getClass("EKSpinner").super_class},"initWithFrame:",_19)){
objj_msgSend(_17,"setStyle:",_1a);
objj_msgSend(_17,"setImageScaling:",CPScaleNone);
}
return _17;
}
}),new objj_method(sel_getUid("setStyle:"),function(_1b,_1c,_1d){
with(_1b){
if(!_1d){
return;
}
if(_1d.search(/small/)<0){
objj_msgSend(_1b,"setFrames:",12);
}else{
objj_msgSend(_1b,"setFrames:",8);
}
imageStack=objj_msgSend(objj_msgSend(CPArray,"alloc"),"init");
for(var i=1;i<=objj_msgSend(_1b,"frames");i++){
var img=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:","Frameworks/EKSpinner/Resources/"+_1d+"_"+i+".png",CGSizeMake(CGRectGetWidth(objj_msgSend(_1b,"frame")),CGRectGetHeight(objj_msgSend(_1b,"frame"))));
objj_msgSend(imageStack,"addObject:",img);
}
style=_1d;
}
}),new objj_method(sel_getUid("setSpinning:"),function(_1e,_1f,_20){
with(_1e){
_20=!!_20;
if(_20===spinning){
return;
}
if(_20){
var _21=objj_msgSend(_1e,"interval")?(objj_msgSend(_1e,"interval")/1000):0.1;
imageNumber=0;
timer=objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",_21,_1e,sel_getUid("changeSpinnerImage"),nil,YES);
}else{
objj_msgSend(timer,"invalidate");
objj_msgSend(_1e,"setImage:",nil);
}
spinning=_20;
}
}),new objj_method(sel_getUid("changeSpinnerImage"),function(_22,_23){
with(_22){
objj_msgSend(_22,"setImage:",objj_msgSend(imageStack,"objectAtIndex:",imageNumber));
imageNumber=(imageNumber+1)%frames;
}
})]);
var _1=objj_getClass("EKSpinner");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"EKSpinner\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("encodeWithCoder:"),function(_24,_25,_26){
with(_24){
objj_msgSendSuper({receiver:_24,super_class:objj_getClass("EKSpinner").super_class},"encodeWithCoder:",_26);
objj_msgSend(_26,"encodeObject:forKey:",style,"style");
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_27,_28,_29){
with(_27){
if(_27=objj_msgSendSuper({receiver:_27,super_class:objj_getClass("EKSpinner").super_class},"initWithCoder:",_29)){
objj_msgSend(_27,"setStyle:",objj_msgSend(_29,"decodeObjectForKey:","style"));
}
return _27;
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
p;32;Controllers/MMSeasonController.jt;8629;@STATIC;1.0;I;25;AppKit/CPViewController.ji;26;../Models/MMMetadataItem.ji;29;../Views/MMSeasonDetailView.ji;24;../Views/MMEpisodeCell.ji;21;MMEpisodeController.jt;8460;
objj_executeFile("AppKit/CPViewController.j",NO);
objj_executeFile("../Models/MMMetadataItem.j",YES);
objj_executeFile("../Views/MMSeasonDetailView.j",YES);
objj_executeFile("../Views/MMEpisodeCell.j",YES);
objj_executeFile("MMEpisodeController.j",YES);
var _1=objj_allocateClassPair(CPViewController,"MMSeasonController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("content"),new objj_ivar("metadataItemDataSource"),new objj_ivar("childrenController"),new objj_ivar("detailView"),new objj_ivar("parentViewController"),new objj_ivar("wantedChildMetadataItemId")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("content"),function(_3,_4){
with(_3){
return content;
}
}),new objj_method(sel_getUid("setContent:"),function(_5,_6,_7){
with(_5){
content=_7;
}
}),new objj_method(sel_getUid("parentViewController"),function(_8,_9){
with(_8){
return parentViewController;
}
}),new objj_method(sel_getUid("setParentViewController:"),function(_a,_b,_c){
with(_a){
parentViewController=_c;
}
}),new objj_method(sel_getUid("init"),function(_d,_e){
with(_d){
if(_d=objj_msgSendSuper({receiver:_d,super_class:objj_getClass("MMSeasonController").super_class},"init")){
metadataItemDataSource=objj_msgSend(objj_msgSend(MMLibraryMediaDataSource,"alloc"),"initWithDelegate:",_d);
childrenController=objj_msgSend(objj_msgSend(CPArrayController,"alloc"),"init");
}
return _d;
}
}),new objj_method(sel_getUid("loadView"),function(_f,_10){
with(_f){
_toolbarController=objj_msgSend(objj_msgSend(MMMetadataItemToolbarController,"alloc"),"init");
var _11=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,800,800)),_12=objj_msgSend(_toolbarController,"view"),_13=CGRectGetHeight(objj_msgSend(_12,"frame"));
detailView=objj_msgSend(objj_msgSend(MMSeasonDetailView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_12,"setFrame:",CGRectMake(0,CGRectGetHeight(objj_msgSend(_11,"frame"))-_13,CGRectGetWidth(objj_msgSend(_11,"frame")),_13));
objj_msgSend(detailView,"setFrame:",CGRectMake(0,0,CGRectGetWidth(objj_msgSend(_11,"frame")),CGRectGetMinY(objj_msgSend(_12,"frame"))));
objj_msgSend(detailView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_12,"setAutoresizingMask:",CPViewMinYMargin|CPViewWidthSizable);
objj_msgSend(detailView,"setDelegate:",_f);
objj_msgSend(detailView,"bind:toObject:withKeyPath:options:","title",_f,"fullTitle",nil);
objj_msgSend(detailView,"bind:toObject:withKeyPath:options:","subtitle",_f,"subtitle",nil);
objj_msgSend(detailView,"bind:toObject:withKeyPath:options:","thumbImage",_f,"content.thumbImage",nil);
objj_msgSend(_toolbarController,"bind:toObject:withKeyPath:options:","content",_f,"content",nil);
objj_msgSend(_toolbarController,"bind:toObject:withKeyPath:options:","parentViewController",_f,"parentViewController",nil);
objj_msgSend(_11,"addSubview:",detailView);
objj_msgSend(_11,"addSubview:",_12);
childrenController=objj_msgSend(objj_msgSend(CPArrayController,"alloc"),"init");
objj_msgSend(_f,"setView:",_11);
}
}),new objj_method(sel_getUid("title"),function(_14,_15){
with(_14){
return objj_msgSend(content,"displayTitle");
}
}),new objj_method(sel_getUid("fullTitle"),function(_16,_17){
with(_16){
return objj_msgSend(CPString,"stringWithFormat:","%@: %@",objj_msgSend(objj_msgSend(content,"parent"),"displayTitle"),objj_msgSend(_16,"title"));
}
}),new objj_method(sel_getUid("setContent:"),function(_18,_19,_1a){
with(_18){
if(objj_msgSend(content,"isEqual:",_1a)){
return;
}
content=_1a;
objj_msgSend(childrenController,"setContent:",[]);
switch(objj_msgSend(content,"type")){
case MMMetadataItemTypeSeason:
objj_msgSend(_18,"view");
var _1b=objj_msgSend(objj_msgSend(CPCollectionViewItem,"alloc"),"init"),_1c=objj_msgSend(objj_msgSend(MMEpisodeCell,"alloc"),"initWithFrame:",CGRectMake(0,0,CGRectGetWidth(objj_msgSend(detailView,"frame")),96));
objj_msgSend(_1b,"setView:",_1c);
objj_msgSend(detailView,"setChildItemPrototype:",_1b);
objj_msgSend(detailView,"setChildrenController:",childrenController);
objj_msgSend(metadataItemDataSource,"refreshRecordsWithContextInfo:",content);
break;
default:
objj_msgSend(detailView,"setChildrenController:",nil);
break;
}
}
}),new objj_method(sel_getUid("dataSource:didReceiveRecords:contextInfo:"),function(_1d,_1e,_1f,_20,_21){
with(_1d){
if(!objj_msgSend(_21,"isEqual:",content)){
return;
}
objj_msgSend(_1d,"willChangeValueForKey:","status");
objj_msgSend(childrenController,"setContent:",_20);
objj_msgSend(_1d,"didChangeValueForKey:","status");
if(wantedChildMetadataItemId){
for(var i=0,_22=objj_msgSend(_20,"count");i<_22;i++){
var _23=_20[i];
if(objj_msgSend(_23,"id")==wantedChildMetadataItemId){
wantedChildMetadataItemId=nil;
var _24=objj_msgSend(objj_msgSend(MMEpisodeController,"alloc"),"init");
objj_msgSend(_24,"setContent:",_23);
objj_msgSend(parentViewController,"pushViewController:animated:",_24,NO);
}
}
}
}
}),new objj_method(sel_getUid("status"),function(_25,_26){
with(_25){
var _27=objj_msgSend(objj_msgSend(childrenController,"content"),"count");
if(_27===nil){
return nil;
}
switch(_27){
case 0:
return CPLocalizedString("no episodes","Status for list of episodes when there are none");
case 1:
return CPLocalizedString("1 episode","Status for list of episodes when there is one");
default:
return objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("%d episodes","Status for list of episodes when there is more than one"),_27);
}
return nil;
}
}),new objj_method(sel_getUid("subtitle"),function(_28,_29){
with(_28){
return objj_msgSend(_28,"status");
}
}),new objj_method(sel_getUid("itemStatus"),function(_2a,_2b){
with(_2a){
var _2c=objj_msgSend(objj_msgSend(_2a,"content"),"updatedAt");
if(!_2c){
return nil;
}
return objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Last refreshed %@ at %@","Status label for media items"),objj_msgSend(_2c,"relativeDate"),objj_msgSend(_2c,"shortLocalTime"));
}
}),new objj_method(sel_getUid("location"),function(_2d,_2e){
with(_2d){
return objj_msgSend(objj_msgSend(_2d,"class"),"locationForSeason:",content);
}
}),new objj_method(sel_getUid("metadataItemDetailView:didSelectChild:"),function(_2f,_30,_31,_32){
with(_2f){
objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"setLocation:",objj_msgSend(MMEpisodeController,"locationForMetadataItem:",_32));
}
}),new objj_method(sel_getUid("wasPushedOntoContentController:"),function(_33,_34,_35){
with(_33){
var _36=objj_msgSend(_33,"location"),_37=objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"formattedHash");
if(objj_msgSend(_37,"isEqualToString:",_36)){
return;
}
if(!objj_msgSend(_37,"hasPrefix:",_36)){
return;
}
var _38=objj_msgSend(_37,"substringFromIndex:",objj_msgSend(_36,"length"));
if(!objj_msgSend(_38,"hasPrefix:","/children/")){
return;
}
_38=objj_msgSend(_38,"substringFromIndex:",objj_msgSend("/children/","length"));
var _39=objj_msgSend(_38,"componentsSeparatedByString:","/");
wantedChildMetadataItemId=Number(objj_msgSend(_39,"objectAtIndex:",0));
var _3a=objj_msgSend(childrenController,"content");
for(var i=0,_3b=objj_msgSend(_3a,"count");i<_3b;i++){
var _3c=_3a[i];
if(objj_msgSend(_3c,"id")==wantedChildMetadataItemId){
wantedChildMetadataItemId=nil;
var _3d=objj_msgSend(objj_msgSend(MMSeasonController,"alloc"),"init");
objj_msgSend(_3d,"setContent:",_3c);
objj_msgSend(parentViewController,"pushViewController:animated:",_3d,NO);
}
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("keyPathsForValuesAffectingTitle"),function(_3e,_3f){
with(_3e){
return objj_msgSend(CPSet,"setWithObjects:","content","content.displayTitle");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingFullTitle"),function(_40,_41){
with(_40){
return objj_msgSend(CPSet,"setWithObjects:","title","content.parent","content.parent.displayTitle");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingItemStatus"),function(_42,_43){
with(_42){
return objj_msgSend(CPSet,"setWithObjects:","content","content.updatedAt");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingSubtitle"),function(_44,_45){
with(_44){
return objj_msgSend(CPSet,"setWithObjects:","status");
}
}),new objj_method(sel_getUid("locationForSeason:"),function(_46,_47,_48){
with(_46){
return objj_msgSend(CPString,"stringWithFormat:","/sections/%@/media/%@/children/%@",objj_msgSend(objj_msgSend(_48,"librarySection"),"id"),objj_msgSend(objj_msgSend(_48,"parent"),"id"),objj_msgSend(_48,"id"));
}
})]);
p;26;Views/MMSeasonDetailView.jt;6278;@STATIC;1.0;I;15;AppKit/CPView.jt;6239;
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
objj_msgSend(_titleLabel,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_1b,"frame"))-CGRectGetMinX(objj_msgSend(_titleLabel,"frame"))-20,CGRectGetHeight(objj_msgSend(_titleLabel,"frame"))));
objj_msgSend(_titleLabel,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(_titleLabel,"setAutoresizingMask:",CPViewWidthSizable);
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
objj_msgSend(_subtitleLabel,"sizeToFit");
}
}),new objj_method(sel_getUid("collectionView:didDoubleClickOnItemAtIndex:"),function(_2c,_2d,_2e,_2f){
with(_2c){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("metadataItemDetailView:didSelectChild:"))){
objj_msgSend(_delegate,"metadataItemDetailView:didSelectChild:",_2c,objj_msgSend(objj_msgSend(_2e,"content"),"objectAtIndex:",_2f));
}
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
p;33;Controllers/MMEpisodeController.jt;2416;@STATIC;1.0;i;26;MMMetadataItemController.jt;2366;
objj_executeFile("MMMetadataItemController.j",YES);
var _1=objj_allocateClassPair(MMMetadataItemController,"MMEpisodeController"),_2=_1.isa;
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
}),new objj_method(sel_getUid("locationForMetadataItem:"),function(_11,_12,_13){
with(_11){
return objj_msgSend(CPString,"stringWithFormat:","/sections/%@/media/%@/children/%@/children/%@",objj_msgSend(objj_msgSend(_13,"librarySection"),"id"),objj_msgSend(objj_msgSend(_13,"root"),"id"),objj_msgSend(objj_msgSend(_13,"parent"),"id"),objj_msgSend(_13,"id"));
}
})]);
p;38;Controllers/MMMetadataItemController.jt;10027;@STATIC;1.0;I;25;AppKit/CPViewController.ji;25;MMImagePickerController.ji;25;MMMatchPickerController.ji;28;MMMetadataEditorController.ji;33;MMMetadataItemToolbarController.ji;26;../Models/MMMetadataItem.ji;35;../Views/MMMetadataItemDetailView.ji;22;../Views/MMAlbumCell.ji;23;../Views/MMSeasonCell.jt;9721;
objj_executeFile("AppKit/CPViewController.j",NO);
objj_executeFile("MMImagePickerController.j",YES);
objj_executeFile("MMMatchPickerController.j",YES);
objj_executeFile("MMMetadataEditorController.j",YES);
objj_executeFile("MMMetadataItemToolbarController.j",YES);
objj_executeFile("../Models/MMMetadataItem.j",YES);
objj_executeFile("../Views/MMMetadataItemDetailView.j",YES);
objj_executeFile("../Views/MMAlbumCell.j",YES);
objj_executeFile("../Views/MMSeasonCell.j",YES);
var _1=objj_allocateClassPair(CPViewController,"MMMetadataItemController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_detailView"),new objj_ivar("_content"),new objj_ivar("_parentViewController"),new objj_ivar("_childrenController"),new objj_ivar("_metadataItemDataSource"),new objj_ivar("_editor"),new objj_ivar("_wantedChildMetadataItemId"),new objj_ivar("_toolbarController")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("content"),function(_3,_4){
with(_3){
return _content;
}
}),new objj_method(sel_getUid("setContent:"),function(_5,_6,_7){
with(_5){
_content=_7;
}
}),new objj_method(sel_getUid("parentViewController"),function(_8,_9){
with(_8){
return _parentViewController;
}
}),new objj_method(sel_getUid("setParentViewController:"),function(_a,_b,_c){
with(_a){
_parentViewController=_c;
}
}),new objj_method(sel_getUid("init"),function(_d,_e){
with(_d){
if(_d=objj_msgSendSuper({receiver:_d,super_class:objj_getClass("MMMetadataItemController").super_class},"init")){
_metadataItemDataSource=objj_msgSend(objj_msgSend(MMLibraryMediaDataSource,"alloc"),"initWithDelegate:",_d);
_childrenController=objj_msgSend(objj_msgSend(CPArrayController,"alloc"),"init");
}
return _d;
}
}),new objj_method(sel_getUid("title"),function(_f,_10){
with(_f){
return objj_msgSend(objj_msgSend(_f,"content"),"displayTitle");
}
}),new objj_method(sel_getUid("location"),function(_11,_12){
with(_11){
return objj_msgSend(objj_msgSend(_11,"class"),"locationForMetadataItem:",objj_msgSend(_11,"content"));
}
}),new objj_method(sel_getUid("willBeOrderedBackByContentController:"),function(_13,_14,_15){
with(_13){
objj_msgSend(_detailView,"setContentHidden:",YES);
}
}),new objj_method(sel_getUid("willBeOrderedFrontByContentController:"),function(_16,_17,_18){
with(_16){
objj_msgSend(_detailView,"setContentHidden:",NO);
}
}),new objj_method(sel_getUid("loadView"),function(_19,_1a){
with(_19){
_toolbarController=objj_msgSend(objj_msgSend(MMMetadataItemToolbarController,"alloc"),"init");
var _1b=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,800,800)),_1c=objj_msgSend(_toolbarController,"view"),_1d=CGRectGetHeight(objj_msgSend(_1c,"frame")),_1e=objj_msgSend(objj_msgSend(MMMetadataItemDetailView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_1c,"setFrame:",CGRectMake(0,CGRectGetHeight(objj_msgSend(_1b,"frame"))-_1d,CGRectGetWidth(objj_msgSend(_1b,"frame")),_1d));
objj_msgSend(_1e,"setFrame:",CGRectMake(0,0,CGRectGetWidth(objj_msgSend(_1b,"frame")),CGRectGetMinY(objj_msgSend(_1c,"frame"))));
objj_msgSend(_1e,"setDelegate:",_19);
objj_msgSend(_1c,"setAutoresizingMask:",CPViewMinYMargin|CPViewWidthSizable);
objj_msgSend(_1e,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_1b,"addSubview:",_1e);
objj_msgSend(_1b,"addSubview:",_1c);
objj_msgSend(_1e,"bind:toObject:withKeyPath:options:","title",_19,"title",nil);
objj_msgSend(_1e,"bind:toObject:withKeyPath:options:","tagline",_19,"subtitle",nil);
objj_msgSend(_1e,"bind:toObject:withKeyPath:options:","year",_19,"content.year",nil);
objj_msgSend(_1e,"bind:toObject:withKeyPath:options:","summary",_19,"content.summary",nil);
objj_msgSend(_1e,"bind:toObject:withKeyPath:options:","thumbImage",_19,"content.thumbImage",nil);
objj_msgSend(_1e,"bind:toObject:withKeyPath:options:","artImage",_19,"content.root.artImage",nil);
objj_msgSend(_toolbarController,"bind:toObject:withKeyPath:options:","content",_19,"content",nil);
objj_msgSend(_toolbarController,"bind:toObject:withKeyPath:options:","parentViewController",_19,"parentViewController",nil);
_detailView=_1e;
objj_msgSend(_19,"setView:",_1b);
}
}),new objj_method(sel_getUid("itemStatus"),function(_1f,_20){
with(_1f){
var _21=objj_msgSend(objj_msgSend(_1f,"content"),"updatedAt");
if(!_21){
return nil;
}
return objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Last refreshed %@ at %@","Status label for media items"),objj_msgSend(_21,"relativeDate"),objj_msgSend(_21,"shortLocalTime"));
}
}),new objj_method(sel_getUid("subtitle"),function(_22,_23){
with(_22){
return objj_msgSend(objj_msgSend(_22,"content"),"tagline");
}
}),new objj_method(sel_getUid("setContent:"),function(_24,_25,_26){
with(_24){
if(objj_msgSend(_content,"isEqual:",_26)){
return;
}
_content=_26;
objj_msgSend(_childrenController,"setContent:",[]);
var _27=nil;
switch(objj_msgSend(_content,"type")){
case MMMetadataItemTypeShow:
_27=objj_msgSend(objj_msgSend(MMSeasonCell,"alloc"),"initWithFrame:",CGRectMake(0,0,155,198));
break;
case MMMetadataItemTypeArtist:
_27=objj_msgSend(objj_msgSend(MMAlbumCell,"alloc"),"initWithFrame:",CGRectMake(0,0,155,198));
break;
default:
objj_msgSend(_detailView,"setChildItemPrototype:",nil);
objj_msgSend(_detailView,"setChildrenController:",nil);
break;
}
if(_27){
objj_msgSend(_24,"view");
var _28=objj_msgSend(objj_msgSend(CPCollectionViewItem,"alloc"),"init");
objj_msgSend(_28,"setView:",_27);
objj_msgSend(_detailView,"setChildItemPrototype:",_28);
objj_msgSend(_detailView,"setChildrenController:",_childrenController);
objj_msgSend(_metadataItemDataSource,"refreshRecordsWithContextInfo:",_content);
}
}
}),new objj_method(sel_getUid("wasPushedOntoContentController:"),function(_29,_2a,_2b){
with(_29){
var _2c=objj_msgSend(_29,"location"),_2d=objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"formattedHash");
if(objj_msgSend(_2d,"isEqualToString:",_2c)){
return;
}
if(!objj_msgSend(_2d,"hasPrefix:",_2c)){
return;
}
var _2e=objj_msgSend(_2d,"substringFromIndex:",objj_msgSend(_2c,"length"));
if(!objj_msgSend(_2e,"hasPrefix:","/children/")){
return;
}
_2e=objj_msgSend(_2e,"substringFromIndex:",objj_msgSend("/children/","length"));
var _2f=objj_msgSend(_2e,"componentsSeparatedByString:","/");
_wantedChildMetadataItemId=Number(objj_msgSend(_2f,"objectAtIndex:",0));
objj_msgSend(_29,"restoreChildState");
}
}),new objj_method(sel_getUid("restoreChildState"),function(_30,_31){
with(_30){
if(!_wantedChildMetadataItemId){
return NO;
}
var _32=objj_msgSend(_childrenController,"content");
for(var i=0,_33=objj_msgSend(_32,"count");i<_33;i++){
var _34=_32[i];
if(objj_msgSend(_34,"id")==_wantedChildMetadataItemId){
_wantedChildMetadataItemId=nil;
var _35=objj_msgSend(_30,"viewControllerForChild:",_34);
if(_35){
objj_msgSend(_35,"setContent:",_34);
objj_msgSend(_parentViewController,"pushViewController:animated:",_35,NO);
return YES;
}
}
}
return NO;
}
}),new objj_method(sel_getUid("viewControllerForChild:"),function(_36,_37,_38){
with(_36){
switch(objj_msgSend(_38,"type")){
case MMMetadataItemTypeMovie:
return nil;
case MMMetadataItemTypeSeason:
return objj_msgSend(objj_msgSend(MMSeasonController,"alloc"),"init");
case MMMetadataItemTypeAlbum:
return objj_msgSend(objj_msgSend(MMAlbumController,"alloc"),"init");
}
}
}),new objj_method(sel_getUid("dataSource:didReceiveRecords:contextInfo:"),function(_39,_3a,_3b,_3c,_3d){
with(_39){
if((_3b==_metadataItemDataSource)&&(_3d==objj_msgSend(_39,"content"))){
objj_msgSend(_childrenController,"setContent:",_3c);
objj_msgSend(_39,"restoreChildState");
}
}
}),new objj_method(sel_getUid("imagePicker:didSelectThumbnailForImage:"),function(_3e,_3f,_40,_41){
with(_3e){
if(objj_msgSend(objj_msgSend(_40,"dataSource"),"isKindOfClass:",MMPosterMetadataDataSource)){
objj_msgSend(_detailView,"setThumbImage:",objj_msgSend(_41,"image"));
}else{
if(objj_msgSend(objj_msgSend(_40,"dataSource"),"isKindOfClass:",MMBackgroundArtMetadataDataSource)){
objj_msgSend(_detailView,"setArtImage:",objj_msgSend(_41,"image"));
}
}
}
}),new objj_method(sel_getUid("imagePickerDidCancel:"),function(_42,_43,_44){
with(_42){
if(objj_msgSend(objj_msgSend(_44,"dataSource"),"isKindOfClass:",MMPosterMetadataDataSource)){
objj_msgSend(_detailView,"setThumbImage:",objj_msgSend(objj_msgSend(_42,"content"),"thumbImage"));
}else{
if(objj_msgSend(objj_msgSend(_44,"dataSource"),"isKindOfClass:",MMBackgroundArtMetadataDataSource)){
objj_msgSend(_detailView,"setArtImage:",objj_msgSend(objj_msgSend(_42,"content"),"artImage"));
}
}
}
}),new objj_method(sel_getUid("matchPickerDidCancel:"),function(_45,_46,_47){
with(_45){
objj_msgSend(_matchPicker,"dismissSheet"),_matchPicker=nil;
}
}),new objj_method(sel_getUid("metadataItemDetailView:didSelectChild:"),function(_48,_49,_4a,_4b){
with(_48){
objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"setLocation:",objj_msgSend(MMSeasonController,"locationForSeason:",_4b));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("keyPathsForValuesAffectingTitle"),function(_4c,_4d){
with(_4c){
return objj_msgSend(CPSet,"setWithObjects:","content","content.displayTitle");
}
}),new objj_method(sel_getUid("locationForMetadataItem:"),function(_4e,_4f,_50){
with(_4e){
return objj_msgSend(CPString,"stringWithFormat:","/sections/%@/media/%@",objj_msgSend(objj_msgSend(_50,"librarySection"),"id"),objj_msgSend(_50,"id"));
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingItemStatus"),function(_51,_52){
with(_51){
return objj_msgSend(CPSet,"setWithObjects:","content","content.updatedAt");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingSubtitle"),function(_53,_54){
with(_53){
return objj_msgSend(CPSet,"setWithObjects:","content","content.tagline");
}
})]);
p;32;Views/MMMetadataItemDetailView.jt;14587;@STATIC;1.0;I;20;AppKit/CPImageView.jI;15;AppKit/CPMenu.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.ji;22;../CPDate+Formatting.ji;43;../DataSources/MMPosterMetadataDataSource.ji;41;../DataSources/MMLibraryMediaDataSource.ji;43;../DataSources/MMBannerMetadataDataSource.ji;50;../DataSources/MMBackgroundArtMetadataDataSource.ji;26;../Models/MMMetadataItem.ji;11;HUDButton.ji;24;MMHorizontalScrollView.ji;21;MMTitleAndYearLabel.jt;14151;
objj_executeFile("AppKit/CPImageView.j",NO);
objj_executeFile("AppKit/CPMenu.j",NO);
objj_executeFile("AppKit/CPTextField.j",NO);
objj_executeFile("AppKit/CPView.j",NO);
objj_executeFile("../CPDate+Formatting.j",YES);
objj_executeFile("../DataSources/MMPosterMetadataDataSource.j",YES);
objj_executeFile("../DataSources/MMLibraryMediaDataSource.j",YES);
objj_executeFile("../DataSources/MMBannerMetadataDataSource.j",YES);
objj_executeFile("../DataSources/MMBackgroundArtMetadataDataSource.j",YES);
objj_executeFile("../Models/MMMetadataItem.j",YES);
objj_executeFile("HUDButton.j",YES);
objj_executeFile("MMHorizontalScrollView.j",YES);
objj_executeFile("MMTitleAndYearLabel.j",YES);
var _1=CGSizeMake(512,512);
var _2=CGSizeMake(1280,720);
var _3=objj_allocateClassPair(CPView,"MMMetadataItemDetailView"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_delegate"),new objj_ivar("titleAndYearLabel"),new objj_ivar("_taglineField"),new objj_ivar("_summaryField"),new objj_ivar("_thumbView"),new objj_ivar("_artView"),new objj_ivar("_title"),new objj_ivar("_year"),new objj_ivar("_tagline"),new objj_ivar("_summary"),new objj_ivar("_thumbImage"),new objj_ivar("_artImage"),new objj_ivar("artOverlay"),new objj_ivar("artOverlayView"),new objj_ivar("_containerView"),new objj_ivar("_childrenCollectionView"),new objj_ivar("_childrenController"),new objj_ivar("scrollView")]);
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
if(_28=objj_msgSendSuper({receiver:_28,super_class:objj_getClass("MMMetadataItemDetailView").super_class},"initWithFrame:",_2a)){
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
objj_msgSend(_thumbView,"setPlaceholder:",objj_msgSend(MMMetadataItem,"blankThumbImage"));
objj_msgSend(_thumbView,"setSizeConstraint:",_1);
objj_msgSend(_thumbView,"addObserver:forKeyPath:options:context:",_28,"imageRect",CPKeyValueChangeNewKey,nil);
objj_msgSend(_thumbView,"bind:toObject:withKeyPath:options:","image",_28,"thumbImage",nil);
objj_msgSend(_containerView,"addSubview:",_thumbView);
titleAndYearLabel=objj_msgSend(objj_msgSend(MMTitleAndYearLabel,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(titleAndYearLabel,"sizeToFit");
objj_msgSend(titleAndYearLabel,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(_thumbView,"frame"))+_2b,CGRectGetMinY(objj_msgSend(_thumbView,"frame"))));
objj_msgSend(titleAndYearLabel,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_containerView,"frame"))-_2b-CGRectGetMinX(objj_msgSend(titleAndYearLabel,"frame")),CGRectGetHeight(objj_msgSend(titleAndYearLabel,"frame"))));
objj_msgSend(titleAndYearLabel,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_containerView,"addSubview:",titleAndYearLabel);
_taglineField=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_taglineField,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",16));
objj_msgSend(_taglineField,"setStringValue:","Tagline");
objj_msgSend(_taglineField,"sizeToFit");
objj_msgSend(_taglineField,"bind:toObject:withKeyPath:options:",CPValueBinding,_28,"tagline",nil);
objj_msgSend(_taglineField,"setFrame:",CGRectMake(CGRectGetMinX(objj_msgSend(titleAndYearLabel,"frame")),CGRectGetMaxY(objj_msgSend(titleAndYearLabel,"frame")),CGRectGetMaxX(_2c)-_2b-CGRectGetMinX(objj_msgSend(titleAndYearLabel,"frame")),CGRectGetHeight(objj_msgSend(_taglineField,"frame"))));
objj_msgSend(_taglineField,"setAutoresizingMask:",CPViewMaxXMargin);
objj_msgSend(_taglineField,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(_containerView,"addSubview:",_taglineField);
_summaryField=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(CGRectGetMinX(objj_msgSend(_taglineField,"frame")),CGRectGetMaxY(objj_msgSend(_taglineField,"frame")),CGRectGetMaxX(_2c)-_2b-CGRectGetMinX(objj_msgSend(_taglineField,"frame")),CGRectGetMaxY(_2c)-_2b-CGRectGetMaxY(objj_msgSend(_taglineField,"frame"))));
objj_msgSend(_summaryField,"bind:toObject:withKeyPath:options:",CPValueBinding,_28,"summary",nil);
objj_msgSend(_summaryField,"setLineBreakMode:",CPLineBreakByWordWrapping);
objj_msgSend(_summaryField,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_containerView,"addSubview:",_summaryField);
var _2d=208;
_childrenCollectionView=objj_msgSend(objj_msgSend(MMCollectionView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_childrenCollectionView,"setDelegate:",_28);
scrollView=objj_msgSend(objj_msgSend(MMHorizontalScrollView,"alloc"),"initWithFrame:",CGRectMake(0,CGRectGetHeight(objj_msgSend(_28,"frame"))-_2d,CGRectGetWidth(objj_msgSend(_28,"frame")),_2d));
objj_msgSend(objj_msgSend(scrollView,"contentView"),"setBackgroundColor:",objj_msgSend(CPColor,"colorWithWhite:alpha:",1,0));
objj_msgSend(scrollView,"setAutoresizingMask:",CPViewWidthSizable|CPViewMinYMargin);
objj_msgSend(scrollView,"setDocumentView:",_childrenCollectionView);
objj_msgSend(_containerView,"addSubview:",scrollView);
}
return _28;
}
}),new objj_method(sel_getUid("setTitle:"),function(_2e,_2f,_30){
with(_2e){
_title=_30;
objj_msgSend(titleAndYearLabel,"setTitle:",_30);
}
}),new objj_method(sel_getUid("setYear:"),function(_31,_32,_33){
with(_31){
_year=_33;
objj_msgSend(titleAndYearLabel,"setYear:",_33);
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
objj_msgSendSuper({receiver:_51,super_class:objj_getClass("MMMetadataItemDetailView").super_class},"layoutSubviews");
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
objj_msgSend(objj_msgSend(scrollView,"leftScrollButton"),"setVerticalMargin:",CGRectGetHeight(objj_msgSend(objj_msgSend(_6c,"view"),"frame"))/3);
objj_msgSend(objj_msgSend(scrollView,"rightScrollButton"),"setVerticalMargin:",CGRectGetHeight(objj_msgSend(objj_msgSend(_6c,"view"),"frame"))/3);
}
}
}),new objj_method(sel_getUid("setChildrenController:"),function(_6d,_6e,_6f){
with(_6d){
if(_6f){
objj_msgSend(_6d,"bind:toObject:withKeyPath:options:","content",_6f,"arrangedObjects",nil);
if(!_childrenController){
objj_msgSend(_summaryField,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_summaryField,"frame")),CGRectGetHeight(objj_msgSend(_summaryField,"frame"))-CGRectGetHeight(objj_msgSend(_childrenCollectionView,"frame"))));
}
}else{
objj_msgSend(_childrenCollectionView,"unbind:","content");
if(_childrenController){
objj_msgSend(_summaryField,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_summaryField,"frame")),CGRectGetHeight(objj_msgSend(_summaryField,"frame"))+CGRectGetHeight(objj_msgSend(_childrenCollectionView,"frame"))));
}
}
_childrenController=_6f;
}
}),new objj_method(sel_getUid("setContent:"),function(_70,_71,_72){
with(_70){
objj_msgSend(_childrenCollectionView,"setContent:",_72);
objj_msgSend(_childrenCollectionView,"sizeToFitNumberOfColumns:withHorizontalMargin:",objj_msgSend(_72,"count"),0);
}
}),new objj_method(sel_getUid("collectionView:didDoubleClickOnItemAtIndex:"),function(_73,_74,_75,_76){
with(_73){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("metadataItemDetailView:didSelectChild:"))){
objj_msgSend(_delegate,"metadataItemDetailView:didSelectChild:",_73,objj_msgSend(objj_msgSend(_75,"content"),"objectAtIndex:",_76));
}
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
p;19;Views/MMAlbumCell.jt;1800;@STATIC;1.0;i;26;MMCollectionViewItemCell.jt;1750;
objj_executeFile("MMCollectionViewItemCell.j",YES);
var _1=CGSizeMake(128,128);
var _2=objj_allocateClassPair(MMCollectionViewItemCell,"MMAlbumCell"),_3=_2.isa;
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("loadView"),function(_4,_5){
with(_4){
objj_msgSendSuper({receiver:_4,super_class:objj_getClass("MMAlbumCell").super_class},"loadView");
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
return CPLocalizedString("no tracks","Subtitle for a album thumbnail on an artist detail view");
case 1:
return CPLocalizedString("1 track","Subtitle for a album thumbnail on an artist detail view");
default:
return objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("%d tracks","Subtitle for a album thumbnail on an artist detail view"),objj_msgSend(objj_msgSend(_6,"representedObject"),"leafCount"));
}
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("keyPathsForValuesAffectingSubtitle"),function(_8,_9){
with(_8){
return objj_msgSend(CPSet,"setWithObject:","representedObject");
}
})]);
p;32;Views/MMCollectionViewItemCell.jt;5539;@STATIC;1.0;i;17;MMSelectionView.ji;12;MMLazyView.ji;13;MMImageView.jt;5463;
objj_executeFile("MMSelectionView.j",YES);
objj_executeFile("MMLazyView.j",YES);
objj_executeFile("MMImageView.j",YES);
var _1=4;
var _2=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","BlankPoster.png"));
var _3=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","AlertCautionIcon.png"));
var _4=CGSizeMake(148,156);
var _5=objj_allocateClassPair(MMLazyView,"MMCollectionViewItemCell"),_6=_5.isa;
class_addIvars(_5,[new objj_ivar("_representedObject"),new objj_ivar("_image"),new objj_ivar("_imageView"),new objj_ivar("_titleLabel"),new objj_ivar("_subtitleLabel"),new objj_ivar("trashedFlagView"),new objj_ivar("_thumbSize"),new objj_ivar("_thumbMargin"),new objj_ivar("_selectionView"),new objj_ivar("_allowsSelection")]);
objj_registerClassPair(_5);
class_addMethods(_5,[new objj_method(sel_getUid("representedObject"),function(_7,_8){
with(_7){
return _representedObject;
}
}),new objj_method(sel_getUid("setRepresentedObject:"),function(_9,_a,_b){
with(_9){
_representedObject=_b;
}
}),new objj_method(sel_getUid("image"),function(_c,_d){
with(_c){
return _image;
}
}),new objj_method(sel_getUid("setImage:"),function(_e,_f,_10){
with(_e){
_image=_10;
}
}),new objj_method(sel_getUid("imageView"),function(_11,_12){
with(_11){
return _imageView;
}
}),new objj_method(sel_getUid("setImageView:"),function(_13,_14,_15){
with(_13){
_imageView=_15;
}
}),new objj_method(sel_getUid("titleLabel"),function(_16,_17){
with(_16){
return _titleLabel;
}
}),new objj_method(sel_getUid("setTitleLabel:"),function(_18,_19,_1a){
with(_18){
_titleLabel=_1a;
}
}),new objj_method(sel_getUid("subtitleLabel"),function(_1b,_1c){
with(_1b){
return _subtitleLabel;
}
}),new objj_method(sel_getUid("setSubtitleLabel:"),function(_1d,_1e,_1f){
with(_1d){
_subtitleLabel=_1f;
}
}),new objj_method(sel_getUid("_allowsSelection"),function(_20,_21){
with(_20){
return _allowsSelection;
}
}),new objj_method(sel_getUid("_setAllowsSelection:"),function(_22,_23,_24){
with(_22){
_allowsSelection=_24;
}
}),new objj_method(sel_getUid("setRepresentedObject:"),function(_25,_26,_27){
with(_25){
if(_representedObject==_27){
return;
}
_representedObject=_27;
}
}),new objj_method(sel_getUid("loadView"),function(_28,_29){
with(_28){
if(_thumbSize===nil){
_thumbSize=_4;
}
if(_thumbMargin===nil){
_thumbMargin=12;
}
if(_allowsSelection===nil){
_allowsSelection=YES;
}
var _2a=CGRectGetWidth(objj_msgSend(_28,"frame")),_2b=CGRectGetHeight(objj_msgSend(_28,"frame"));
if(!_subtitleLabel){
_subtitleLabel=objj_msgSend(CPTextField,"labelWithTitle:","");
objj_msgSend(_subtitleLabel,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",10));
objj_msgSend(_subtitleLabel,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_subtitleLabel,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(_subtitleLabel,"setFrame:",CGRectMake(0,_2b-15-CGRectGetHeight(objj_msgSend(_subtitleLabel,"frame")),_2a,CGRectGetHeight(objj_msgSend(_subtitleLabel,"frame"))));
objj_msgSend(_28,"addSubview:",_subtitleLabel);
}
if(!_titleLabel){
_titleLabel=objj_msgSend(CPTextField,"labelWithTitle:","");
objj_msgSend(_titleLabel,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",12));
objj_msgSend(_titleLabel,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_titleLabel,"setLineBreakMode:",CPLineBreakByTruncatingTail);
objj_msgSend(_titleLabel,"setFrame:",CGRectMake(0,CGRectGetMinY(objj_msgSend(_subtitleLabel,"frame"))-CGRectGetHeight(objj_msgSend(_titleLabel,"frame")),_2a,CGRectGetHeight(objj_msgSend(_subtitleLabel,"frame"))));
objj_msgSend(_28,"addSubview:",_titleLabel);
}
if(!_imageView){
_imageView=objj_msgSend(objj_msgSend(MMImageView,"alloc"),"initWithFrame:",CGRectMake(_thumbMargin,0,CGRectGetWidth(objj_msgSend(_28,"frame"))-_thumbMargin*2,CGRectGetHeight(objj_msgSend(_28,"frame"))-CGRectGetHeight(objj_msgSend(_titleLabel,"frame"))-CGRectGetHeight(objj_msgSend(_subtitleLabel,"frame"))-3-_thumbMargin*2));
objj_msgSend(_imageView,"setBorderRadius:",4);
objj_msgSend(_imageView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_imageView,"setImageScaling:",CPScaleProportionally);
objj_msgSend(_imageView,"setImageAlignment:",CPImageAlignBottom);
objj_msgSend(_imageView,"setHasShadow:",YES);
objj_msgSend(_imageView,"setSizeConstraint:",_4);
objj_msgSend(_imageView,"setPlaceholder:",_2);
objj_msgSend(_imageView,"bind:toObject:withKeyPath:options:",CPValueBinding,_28,"image",nil);
objj_msgSend(_28,"addSubview:",_imageView);
}
if(!trashedFlagView){
var _2c=28,_2d=28;
trashedFlagView=objj_msgSend(objj_msgSend(MMImageView,"alloc"),"initWithFrame:",CGRectMake(CGRectGetMinX(objj_msgSend(_imageView,"frame"))+14,CGRectGetMaxY(objj_msgSend(_imageView,"frame"))-_2d-14,_2c,_2d));
objj_msgSend(trashedFlagView,"setImage:",_3);
objj_msgSend(trashedFlagView,"bind:toObject:withKeyPath:options:","hidden",_28,"representedObject.deletedAt",objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",CPIsNilTransformerName,CPValueTransformerNameBindingOption));
objj_msgSend(_28,"addSubview:",trashedFlagView);
}
}
}),new objj_method(sel_getUid("setSelected:"),function(_2e,_2f,_30){
with(_2e){
if(_allowsSelection&&_30&&!_selectionView&&_imageView){
_selectionView=objj_msgSend(MMSelectionView,"selectionViewForView:",_imageView);
}
objj_msgSend(_selectionView,"setSelected:",_30);
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
p;41;DataSources/MMLibraryTimelineDataSource.jt;4939;@STATIC;1.0;I;19;Foundation/CPDate.jI;20;Foundation/CPTimer.ji;26;MMLibraryMediaDataSource.ji;28;../Models/MMLibrarySection.ji;26;../Models/MMMetadataItem.jt;4776;
objj_executeFile("Foundation/CPDate.j",NO);
objj_executeFile("Foundation/CPTimer.j",NO);
objj_executeFile("MMLibraryMediaDataSource.j",YES);
objj_executeFile("../Models/MMLibrarySection.j",YES);
objj_executeFile("../Models/MMMetadataItem.j",YES);
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
return objj_msgSend(PMSURL,"URLWithPath:params:",objj_msgSend(CPString,"stringWithFormat:","%@/timeline",objj_msgSend(objj_msgSend(_16,"URL"),"path")),objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(_17,"isKindOfClass:",CPDate)?FLOOR(objj_msgSend(_17,"timeIntervalSince1970")):_17,"start"));
}
}),new objj_method(sel_getUid("didReceiveRecordsAsData:connection:contextInfo:"),function(_18,_19,_1a,_1b,_1c){
with(_18){
var _1d=objj_msgSend(_1b,"responseXML"),_1e=_1d.documentElement,_1f=objj_msgSend(_1c,"isKindOfClass:",MMLibrarySection)?_1c:objj_msgSend(_1c,"objectForKey:",MMLibrarySectionContextInfoKey);
_latestEntryTime=objj_msgSend(CPDate,"dateWithTimeIntervalSince1970:",Number(_1e.getAttribute("latestEntryTime")));
objj_msgSend(_1f,"setValuesForNodeAttributes:ignoreUndefinedKeys:",_1e,YES);
objj_msgSendSuper({receiver:_18,super_class:objj_getClass("MMLibraryTimelineDataSource").super_class},"didReceiveRecordsAsData:connection:contextInfo:",_1a,_1b,_1f);
}
}),new objj_method(sel_getUid("shouldProcessNode:contextInfo:"),function(_20,_21,_22,_23){
with(_20){
if(!objj_msgSendSuper({receiver:_20,super_class:objj_getClass("MMLibraryTimelineDataSource").super_class},"shouldProcessNode:contextInfo:",_22,_23)){
return NO;
}
if(Number(_22.getAttribute("state"))==MMMetadataItemStateCreated){
var id=objj_msgSend(MMMetadataItem,"idFromKey:",String(_22.getAttribute("key")));
return !objj_msgSend(objj_msgSend(_20,"dataStore"),"hasRecordWithClass:id:",MMMetadataItem,id);
}
return YES;
}
}),new objj_method(sel_getUid("didReceiveRecords:connection:contextInfo:"),function(_24,_25,_26,_27,_28){
with(_24){
var _29=objj_msgSend(_28,"isKindOfClass:",MMLibrarySection)?_28:objj_msgSend(_28,"objectForKey:",MMLibrarySectionContextInfoKey);
objj_msgSendSuper({receiver:_24,super_class:objj_getClass("MMLibraryTimelineDataSource").super_class},"didReceiveRecords:connection:contextInfo:",_26,_27,_29);
for(var i=0;i<objj_msgSend(_26,"count");i++){
var _2a=objj_msgSend(_26,"objectAtIndex:",i),_2b=objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_28,_2a],["contextInfo","record"]),_2c=nil;
CPLog.debug("%@ changed to %d (%@)",objj_msgSend(_2a,"title")||"(no title)",objj_msgSend(_2a,"state"),objj_msgSend(_2a,"stateString"));
switch(objj_msgSend(_2a,"state")){
case MMMetadataItemStateDeleted:
_2c=MMDataSourceDidDeleteRecord;
objj_msgSend(_2a,"recordWasDeleted");
break;
case MMMetadataItemStateCreated:
_2c=MMDataSourceDidCreateRecord;
objj_msgSend(_2a,"recordWasCreated");
break;
default:
_2c=MMDataSourceDidUpdateRecord;
objj_msgSend(_2a,"recordWasUpdated");
break;
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",_2c,_24,_2b);
}
objj_msgSend(_24,"_scheduleTimer");
}
})]);
p;24;Models/PMSCapabilities.jt;2433;@STATIC;1.0;t;2414;
var _1=nil;
var _2=objj_allocateClassPair(CPObject,"PMSCapabilities"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("libraryChangeWatchingSupported"),new objj_ivar("libraryTimedUpdatesSupported"),new objj_ivar("iTunesSharingSupported"),new objj_ivar("iPhotoSharingSupported"),new objj_ivar("ApertureSharingSupported")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("libraryChangeWatchingSupported"),function(_4,_5){
with(_4){
return libraryChangeWatchingSupported;
}
}),new objj_method(sel_getUid("libraryTimedUpdatesSupported"),function(_6,_7){
with(_6){
return libraryTimedUpdatesSupported;
}
}),new objj_method(sel_getUid("iTunesSharingSupported"),function(_8,_9){
with(_8){
return iTunesSharingSupported;
}
}),new objj_method(sel_getUid("iPhotoSharingSupported"),function(_a,_b){
with(_a){
return iPhotoSharingSupported;
}
}),new objj_method(sel_getUid("ApertureSharingSupported"),function(_c,_d){
with(_c){
return ApertureSharingSupported;
}
}),new objj_method(sel_getUid("init"),function(_e,_f){
with(_e){
if(_e=objj_msgSendSuper({receiver:_e,super_class:objj_getClass("PMSCapabilities").super_class},"init")){
iTunesSharingSupported=iPhotoSharingSupported=ApertureSharingSupported=(OPERATING_SYSTEM==CPMacOperatingSystem);
}
return _e;
}
}),new objj_method(sel_getUid("refresh"),function(_10,_11){
with(_10){
objj_msgSend(CPURLConnection,"connectionWithRequest:delegate:",objj_msgSend(CPURLRequest,"requestWithURL:",objj_msgSend(PMSURL,"URLWithPath:","/")),_10);
}
}),new objj_method(sel_getUid("connection:didReceiveResponse:"),function(_12,_13,_14,_15){
with(_12){
if(objj_msgSend(_15,"statusCode")!=200){
objj_msgSend(_14,"cancel");
}
}
}),new objj_method(sel_getUid("connection:didReceiveData:"),function(_16,_17,_18,_19){
with(_16){
var _1a=objj_msgSend(_18,"responseXML");
if(!_1a){
return;
}
var _1b=_1a.documentElement;
libraryTimedUpdatesSupported=(_1b.getAttribute("libraryNoTimedUpdates")!="1");
libraryChangeWatchingSupported=(_1b.getAttribute("libraryNoChangeWatching")!="1");
}
}),new objj_method(sel_getUid("anySharingSupported"),function(_1c,_1d){
with(_1c){
return iTunesSharingSupported||iPhotoSharingSupported||ApertureSharingSupported;
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("sharedPMSCapabilities"),function(_1e,_1f){
with(_1e){
if(!_1){
_1=objj_msgSend(objj_msgSend(_1e,"alloc"),"init");
objj_msgSend(_1,"refresh");
}
return _1;
}
})]);
p;33;Controllers/MMContentController.jt;11880;@STATIC;1.0;I;25;AppKit/CPViewController.jI;24;AppKit/CPViewAnimation.ji;20;../Views/MMToolbar.jt;11776;
objj_executeFile("AppKit/CPViewController.j",NO);
objj_executeFile("AppKit/CPViewAnimation.j",NO);
objj_executeFile("../Views/MMToolbar.j",YES);
var _1=objj_allocateClassPair(CPViewController,"MMContentController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("viewControllers"),new objj_ivar("status"),new objj_ivar("navigationBar"),new objj_ivar("links")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("status"),function(_3,_4){
with(_3){
return status;
}
}),new objj_method(sel_getUid("setStatus:"),function(_5,_6,_7){
with(_5){
status=_7;
}
}),new objj_method(sel_getUid("init"),function(_8,_9){
with(_8){
if(_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("MMContentController").super_class},"init")){
viewControllers=objj_msgSend(CPArray,"array");
links=objj_msgSend(CPArray,"array");
objj_msgSend(_8,"addObserver:forKeyPath:options:context:",_8,"currentController",CPKeyValueChangeNewKey,nil);
}
return _8;
}
}),new objj_method(sel_getUid("navigationBar"),function(_a,_b){
with(_a){
objj_msgSend(_a,"view");
return navigationBar;
}
}),new objj_method(sel_getUid("loadView"),function(_c,_d){
with(_c){
var _e=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMakeZero());
navigationBar=objj_msgSend(objj_msgSend(MMToolbar,"alloc"),"initWithFrame:",CGRectMake(0,-1,0,30));
objj_msgSend(navigationBar,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_e,"addSubview:",navigationBar);
objj_msgSend(_e,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_c,"setView:",_e);
}
}),new objj_method(sel_getUid("pushViewController:animated:"),function(_f,_10,_11,_12){
with(_f){
if(objj_msgSend(_11,"respondsToSelector:",sel_getUid("willBePushedOntoContentController:"))){
objj_msgSend(_11,"willBePushedOntoContentController:",_f);
}
if(objj_msgSend(_11,"respondsToSelector:",sel_getUid("willBeOrderedFrontByContentController:"))){
objj_msgSend(_11,"willBeOrderedFrontByContentController:",_f);
}
if(objj_msgSend(_11,"respondsToSelector:",sel_getUid("setParentViewController:"))){
objj_msgSend(_11,"setParentViewController:",_f);
}
if(objj_msgSend(objj_msgSend(_f,"currentController"),"respondsToSelector:",sel_getUid("willBeOrderedBackByContentController:"))){
objj_msgSend(objj_msgSend(_f,"currentController"),"willBeOrderedBackByContentController:",_f);
}
objj_msgSend(_f,"willChangeValueForKey:","currentController");
objj_msgSend(viewControllers,"addObject:",_11);
var _13=objj_msgSend(_11,"view");
if(objj_msgSend(_11,"respondsToSelector:",sel_getUid("prepareViewForContentController:"))){
objj_msgSend(_11,"prepareViewForContentController:",_f);
}else{
objj_msgSend(_13,"setFrame:",objj_msgSend(_f,"contentRect"));
objj_msgSend(_13,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
}
if(objj_msgSend(_11,"respondsToSelector:",sel_getUid("title"))){
objj_msgSend(_11,"addObserver:forKeyPath:options:context:",_f,"title",CPKeyValueChangeNewKey,nil);
}
objj_msgSend(_f,"synchronize");
if(_12){
var _14=_11,_15=objj_msgSend(_14,"view"),_16=objj_msgSend(_15,"frame"),_17=CGRectOffset(_16,0,CGRectGetHeight(_16));
objj_msgSend(_15,"setFrame:",_17);
objj_msgSend(objj_msgSend(_f,"view"),"addSubview:",_15);
var _18=objj_msgSend(objj_msgSend(CPViewAnimation,"alloc"),"initWithViewAnimations:",objj_msgSend(CPArray,"arrayWithObjects:",objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_15,CPViewAnimationTargetKey,_17,CPViewAnimationStartFrameKey,_16,CPViewAnimationEndFrameKey)));
objj_msgSend(_18,"setDuration:",0.25);
objj_msgSend(_18,"setAnimationCurve:",CPAnimationEaseIn);
objj_msgSend(_18,"startAnimation");
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",0.25,_f,sel_getUid("viewControllerPushAnimationDidFinish:"),_14,NO);
}else{
objj_msgSend(objj_msgSend(_f,"view"),"addSubview:",_13);
if(objj_msgSend(_11,"respondsToSelector:",sel_getUid("wasPushedOntoContentController:"))){
objj_msgSend(_11,"wasPushedOntoContentController:",_f);
}
if(objj_msgSend(_11,"respondsToSelector:",sel_getUid("wasOrderedFrontByContentController:"))){
objj_msgSend(_11,"wasOrderedFrontByContentController:",_f);
}
objj_msgSend(_f,"didChangeValueForKey:","currentController");
}
}
}),new objj_method(sel_getUid("contentRect"),function(_19,_1a){
with(_19){
return CGRectMake(0,CGRectGetMaxY(objj_msgSend(navigationBar,"frame")),CGRectGetWidth(objj_msgSend(objj_msgSend(_19,"view"),"frame")),CGRectGetHeight(objj_msgSend(objj_msgSend(_19,"view"),"frame"))-CGRectGetHeight(objj_msgSend(navigationBar,"frame")));
}
}),new objj_method(sel_getUid("popViewControllerAnimated:"),function(_1b,_1c,_1d){
with(_1b){
if(objj_msgSend(viewControllers,"count")<=1){
return;
}
objj_msgSend(_1b,"popToViewController:animated:",objj_msgSend(viewControllers,"objectAtIndex:",objj_msgSend(viewControllers,"count")-2),_1d);
}
}),new objj_method(sel_getUid("popToViewController:animated:"),function(_1e,_1f,_20,_21){
with(_1e){
var _22=objj_msgSend(viewControllers,"indexOfObject:",_20);
if(_22==CPNotFound||(_22==objj_msgSend(viewControllers,"count")-1)){
return;
}
objj_msgSend(_1e,"willChangeValueForKey:","currentController");
if(objj_msgSend(_20,"respondsToSelector:",sel_getUid("willBeOrderedFrontByContentController:"))){
objj_msgSend(_20,"willBeOrderedFrontByContentController:",_1e);
}
var _23=_22+1,_24=objj_msgSend(viewControllers,"count")-(_21?2:1);
for(var i=_24;i>=_23;i--){
var _25=viewControllers[i];
if(objj_msgSend(_25,"respondsToSelector:",sel_getUid("willBePoppedOffContentController:"))){
objj_msgSend(_25,"willBePoppedOffContentController:",_1e);
}
if(objj_msgSend(_25,"respondsToSelector:",sel_getUid("setParentViewController:"))){
objj_msgSend(_25,"setParentViewController:",nil);
}
if(objj_msgSend(_25,"respondsToSelector:",sel_getUid("title"))){
objj_msgSend(_25,"removeObserver:forKeyPath:",_1e,"title");
}
objj_msgSend(objj_msgSend(_25,"view"),"removeFromSuperview");
if(objj_msgSend(_25,"respondsToSelector:",sel_getUid("wasPoppedOffContentController:"))){
objj_msgSend(_25,"wasPoppedOffContentController:",_1e);
}
}
objj_msgSend(viewControllers,"removeObjectsInRange:",CPMakeRange(_23,_24-_23+1));
if(_21){
var _26=objj_msgSend(_1e,"currentController"),_27=objj_msgSend(_26,"view");
if(objj_msgSend(_26,"respondsToSelector:",sel_getUid("willBePoppedOffContentController:"))){
objj_msgSend(_26,"willBePoppedOffContentController:",_1e);
}
if(objj_msgSend(_26,"respondsToSelector:",sel_getUid("setParentViewController:"))){
objj_msgSend(_26,"setParentViewController:",nil);
}
if(objj_msgSend(_26,"respondsToSelector:",sel_getUid("title"))){
objj_msgSend(_26,"removeObserver:forKeyPath:",_1e,"title");
}
objj_msgSend(viewControllers,"removeLastObject");
var _28=objj_msgSend(objj_msgSend(CPViewAnimation,"alloc"),"initWithViewAnimations:",objj_msgSend(CPArray,"arrayWithObjects:",objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_27,CPViewAnimationTargetKey,objj_msgSend(_27,"frame"),CPViewAnimationStartFrameKey,CGRectOffset(objj_msgSend(_27,"frame"),0,CGRectGetHeight(objj_msgSend(_27,"frame"))),CPViewAnimationEndFrameKey)));
objj_msgSend(_28,"setDuration:",0.25);
objj_msgSend(_28,"setAnimationCurve:",CPAnimationEaseIn);
objj_msgSend(_28,"startAnimation");
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",0.25,_1e,sel_getUid("viewControllerPopAnimationDidFinish:"),_26,NO);
}else{
if(objj_msgSend(_20,"respondsToSelector:",sel_getUid("wasOrderedFrontByContentController:"))){
objj_msgSend(_20,"wasOrderedFrontByContentController:",_1e);
}
objj_msgSend(_1e,"didChangeValueForKey:","currentController");
}
objj_msgSend(_1e,"synchronize");
}
}),new objj_method(sel_getUid("viewControllerPopAnimationDidFinish:"),function(_29,_2a,_2b){
with(_29){
var _2c=objj_msgSend(_2b,"userInfo");
objj_msgSend(objj_msgSend(_2c,"view"),"removeFromSuperview");
if(objj_msgSend(_2c,"respondsToSelector:",sel_getUid("wasPoppedOffContentController:"))){
objj_msgSend(_2c,"wasPoppedOffContentController:",_29);
}
if(objj_msgSend(_2c,"respondsToSelector:",sel_getUid("setParentViewController:"))){
objj_msgSend(_2c,"setParentViewController:",nil);
}
objj_msgSend(_29,"didChangeValueForKey:","currentController");
}
}),new objj_method(sel_getUid("viewControllerPushAnimationDidFinish:"),function(_2d,_2e,_2f){
with(_2d){
var _30=objj_msgSend(_2f,"userInfo");
if(objj_msgSend(_30,"respondsToSelector:",sel_getUid("wasPushedOntoContentController:"))){
objj_msgSend(_30,"wasPushedOntoContentController:",_2d);
}
if(objj_msgSend(_30,"respondsToSelector:",sel_getUid("wasOrderedFrontByContentController:"))){
objj_msgSend(_30,"wasOrderedFrontByContentController:",_2d);
}
objj_msgSend(_2d,"didChangeValueForKey:","currentController");
}
}),new objj_method(sel_getUid("popToRootViewControllerAnimated:"),function(_31,_32,_33){
with(_31){
if(objj_msgSend(viewControllers,"count")<=1){
return;
}
objj_msgSend(_31,"popToViewController:animated:",viewControllers[0],_33);
}
}),new objj_method(sel_getUid("currentController"),function(_34,_35){
with(_34){
return objj_msgSend(viewControllers,"lastObject");
}
}),new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"),function(_36,_37,_38,_39,_3a,_3b){
with(_36){
if(_38=="title"&&objj_msgSend(viewControllers,"containsObject:",_39)){
objj_msgSend(_36,"synchronize");
}else{
if(_38=="currentController"&&_39==_36){
var _3c=objj_msgSend(_36,"currentController");
if(objj_msgSend(_3c,"respondsToSelector:",sel_getUid("status"))){
objj_msgSend(_36,"bind:toObject:withKeyPath:options:","status",_3c,"status",nil);
}else{
objj_msgSend(_36,"unbind:","status");
objj_msgSend(_36,"setStatus:",nil);
}
}
}
}
}),new objj_method(sel_getUid("synchronize"),function(_3d,_3e){
with(_3d){
var _3f=objj_msgSend(CPFont,"boldSystemFontOfSize:",12),_40=objj_msgSend("  ","sizeWithFont:",_3f).width,_41=15,_42=[];
for(var i=0,_43=objj_msgSend(viewControllers,"count");i<_43;i++){
var _44=viewControllers[i];
if(!objj_msgSend(_44,"respondsToSelector:",sel_getUid("isNavigable"))||objj_msgSend(_44,"isNavigable")){
objj_msgSend(_42,"addObject:",_44);
}
}
for(var i=0,_43=objj_msgSend(_42,"count");i<_43;i++){
var _44=_42[i],_45,_46=(objj_msgSend(_44,"respondsToSelector:",sel_getUid("title"))&&objj_msgSend(_44,"title"))||"";
if(i<objj_msgSend(links,"count")){
_45=objj_msgSend(links,"objectAtIndex:",i);
}else{
_45=objj_msgSend(objj_msgSend(LPAnchorButton,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_45,"setFont:",_3f);
objj_msgSend(_45,"setTextColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(links,"addObject:",_45);
_45._MMViewWithToolbar_index=i;
objj_msgSend(_45,"setTarget:",_3d);
objj_msgSend(_45,"setAction:",sel_getUid("navigate:"));
objj_msgSend(navigationBar,"addSubview:",_45);
}
objj_msgSend(_45,"setTitle:",_46+(i+1<_43?"  »":""));
objj_msgSend(_45,"sizeToFit");
objj_msgSend(_45,"setFrameOrigin:",CGPointMake(_41,(CGRectGetHeight(objj_msgSend(navigationBar,"frame"))-CGRectGetHeight(objj_msgSend(_45,"frame")))/2));
_41=CGRectGetMaxX(objj_msgSend(_45,"frame"))+_40;
objj_msgSend(_45,"setHidden:",NO);
}
for(var i=objj_msgSend(viewControllers,"count");i<objj_msgSend(links,"count");i++){
objj_msgSend(links[i],"unbind:",CPValueBinding);
objj_msgSend(links[i],"setHidden:",YES);
}
}
}),new objj_method(sel_getUid("navigate:"),function(_47,_48,_49){
with(_47){
var _4a=objj_msgSend(viewControllers,"objectAtIndex:",_49._MMViewWithToolbar_index);
if(objj_msgSend(_4a,"respondsToSelector:",sel_getUid("location"))){
objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"setLocation:",objj_msgSend(_4a,"location"));
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("keyPathsForValuesAffectingStatus"),function(_4b,_4c){
with(_4b){
return objj_msgSend(CPSet,"setWithObject:","currentController");
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
p;52;Controllers/MMMetadataItemCollectionViewController.jt;14244;@STATIC;1.0;I;25;AppKit/CPViewController.ji;41;../DataSources/MMLibraryMediaDataSource.ji;44;../DataSources/MMLibraryTimelineDataSource.ji;28;../Models/MMLibrarySection.ji;39;../Views/MMMetadataItemCollectionView.ji;29;../Views/MMMetadataItemCell.ji;23;../Views/MMScrollView.jt;13960;
objj_executeFile("AppKit/CPViewController.j",NO);
objj_executeFile("../DataSources/MMLibraryMediaDataSource.j",YES);
objj_executeFile("../DataSources/MMLibraryTimelineDataSource.j",YES);
objj_executeFile("../Models/MMLibrarySection.j",YES);
objj_executeFile("../Views/MMMetadataItemCollectionView.j",YES);
objj_executeFile("../Views/MMMetadataItemCell.j",YES);
objj_executeFile("../Views/MMScrollView.j",YES);
MMMetadataItemCollectionViewControllerStateInitialized=0;
MMMetadataItemCollectionViewControllerStateLoading=1;
MMMetadataItemCollectionViewControllerStateLoaded=2;
var _1=nil;
var _2=objj_allocateClassPair(CPViewController,"MMMetadataItemCollectionViewController"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_librarySection"),new objj_ivar("_dataSource"),new objj_ivar("_collectionView"),new objj_ivar("_sortDescriptor"),new objj_ivar("_title"),new objj_ivar("updateStatus"),new objj_ivar("_readyState")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("librarySection"),function(_4,_5){
with(_4){
return _librarySection;
}
}),new objj_method(sel_getUid("setLibrarySection:"),function(_6,_7,_8){
with(_6){
_librarySection=_8;
}
}),new objj_method(sel_getUid("title"),function(_9,_a){
with(_9){
return _title;
}
}),new objj_method(sel_getUid("setTitle:"),function(_b,_c,_d){
with(_b){
_title=_d;
}
}),new objj_method(sel_getUid("init"),function(_e,_f){
with(_e){
if(_e=objj_msgSendSuper({receiver:_e,super_class:objj_getClass("MMMetadataItemCollectionViewController").super_class},"init")){
objj_msgSend(_e,"bind:toObject:withKeyPath:options:","title",_e,"librarySection.title",nil);
_sortDescriptor=objj_msgSend(CPSortDescriptor,"sortDescriptorWithKey:ascending:","titleSort",YES);
var _10=objj_msgSend(CPNotificationCenter,"defaultCenter");
objj_msgSend(_10,"addObserver:selector:name:object:",_e,sel_getUid("_recordWasUpdated:"),MMDataSourceDidUpdateRecord,nil);
objj_msgSend(_10,"addObserver:selector:name:object:",_e,sel_getUid("_recordWasDeleted:"),MMDataSourceDidDeleteRecord,nil);
objj_msgSend(_10,"addObserver:selector:name:object:",_e,sel_getUid("_recordWasCreated:"),MMDataSourceDidCreateRecord,nil);
_readyState=MMMetadataItemCollectionViewControllerStateInitialized;
}
return _e;
}
}),new objj_method(sel_getUid("dataSource"),function(_11,_12){
with(_11){
if(!_dataSource){
_dataSource=objj_msgSend(objj_msgSend(MMLibraryMediaDataSource,"alloc"),"initWithDelegate:",_11);
}
return _dataSource;
}
}),new objj_method(sel_getUid("setLibrarySection:"),function(_13,_14,_15){
with(_13){
var _16=(_librarySection!=_15);
_librarySection=_15;
if(_16){
objj_msgSend(objj_msgSend(MMLibraryTimelineDataSource,"sharedDataSource"),"stopWatchingTimeline");
}
if(!_librarySection){
objj_msgSend(_13,"setContent:",[]);
}
if(_librarySection&&_16){
_readyState=MMMetadataItemCollectionViewControllerStateLoading;
objj_msgSend(objj_msgSend(_13,"dataSource"),"refreshRecordsWithContextInfo:",_librarySection);
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:callback:repeats:",0,function(){
objj_msgSend(objj_msgSend(_collectionView,"window"),"makeFirstResponder:",_collectionView);
},NO);
}
}
}),new objj_method(sel_getUid("dataSource:didReceiveRecords:contextInfo:"),function(_17,_18,_19,_1a,_1b){
with(_17){
if((_19!=_dataSource)||(_librarySection!=_1b)){
return;
}
objj_msgSend(_collectionView,"scrollPoint:",CGPointMake(0,0));
objj_msgSend(_collectionView,"setSelectionIndexes:",objj_msgSend(CPIndexSet,"indexSet"));
objj_msgSend(_17,"setContent:",_1a);
objj_msgSend(objj_msgSend(MMLibraryTimelineDataSource,"sharedDataSource"),"watchTimelineForLibrarySection:",_librarySection);
}
}),new objj_method(sel_getUid("_recordWasUpdated:"),function(_1c,_1d,_1e){
with(_1c){
var _1f=objj_msgSend(_1e,"userInfo"),_20=objj_msgSend(_1f,"objectForKey:","record"),_21=objj_msgSend(_1f,"objectForKey:","contextInfo");
if(!objj_msgSend(_20,"isKindOfClass:",MMMetadataItem)||!objj_msgSend(objj_msgSend(_20,"librarySection"),"isEqual:",_librarySection)){
return;
}
if(!objj_msgSend(objj_msgSend(_1c,"content"),"containsObject:",_20)){
CPLog.info("[%@ _recordWasUpdated:] we haven't seen %@ before, add it",objj_msgSend(_1c,"class"),_20);
objj_msgSend(_1c,"_recordWasCreated:",_1e);
}
objj_msgSend(_1c,"showUpdateStatusForItem:",_20);
}
}),new objj_method(sel_getUid("_recordWasDeleted:"),function(_22,_23,_24){
with(_22){
var _25=objj_msgSend(_24,"userInfo"),_26=objj_msgSend(_25,"objectForKey:","record");
if(!objj_msgSend(_26,"isKindOfClass:",MMMetadataItem)||!objj_msgSend(objj_msgSend(_26,"librarySection"),"isEqual:",_librarySection)){
return;
}
CPLog.info("[%@ _recordWasDeleted:] removing record with id=%@",objj_msgSend(_22,"class"),objj_msgSend(_26,"id"));
objj_msgSend(_22,"willChangeValueForKey:","content");
objj_msgSend(_collectionView,"removeObject:",_26);
objj_msgSend(_22,"didChangeValueForKey:","content");
}
}),new objj_method(sel_getUid("_recordWasCreated:"),function(_27,_28,_29){
with(_27){
var _2a=objj_msgSend(_29,"userInfo"),_2b=objj_msgSend(_2a,"objectForKey:","record");
if(!objj_msgSend(_2b,"isKindOfClass:",MMMetadataItem)||!objj_msgSend(objj_msgSend(_2b,"librarySection"),"isEqual:",_librarySection)){
return;
}
CPLog.info("[%@ _recordWasCreated:] adding record %@",objj_msgSend(_27,"class"),_2b);
objj_msgSend(_27,"willChangeValueForKey:","content");
objj_msgSend(_collectionView,"insertObject:inArraySortedByDescriptors:",_2b,[_sortDescriptor]);
objj_msgSend(_27,"didChangeValueForKey:","content");
objj_msgSend(_27,"showUpdateStatusForItem:",_2b);
}
}),new objj_method(sel_getUid("status"),function(_2c,_2d){
with(_2c){
if(!_librarySection){
return nil;
}
var _2e=objj_msgSend(_librarySection,"type"),_2f="%d "+_2e,_30=(_readyState===MMMetadataItemCollectionViewControllerStateLoaded)?objj_msgSend(objj_msgSend(_2c,"content"),"count"):0;
switch(_30){
case 0:
switch(_2e){
case "movie":
_2f=CPLocalizedString("no movies","Status label value for when there are no movies");
break;
case "show":
_2f=CPLocalizedString("no TV shows","Status label value when there are no TV shows");
break;
case "artist":
_2f=CPLocalizedString("no artists","Status label value when there are no musical artists");
break;
}
break;
case 1:
switch(_2e){
case "movie":
_2f=CPLocalizedString("1 movie","Status label value for when there is one movie");
break;
case "show":
_2f=CPLocalizedString("1 TV show","Status label value for when there is one TV show");
break;
case "artist":
_2f=CPLocalizedString("1 artist","Status label value for when there is one musical artist");
break;
}
break;
default:
switch(_2e){
case "movie":
_2f=CPLocalizedString("%d movies","Status label value for when there is more than one movie");
break;
case "show":
_2f=CPLocalizedString("%d TV shows","Status label value for when there is more than one TV show");
break;
case "artist":
_2f=CPLocalizedString("%d artists","Status label value for when there is more than one musical artist");
break;
}
break;
}
return objj_msgSend(CPString,"stringWithFormat:",_2f,_30);
}
}),new objj_method(sel_getUid("updateStatus"),function(_31,_32){
with(_31){
if(updateStatus){
return updateStatus;
}
var _33=objj_msgSend(_librarySection,"updateQueueSize");
if(_33){
if(_33==1){
return CPLocalizedString("Refreshing info for one item","Status label for refreshing sections with one remaining item");
}else{
return objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Refreshing info for %d items","Status label for refreshing sections"),_33);
}
}
var _34=objj_msgSend(_librarySection,"updatedAt");
if(!_34){
return nil;
}
return objj_msgSend(CPString,"stringWithFormat:",CPLocalizedString("Last refreshed %@ at %@","Status label for media items"),objj_msgSend(_34,"relativeDate"),objj_msgSend(_34,"shortLocalTime"));
}
}),new objj_method(sel_getUid("setUpdateStatus:"),function(_35,_36,_37){
with(_35){
updateStatus=_37;
}
}),new objj_method(sel_getUid("showUpdateStatusForItem:"),function(_38,_39,_3a){
with(_38){
if(!_1){
_1=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",CPLocalizedString("Scanning '%@'","Metadata item status message when it is newly scanned/created"),MMMetadataItemStateCreated,CPLocalizedString("Media analysis on '%@'","Metadata item status message when it is being read"),MMMetadataItemStateProgress,CPLocalizedString("Matching '%@'","Metadata item status message when it is being matched to a canonical item"),MMMetadataItemStateMatching,CPLocalizedString("Requesting metadata for '%@'","Metadata item status message when its info is downloading"),MMMetadataItemStateDownloadingMetadata,CPLocalizedString("Loading metadata for '%@'","Metadata item status message when its data is importing"),MMMetadataItemStateLoadingMetadata);
}
var _3b=objj_msgSend(_1,"objectForKey:",objj_msgSend(_3a,"state"));
objj_msgSend(_38,"setUpdateStatus:",_3b&&objj_msgSend(CPString,"stringWithFormat:",_3b,objj_msgSend(_3a,"title")));
}
}),new objj_method(sel_getUid("location"),function(_3c,_3d){
with(_3c){
if(!_librarySection){
return "";
}
return objj_msgSend(CPString,"stringWithFormat:","/sections/%@",objj_msgSend(_librarySection,"id"));
}
}),new objj_method(sel_getUid("content"),function(_3e,_3f){
with(_3e){
return objj_msgSend(_collectionView,"content");
}
}),new objj_method(sel_getUid("setContent:"),function(_40,_41,_42){
with(_40){
objj_msgSend(_collectionView,"setContent:",_42);
_readyState=MMMetadataItemCollectionViewControllerStateLoaded;
}
}),new objj_method(sel_getUid("loadView"),function(_43,_44){
with(_43){
var _45=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,800,800)),_46=30,_47=objj_msgSend(objj_msgSend(MMToolbar,"alloc"),"initWithFrame:style:",CGRectMake(0,CGRectGetHeight(objj_msgSend(_45,"frame"))-_46,CGRectGetWidth(objj_msgSend(_45,"frame")),_46),MMToolbarHUDStyle),_48=objj_msgSend(objj_msgSend(MMScrollView,"alloc"),"initWithFrame:",CGRectMake(0,0,CGRectGetWidth(objj_msgSend(_45,"frame")),CGRectGetMinY(objj_msgSend(_47,"frame")))),_49=objj_msgSend(objj_msgSend(MMMetadataItemCollectionView,"alloc"),"initWithFrame:",objj_msgSend(_48,"bounds")),_4a=objj_msgSend(objj_msgSend(CPCollectionViewItem,"alloc"),"init"),_4b=objj_msgSend(objj_msgSend(MMMetadataItemCell,"alloc"),"initWithFrame:",CGRectMake(0,0,175,220));
objj_msgSend(_47,"setAutoresizingMask:",CPViewWidthSizable|CPViewMinYMargin);
var _4c=objj_msgSend(CPTextField,"labelWithTitle:","");
objj_msgSend(_4c,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_4c,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_4c,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",12));
objj_msgSend(_4c,"sizeToFit");
objj_msgSend(_4c,"setFrame:",CGRectMake(10,(CGRectGetHeight(objj_msgSend(_47,"frame"))-CGRectGetHeight(objj_msgSend(_4c,"frame")))/2,CGRectGetWidth(objj_msgSend(_47,"frame")),CGRectGetHeight(objj_msgSend(_4c,"frame"))));
objj_msgSend(_4c,"bind:toObject:withKeyPath:options:",CPValueBinding,_43,"updateStatus",nil);
objj_msgSend(_47,"addSubview:",_4c);
var _4d=objj_msgSend(HUDButton,"buttonWithTitle:",CPLocalizedString("Edit Section","Edit Section"));
objj_msgSend(_4d,"setFrameOrigin:",CGPointMake(CGRectGetWidth(objj_msgSend(_47,"frame"))-5-CGRectGetWidth(objj_msgSend(_4d,"frame")),(CGRectGetHeight(objj_msgSend(_47,"frame"))-CGRectGetHeight(objj_msgSend(_4d,"frame")))/2));
objj_msgSend(_4d,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin|CPViewMinXMargin);
objj_msgSend(_4d,"setTarget:",_43);
objj_msgSend(_4d,"setAction:",sel_getUid("editSection:"));
objj_msgSend(_47,"addSubview:",_4d);
var _4e=objj_msgSend(HUDButton,"buttonWithTitle:",CPLocalizedString("Customize Section","Customize Section"));
objj_msgSend(_4e,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_4d,"frame"))-5-CGRectGetWidth(objj_msgSend(_4e,"frame")),CGRectGetMinY(objj_msgSend(_4d,"frame"))));
objj_msgSend(_4e,"setAutoresizingMask:",objj_msgSend(_4d,"autoresizingMask"));
objj_msgSend(_4e,"setEnabled:",NO);
objj_msgSend(_47,"addSubview:",_4e);
objj_msgSend(_48,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_48,"setAutohidesScrollers:",YES);
objj_msgSend(_48,"setDocumentView:",_49);
objj_msgSend(_4a,"setView:",_4b);
objj_msgSend(_49,"setItemPrototype:",_4a);
objj_msgSend(_49,"setMinItemSize:",objj_msgSend(_4b,"frame").size);
objj_msgSend(_49,"setMaxItemSize:",objj_msgSend(_4b,"frame").size);
objj_msgSend(_49,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_49,"setDelegate:",_43);
objj_msgSend(_45,"addSubview:",_48);
objj_msgSend(_45,"addSubview:",_47);
_collectionView=_49;
objj_msgSend(_43,"setView:",_45);
}
}),new objj_method(sel_getUid("collectionView:didDoubleClickOnItemAtIndex:"),function(_4f,_50,_51,_52){
with(_4f){
var _53=objj_msgSend(objj_msgSend(_4f,"content"),"objectAtIndex:",_52),_54=objj_msgSend(CPString,"stringWithFormat:","/sections/%@/media/%@",objj_msgSend(_librarySection,"id"),objj_msgSend(_53,"id"));
objj_msgSend(objj_msgSend(LPLocationController,"sharedLocationController"),"setLocation:",_54);
}
}),new objj_method(sel_getUid("editSection:"),function(_55,_56,_57){
with(_55){
var _58=objj_msgSend(objj_msgSend(MMSectionSettingsSheet,"alloc"),"initWithDataSource:",objj_msgSend(MMLibrarySectionsDataSource,"sharedDataSource"));
objj_msgSend(_58,"beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:",objj_msgSend(objj_msgSend(_55,"view"),"window"),_55,nil,_librarySection);
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("keyPathsForValuesAffectingStatus"),function(_59,_5a){
with(_59){
return objj_msgSend(CPSet,"setWithObjects:","content","librarySection");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingTitle"),function(_5b,_5c){
with(_5b){
return objj_msgSend(CPSet,"setWithObject:","librarySection");
}
}),new objj_method(sel_getUid("keyPathsForValuesAffectingUpdateStatus"),function(_5d,_5e){
with(_5d){
return objj_msgSend(CPSet,"setWithObjects:","librarySection","librarySection.updatedAt","librarySection.updateQueueSize");
}
})]);
p;36;Views/MMMetadataItemCollectionView.jt;3309;@STATIC;1.0;i;18;MMCollectionView.ji;28;../Models/MMLibrarySection.jt;3234;
objj_executeFile("MMCollectionView.j",YES);
objj_executeFile("../Models/MMLibrarySection.j",YES);
var _1=objj_allocateClassPair(MMCollectionView,"MMMetadataItemCollectionView"),_2=_1.isa;
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
return objj_msgSendSuper({receiver:_1f,super_class:objj_getClass("MMMetadataItemCollectionView").super_class},"performKeyEquivalent:",_21);
}
})]);
p;26;Views/MMMetadataItemCell.jt;11220;@STATIC;1.0;i;40;../Controllers/MMMatchPickerController.ji;34;../DataSources/MMAgentDataSource.ji;41;../DataSources/MMMediaMatchesDataSource.ji;41;../DataSources/MMMetadataItemDataSource.ji;26;../Models/MMMetadataItem.ji;26;MMCollectionViewItemCell.ji;13;MMImageView.jt;10944;
objj_executeFile("../Controllers/MMMatchPickerController.j",YES);
objj_executeFile("../DataSources/MMAgentDataSource.j",YES);
objj_executeFile("../DataSources/MMMediaMatchesDataSource.j",YES);
objj_executeFile("../DataSources/MMMetadataItemDataSource.j",YES);
objj_executeFile("../Models/MMMetadataItem.j",YES);
objj_executeFile("MMCollectionViewItemCell.j",YES);
objj_executeFile("MMImageView.j",YES);
var _1=objj_allocateClassPair(MMCollectionViewItemCell,"MMMetadataItemCell"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_matchingImage"),new objj_ivar("_matchingImageView"),new objj_ivar("agents"),new objj_ivar("contextMenu"),new objj_ivar("contextMenuEvent"),new objj_ivar("matchUsingMenuItem"),new objj_ivar("unmatchMenuItem"),new objj_ivar("agentDataSource"),new objj_ivar("metadataDataSource"),new objj_ivar("mediaDataSource"),new objj_ivar("matchesDataSource"),new objj_ivar("_editor")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("refreshView"),function(_3,_4){
with(_3){
objj_msgSend(_matchingImageView,"setHidden:",objj_msgSend(objj_msgSend(_3,"representedObject"),"state")!=MMMetadataItemStateMatching);
}
}),new objj_method(sel_getUid("loadView"),function(_5,_6){
with(_5){
objj_msgSendSuper({receiver:_5,super_class:objj_getClass("MMMetadataItemCell").super_class},"loadView");
metadataDataSource=objj_msgSend(objj_msgSend(MMMetadataItemDataSource,"alloc"),"initWithDelegate:",_5);
agentDataSource=objj_msgSend(objj_msgSend(MMAgentDataSource,"alloc"),"initWithDelegate:",_5);
mediaDataSource=objj_msgSend(objj_msgSend(MMLibraryMediaDataSource,"alloc"),"initWithDelegate:",_5);
matchesDataSource=objj_msgSend(objj_msgSend(MMMediaMatchesDataSource,"alloc"),"initWithDelegate:",_5);
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
objj_msgSend(_matchingImageView,"setHidden:",objj_msgSend(objj_msgSend(_5,"representedObject"),"state")!=MMMetadataItemStateMatching);
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
if(!contextMenu){
contextMenu=objj_msgSend(objj_msgSend(CPMenu,"alloc"),"initWithTitle:","");
objj_msgSend(objj_msgSend(contextMenu,"addItemWithTitle:action:keyEquivalent:",CPLocalizedString("Refresh Metadata","Context menu item for metadata items"),sel_getUid("refreshMetadata:"),nil),"setTarget:",_12);
objj_msgSend(objj_msgSend(contextMenu,"addItemWithTitle:action:keyEquivalent:",CPLocalizedString("Edit Metadata...","Context menu item for metadata items"),sel_getUid("editMetadata:"),"i"),"setTarget:",_12);
objj_msgSend(contextMenu,"addItem:",objj_msgSend(CPMenuItem,"separatorItem"));
objj_msgSend(objj_msgSend(contextMenu,"addItemWithTitle:action:keyEquivalent:",CPLocalizedString("Fix Incorrect Match...","Context menu item for metadata items"),sel_getUid("fixIncorrectMatch:"),"f"),"setTarget:",_12);
matchUsingMenuItem=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",CPLocalizedString("Match Using","Context menu item for metadata items"),nil,nil);
objj_msgSend(contextMenu,"addItem:",matchUsingMenuItem);
unmatchMenuItem=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",CPLocalizedString("Unmatch","Context menu item for metadata items"),sel_getUid("unmatch:"),nil);
objj_msgSend(unmatchMenuItem,"setTarget:",_12);
objj_msgSend(contextMenu,"addItem:",unmatchMenuItem);
contextMenuEvent=_14;
objj_msgSend(metadataDataSource,"refreshRecord:",objj_msgSend(_12,"representedObject"));
}
}
}),new objj_method(sel_getUid("editMetadata:"),function(_15,_16,_17){
with(_15){
_editor=objj_msgSend(objj_msgSend(MMMetadataEditorController,"alloc"),"initWithDelegate:",_15);
objj_msgSend(_editor,"presentMetadataItem:inWindow:",objj_msgSend(_15,"representedObject"),objj_msgSend(_15,"window"));
}
}),new objj_method(sel_getUid("metadataEditor:didCommitMetadataItem:"),function(_18,_19,_1a,_1b){
with(_18){
objj_msgSend(mediaDataSource,"updateRecord:",_1b);
}
}),new objj_method(sel_getUid("dataSource:didUpdateRecord:contextInfo:"),function(_1c,_1d,_1e,_1f,_20){
with(_1c){
objj_msgSend(_editor,"dismissSheet");
_editor=nil;
}
}),new objj_method(sel_getUid("dataSource:didFailToUpdateRecord:withError:contextInfo:"),function(_21,_22,_23,_24,_25,_26){
with(_21){
objj_msgSend(AppController,"notifyUserOfError:withTitle:",_25,"Unable to update metadata");
}
}),new objj_method(sel_getUid("dataSource:didReceiveRecords:contextInfo:"),function(_27,_28,_29,_2a,_2b){
with(_27){
if(_29===metadataDataSource){
objj_msgSend(agentDataSource,"refreshRecordsWithContextInfo:",objj_msgSend(objj_msgSend(_27,"representedObject"),"type"));
}else{
if(_29===agentDataSource){
var _2c=objj_msgSend(objj_msgSend(CPMenu,"alloc"),"init");
agents=objj_msgSend(CPMutableArray,"array");
var _2d=objj_msgSend(objj_msgSend(_27,"representedObject"),"guid");
for(var i=0,_2e=objj_msgSend(_2a,"count");i<_2e;i++){
var _2f=objj_msgSend(_2a,"objectAtIndex:",i);
if(!objj_msgSend(_2d,"hasPrefix:",objj_msgSend(_2f,"identifier"))&&objj_msgSend(_2f,"identifier")!="com.plexapp.agents.none"){
objj_msgSend(agents,"addObject:",_2f);
var _30=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",objj_msgSend(_2f,"name"),sel_getUid("matchUsing:"),nil);
objj_msgSend(_30,"setTarget:",_27);
objj_msgSend(_2c,"addItem:",_30);
}
}
if(objj_msgSend(agents,"count")>0){
objj_msgSend(matchUsingMenuItem,"setEnabled:",YES);
objj_msgSend(matchUsingMenuItem,"setSubmenu:",_2c);
}else{
objj_msgSend(matchUsingMenuItem,"setSubmenu:",nil);
objj_msgSend(matchUsingMenuItem,"setEnabled:",NO);
}
objj_msgSend(unmatchMenuItem,"setEnabled:",(objj_msgSend(_2d,"hasPrefix:","com.plexapp.agents.none")==NO));
objj_msgSend(CPMenu,"popUpContextMenu:withEvent:forView:",contextMenu,contextMenuEvent,_27);
contextMenu=nil,contextMenuEvent=nil,unmatchMenuItem=nil;
}else{
if(_29===matchesDataSource){
var _31=nil,_32=0;
for(var i=0,_2e=objj_msgSend(_2a,"count");i<_2e;i++){
var _33=objj_msgSend(_2a,"objectAtIndex:",0);
if(objj_msgSend(_33,"score")>_32){
_31=_33;
_32=objj_msgSend(_33,"score");
}
}
if(_32>80){
objj_msgSend(matchesDataSource,"selectMatch:forMetadataItem:",_31,objj_msgSend(_27,"representedObject"));
}else{
var _34=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(_34,"setTitle:",CPLocalizedString("No Match Found","'Match Using' error title"));
objj_msgSend(_34,"setMessageText:",CPLocalizedString("There was no acceptable match using the specified agent.","'Match Using' error message"));
objj_msgSend(_34,"setAlertStyle:",CPWarningAlertStyle);
objj_msgSend(_34,"addButtonWithTitle:",CPLocalizedString("OK","OK"));
objj_msgSend(_34,"runModal");
}
}
}
}
}
}),new objj_method(sel_getUid("fixIncorrectMatch:"),function(_35,_36,_37){
with(_35){
var _38=objj_msgSend(objj_msgSend(MMMatchPickerController,"alloc"),"initWithDelegate:",_35);
objj_msgSend(_38,"setMetadataItem:",objj_msgSend(_35,"representedObject"));
objj_msgSend(_38,"presentSheetInWindow:",objj_msgSend(_35,"window"));
}
}),new objj_method(sel_getUid("matchPicker:didSelectSearchResult:"),function(_39,_3a,_3b,_3c){
with(_39){
CPLog.info("[%@ -picker:didSelectSearchResult:] user chose %@ as the correct match for %@",objj_msgSend(_39,"class"),_3c,objj_msgSend(_39,"representedObject"));
objj_msgSend(_3b,"dismissSheet");
objj_msgSend(objj_msgSend(MMMediaMatchesDataSource,"sharedDataSource"),"selectMatch:forMetadataItem:",_3c,objj_msgSend(_39,"representedObject"));
}
}),new objj_method(sel_getUid("matchPickerDidCancel:"),function(_3d,_3e,_3f){
with(_3d){
objj_msgSend(_3f,"dismissSheet");
}
}),new objj_method(sel_getUid("refreshMetadata:"),function(_40,_41,_42){
with(_40){
objj_msgSend(objj_msgSend(MMMediaMatchesDataSource,"sharedDataSource"),"refreshMatchForMetadataItem:",objj_msgSend(_40,"representedObject"));
}
}),new objj_method(sel_getUid("unmatch:"),function(_43,_44,_45){
with(_43){
objj_msgSend(objj_msgSend(MMMediaMatchesDataSource,"sharedDataSource"),"unmatchItem:",objj_msgSend(_43,"representedObject"));
}
}),new objj_method(sel_getUid("matchUsing:"),function(_46,_47,_48){
with(_46){
var _49=objj_msgSend(objj_msgSend(objj_msgSend(matchUsingMenuItem,"submenu"),"itemArray"),"indexOfObject:",_48),_4a=objj_msgSend(agents,"objectAtIndex:",_49),_4b=objj_msgSend(_46,"representedObject");
objj_msgSend(matchesDataSource,"refreshRecordsForMetadataItem:title:agent:language:year:",_4b,objj_msgSend(_4b,"title"),_4a,objj_msgSend(_4b,"language"),objj_msgSend(_4b,"year"));
}
})]);
p;30;Views/MMSectionSettingsSheet.jt;31709;@STATIC;1.0;I;27;AppKit/CPSegmentedControl.jI;15;AppKit/CPView.ji;16;MMFileListView.ji;34;../DataSources/MMAgentDataSource.ji;34;../Views/MMDirectoryBrowserSheet.jt;31538;
objj_executeFile("AppKit/CPSegmentedControl.j",NO);
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
objj_msgSend(_39,"_agentWasClicked");
CPLog.trace("[%@ -_setSelectedAgent:] END",objj_msgSend(_39,"class"));
}
}),new objj_method(sel_getUid("_selectDefaultAgent"),function(_3e,_3f){
with(_3e){
var _40=objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"bundleLocale");
var _41=nil;
var _42=nil;
var _43=nil;
for(var i=0,_44=objj_msgSend(_agents,"count");i<_44;i++){
var _45=objj_msgSend(_agents,"objectAtIndex:",i),_46=objj_msgSend(_45,"languages");
for(var j=0,_47=objj_msgSend(_46,"count");j<_47;j++){
var _48=objj_msgSend(_46,"objectAtIndex:",j);
if(objj_msgSend(objj_msgSend(_48,"languageCode"),"caseInsensitiveCompare:",_40)==CPOrderedSame){
_42=_45;
_43=_48;
break;
}
}
}
if(objj_msgSend(_40,"isEqualToString:","en")==NO&&_42){
objj_msgSend(_3e,"_setSelectedAgent:",_42);
objj_msgSend(_3e,"_setSelectedLanguage:",_43);
}else{
if(objj_msgSend(_3e,"_selectedSectionType")==MMLibrarySectionTypeMovie){
objj_msgSend(_3e,"_setSelectedAgent:",MMLibrarySectionDefaultMoviesAgent);
}else{
if(objj_msgSend(_3e,"_selectedSectionType")==MMLibrarySectionTypeTV){
objj_msgSend(_3e,"_setSelectedAgent:",MMLibrarySectionDefaultTVAgent);
}else{
if(objj_msgSend(_3e,"_selectedSectionType")==MMLibrarySectionTypeArtist){
objj_msgSend(_3e,"_setSelectedAgent:",MMLibrarySectionDefaultArtistAgent);
}else{
objj_msgSend(_3e,"_setSelectedAgent:",objj_msgSend(_agents,"objectAtIndex:",0));
}
}
}
}
}
}),new objj_method(sel_getUid("_selectedLanguage"),function(_49,_4a){
with(_49){
var _4b=objj_msgSend(objj_msgSend(_49,"_selectedAgent"),"languages"),_4c=objj_msgSend(_languagePopUp,"indexOfSelectedItem");
if(_4c==CPNotFound){
return nil;
}
if(_4c>=0&&_4c<objj_msgSend(_4b,"count")){
CPLog.warn("[%@ -_selectedLanguage] index of selected language (%D) out of bounds for languages %@",objj_msgSend(_49,"class"),_4c,_4b);
return nil;
}
return objj_msgSend(_4b,"objectAtIndex:",_4c);
}
}),new objj_method(sel_getUid("_setSelectedLanguage:"),function(_4d,_4e,_4f){
with(_4d){
CPLog.trace("[%@ -_setSelectedLanguage:] START",objj_msgSend(_4d,"class"));
var _50=objj_msgSend(objj_msgSend(_4d,"_selectedAgent"),"languages"),_51=objj_msgSend(_50,"indexOfObject:",_4f);
if(_51==CPNotFound){
CPLog.warn("[%@ -_setSelectedLanguage:] unable to find language %@ in %@",objj_msgSend(_4d,"class"),_4f,_50);
}else{
CPLog.debug("[%@ -_setSelectedLanguage:] selecting language %@ at index %d",objj_msgSend(_4d,"class"),_4f,_51);
objj_msgSend(_languagePopUp,"selectItemAtIndex:",_51);
}
CPLog.trace("[%@ -_setSelectedLanguage:] END",objj_msgSend(_4d,"class"));
}
}),new objj_method(sel_getUid("_sectionLocations"),function(_52,_53){
with(_52){
return objj_msgSend(_sourceFolderView,"files");
}
}),new objj_method(sel_getUid("_setSectionLocations:"),function(_54,_55,_56){
with(_54){
objj_msgSend(_sourceFolderView,"setFiles:",_56);
}
}),new objj_method(sel_getUid("_sectionTypeWasClicked"),function(_57,_58){
with(_57){
CPLog.trace("[%@ -_sectionTypeWasClicked] START",objj_msgSend(_57,"class"));
if(objj_msgSend(_sectionPopUp,"indexOfSelectedItem")==_selectedSectionTypeIndex){
CPLog.debug("[%@ -_sectionTypeWasClicked] ignoring, section type unchanged (index=%d)",objj_msgSend(_57,"class"),_selectedSectionTypeIndex);
return;
}
_selectedSectionTypeIndex=objj_msgSend(_sectionPopUp,"indexOfSelectedItem");
objj_msgSend(_mediaScannerPopUp,"removeAllItems");
objj_msgSend(_agentPopUp,"removeAllItems");
var _59=objj_msgSend(_57,"_selectedSectionType"),_5a=_2[_59];
CPLog.debug("[%@ -_sectionTypeWasClicked] activating name placeholder text: %@",objj_msgSend(_57,"class"),_5a.namePlaceholder);
objj_msgSend(_sectionNameField,"setPlaceholderString:",_5a.namePlaceholder);
CPLog.debug("[%@ -_sectionTypeWasClicked] activating scanner options: %@",objj_msgSend(_57,"class"),_5a.scanners);
objj_msgSend(_mediaScannerPopUp,"addItemsWithTitles:",_5a.scanners);
objj_msgSend(_agentDataSource,"refreshRecordsWithContextInfo:",_59);
CPLog.trace("[%@ -_sectionTypeWasClicked] END",objj_msgSend(_57,"class"));
}
}),new objj_method(sel_getUid("_agentWasClicked"),function(_5b,_5c){
with(_5b){
CPLog.trace("[%@ -_agentWasClicked] START",objj_msgSend(_5b,"class"));
_selectedAgentIndex=objj_msgSend(_agentPopUp,"indexOfSelectedItem");
objj_msgSend(_languagePopUp,"removeAllItems");
var _5d=objj_msgSend(_agents,"objectAtIndex:",_selectedAgentIndex),_5e=objj_msgSend(_5d,"languages");
CPLog.debug("[%@ -_agentWasClicked] activating language options: %@",objj_msgSend(_5b,"class"),_5e);
for(var i=0;i<objj_msgSend(_5e,"count");i++){
objj_msgSend(_languagePopUp,"addItemWithTitle:",objj_msgSend(objj_msgSend(_5e,"objectAtIndex:",i),"name"));
}
if(objj_msgSend(_librarySection,"language")){
objj_msgSend(_5b,"_setSelectedLanguage:",objj_msgSend(_librarySection,"language"));
}else{
if(objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"bundleLocale")){
objj_msgSend(_5b,"_setSelectedLanguage:",objj_msgSend(objj_msgSend(LanguageConfig,"alloc"),"initWithCode:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"bundleLocale")));
}
}
CPLog.trace("[%@ -_agentWasClicked] END",objj_msgSend(_5b,"class"));
}
}),new objj_method(sel_getUid("dataSource:didReceiveRecords:contextInfo:"),function(_5f,_60,_61,_62,_63){
with(_5f){
if(!objj_msgSend(_61,"isEqual:",_agentDataSource)){
return;
}
if(!objj_msgSend(_63,"isEqual:",objj_msgSend(_5f,"_selectedSectionType"))){
CPLog.debug("[%@ -dataSource:didReceiveRecords:contextInfo:] ignoring agent response for deselected section type %@ (selected is %@)",objj_msgSend(_5f,"class"),_63,objj_msgSend(_5f,"_selectedSectionType"));
return;
}
_agents=_62;
objj_msgSend(_agentPopUp,"removeAllItems");
CPLog.debug("[%@ -dataSource:didReceiveRecords:contextInfo:] activating agent options: %@",objj_msgSend(_5f,"class"),_agents);
for(var i=0;i<objj_msgSend(_agents,"count");i++){
objj_msgSend(_agentPopUp,"addItemWithTitle:",objj_msgSend(objj_msgSend(_agents,"objectAtIndex:",i),"name"));
}
if(objj_msgSend(_librarySection,"agent")){
objj_msgSend(_5f,"_setSelectedAgent:",objj_msgSend(_librarySection,"agent"));
}else{
objj_msgSend(_5f,"_selectDefaultAgent");
}
objj_msgSend(_5f,"_agentWasClicked");
}
}),new objj_method(sel_getUid("dataSourceDidCreateRecord:"),function(_64,_65,_66){
with(_64){
objj_msgSend(_64,"_dismissPanelWithReturnCode:",MMSectionSettingsSheetReturnSuccess);
}
}),new objj_method(sel_getUid("dataSourceDidFailToCreateRecord:"),function(_67,_68,_69){
with(_67){
var _6a=objj_msgSend(objj_msgSend(_69,"userInfo"),"objectForKey:","error"),_6b=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(_6b,"setAlertStyle:",CPCriticalAlertStyle);
objj_msgSend(_6b,"setTitle:",CPLocalizedString("Unable to create library section","Unable to create library section"));
objj_msgSend(_6b,"setMessageText:",objj_msgSend(CPString,"stringWithFormat:",_6a));
objj_msgSend(_6b,"runModal");
}
}),new objj_method(sel_getUid("dataSourceDidUpdateRecord:"),function(_6c,_6d,_6e){
with(_6c){
objj_msgSend(_6c,"_dismissPanelWithReturnCode:",MMSectionSettingsSheetReturnSuccess);
}
}),new objj_method(sel_getUid("dataSourceDidFailToUpdateRecord:"),function(_6f,_70,_71){
with(_6f){
var _72=objj_msgSend(objj_msgSend(_71,"userInfo"),"objectForKey:","error"),_73=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(_73,"setAlertStyle:",CPCriticalAlertStyle);
objj_msgSend(_73,"setTitle:",CPLocalizedString("Unable to update library section","Unable to update library section"));
objj_msgSend(_73,"setMessageText:",objj_msgSend(CPString,"stringWithFormat:",_72));
objj_msgSend(_73,"runModal");
}
}),new objj_method(sel_getUid("runModal"),function(_74,_75){
with(_74){
objj_msgSend(_74,"layoutPanel");
objj_msgSend(CPApp,"runModalForWindow:",_settingsPanel);
}
}),new objj_method(sel_getUid("beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:"),function(_76,_77,_78,_79,_7a,_7b){
with(_76){
objj_msgSend(_76,"layoutPanel");
_didEndSelector=_7a;
_modalDelegate=_79;
_librarySection=_7b;
if(_librarySection){
objj_msgSend(_sectionNameField,"setStringValue:",objj_msgSend(_librarySection,"title"));
if(objj_msgSend(_librarySection,"type")){
objj_msgSend(_76,"_setSelectedSectionType:",objj_msgSend(_librarySection,"type"));
objj_msgSend(_76,"_sectionTypeWasClicked");
}
if(objj_msgSend(_librarySection,"scanner")){
objj_msgSend(_76,"_setSelectedScanner:",objj_msgSend(_librarySection,"scanner"));
}
if(objj_msgSend(_librarySection,"agent")){
objj_msgSend(_76,"_setSelectedAgent:",objj_msgSend(_librarySection,"agent"));
}
if(objj_msgSend(_librarySection,"language")){
objj_msgSend(_76,"_setSelectedLanguage:",objj_msgSend(_librarySection,"language"));
}
if(objj_msgSend(objj_msgSend(_librarySection,"locations"),"count")){
objj_msgSend(_76,"_setSectionLocations:",objj_msgSend(_librarySection,"locations"));
}
objj_msgSend(_76,"_setConfirmButtonTitle:",objj_msgSend(_librarySection,"isNewRecord")?CPLocalizedString("Add Section","Add section confirm button text"):CPLocalizedString("Update Section","Update section confirm button text"));
}
objj_msgSend(CPApp,"beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:",_settingsPanel,_78,_76,sel_getUid("_editDidEnd:returnCode:contextInfo:"),_7b);
}
}),new objj_method(sel_getUid("beginSheetModalForWindow:"),function(_7c,_7d,_7e){
with(_7c){
objj_msgSend(_7c,"layoutPanel");
_didEndSelector=nil;
_modalDelegate=nil;
_librarySection=nil;
objj_msgSend(CPApp,"beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:",_settingsPanel,_7e,_7c,sel_getUid("_editDidEnd:returnCode:contextInfo:"),nil);
}
}),new objj_method(sel_getUid("_editDidEnd:returnCode:contextInfo:"),function(_7f,_80,_81,_82,_83){
with(_7f){
if(_didEndSelector){
objj_msgSend(_modalDelegate,_didEndSelector,_7f,_82,_83);
}
_didEndSelector=nil;
_modalDelegate=nil;
_librarySection=nil;
}
}),new objj_method(sel_getUid("_confirmButtonClicked:"),function(_84,_85,_86){
with(_84){
var _87=objj_msgSend(_agents,"objectAtIndex:",objj_msgSend(_agentPopUp,"indexOfSelectedItem")),_88=objj_msgSend(objj_msgSend(_87,"languages"),"objectAtIndex:",objj_msgSend(_languagePopUp,"indexOfSelectedItem"));
objj_msgSend(_librarySection,"setTitle:",objj_msgSend(_sectionNameField,"stringValue"));
objj_msgSend(_librarySection,"setScanner:",objj_msgSend(_84,"_selectedScanner"));
objj_msgSend(_librarySection,"setAgent:",_87);
objj_msgSend(_librarySection,"setType:",objj_msgSend(_84,"_selectedSectionType"));
objj_msgSend(_librarySection,"setLocations:",objj_msgSend(_84,"_sectionLocations"));
objj_msgSend(_librarySection,"setLanguage:",_88);
if(objj_msgSend(_librarySection,"isNewRecord")){
objj_msgSend(_librarySectionsDataSource,"createRecord:",_librarySection);
}else{
objj_msgSend(_librarySectionsDataSource,"updateRecord:",_librarySection);
}
}
}),new objj_method(sel_getUid("_cancelButtonClicked:"),function(_89,_8a,_8b){
with(_89){
objj_msgSend(_89,"_dismissPanelWithReturnCode:",objj_msgSend(_8b,"tag"));
}
}),new objj_method(sel_getUid("_dismissPanelWithReturnCode:"),function(_8c,_8d,_8e){
with(_8c){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_8c,MMDataSourceDidCreateRecord,_librarySectionsDataSource);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_8c,MMDataSourceDidFailToCreateRecord,_librarySectionsDataSource);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_8c,MMDataSourceDidUpdateRecord,_librarySectionsDataSource);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_8c,MMDataSourceDidFailToUpdateRecord,_librarySectionsDataSource);
if(objj_msgSend(_settingsPanel,"isSheet")){
objj_msgSend(CPApp,"endSheet:returnCode:",_settingsPanel,_8e);
}else{
objj_msgSend(CPApp,"abortModal");
objj_msgSend(_settingsPanel,"close");
objj_msgSend(_8c,"_editDidEnd:returnCode:contextInfo:",nil,_8e,_librarySection);
}
}
}),new objj_method(sel_getUid("addOrRemoveDirectory:"),function(_8f,_90,_91){
with(_8f){
switch(objj_msgSend(_91,"selectedSegment")){
case _3:
if(!_directoryBrowserSheet){
_directoryBrowserSheet=objj_msgSend(objj_msgSend(MMDirectoryBrowserSheet,"alloc"),"initWithContentRect:styleMask:",CGRectMake(0,0,400,300),CPDocModalWindowMask);
}
objj_msgSend(_directoryBrowserSheet,"setTitle:",CPLocalizedString("Select a directory for this section:","Directory-browser title when adding/editing sections"));
objj_msgSend(_directoryBrowserSheet,"setDelegate:",_8f);
objj_msgSend(CPApp,"beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:",_directoryBrowserSheet,_settingsPanel,nil,nil,nil);
break;
case _4:
objj_msgSend(_sourceFolderView,"removeFilesAtIndexes:",objj_msgSend(_sourceFolderView,"selectionIndexes"));
break;
}
}
}),new objj_method(sel_getUid("directoryBrowserSheet:didChooseDirectory:"),function(_92,_93,_94,_95){
with(_92){
objj_msgSend(_sourceFolderView,"addFileWithPath:",objj_msgSend(_95,"path"));
objj_msgSend(CPApp,"endSheet:returnCode:",_94,0);
}
}),new objj_method(sel_getUid("directoryBrowserSheetDidCancel:"),function(_96,_97,_98){
with(_96){
objj_msgSend(CPApp,"endSheet:returnCode:",_98,1);
}
}),new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"),function(_99,_9a,_9b,_9c,_9d,_9e){
with(_99){
if(_9c==_sourceFolderView&&_9b=="selectionIndexes"){
objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",0,_99,sel_getUid("_syncRemoveButtonEnabled"),nil,NO);
}
}
}),new objj_method(sel_getUid("_syncRemoveButtonEnabled"),function(_9f,_a0){
with(_9f){
objj_msgSend(_plusMinusSegments,"setEnabled:forSegment:",(objj_msgSend(objj_msgSend(_sourceFolderView,"selectionIndexes"),"count")!=0),_4);
}
})]);
class_addMethods(_7,[new objj_method(sel_getUid("initialize"),function(_a1,_a2){
with(_a1){
_2={movie:{namePlaceholder:CPLocalizedString("My Movies","Movie section name placeholder"),scanners:objj_msgSend(CPArray,"arrayWithObjects:","Plex Movie Scanner")},show:{namePlaceholder:CPLocalizedString("My TV Shows","TV Shows section name placeholder"),scanners:objj_msgSend(CPArray,"arrayWithObjects:","Plex Series Scanner")},artist:{namePlaceholder:CPLocalizedString("My Music","Music section name placeholder"),scanners:objj_msgSend(CPArray,"arrayWithObjects:","Plex Music Scanner")}};
}
}),new objj_method(sel_getUid("_menuItemWithTitle:tag:"),function(_a3,_a4,_a5,tag){
with(_a3){
var _a6=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",_a5,nil,nil);
objj_msgSend(_a6,"setTag:",tag);
return _a6;
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
p;31;Views/MMDirectoryBrowserSheet.jt;4956;@STATIC;1.0;I;16;AppKit/CPPanel.ji;24;MMDirectoryBrowserView.jt;4887;
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
var _11=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_f),_12=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Select Folder","Select Folder")),_13=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Cancel","Cancel")),_14=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Manual Entry","Button text for the directory browser to allow the user to type in a path manually"));
_titleLabel=objj_msgSend(CPTextField,"labelWithTitle:","");
objj_msgSend(_titleLabel,"setFrame:",CGRectMake(15,10,CGRectGetWidth(objj_msgSend(_11,"frame"))-30,CGRectGetHeight(objj_msgSend(_titleLabel,"frame"))));
objj_msgSend(_12,"setFrameOrigin:",CGPointMake(CGRectGetWidth(objj_msgSend(_11,"frame"))-15-CGRectGetWidth(objj_msgSend(_12,"frame")),CGRectGetHeight(objj_msgSend(_11,"frame"))-15-CGRectGetHeight(objj_msgSend(_12,"frame"))));
objj_msgSend(_13,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(_12,"frame"))-4-CGRectGetWidth(objj_msgSend(_13,"frame")),CGRectGetMinY(objj_msgSend(_12,"frame"))));
objj_msgSend(_14,"setFrameOrigin:",CGPointMake(15,CGRectGetMinY(objj_msgSend(_12,"frame"))));
objj_msgSend(_12,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin);
objj_msgSend(_13,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin);
objj_msgSend(_14,"setAutoresizingMask:",CPViewMaxXMargin|CPViewMinYMargin);
objj_msgSend(_12,"setKeyEquivalent:",CPCarriageReturnCharacter);
objj_msgSend(_13,"setKeyEquivalent:",CPEscapeFunctionKey);
objj_msgSend(_12,"setTarget:",_d);
objj_msgSend(_12,"setAction:",sel_getUid("choose:"));
objj_msgSend(_13,"setTarget:",_d);
objj_msgSend(_13,"setAction:",sel_getUid("cancel:"));
objj_msgSend(_14,"setTarget:",_d);
objj_msgSend(_14,"setAction:",sel_getUid("promptForManualEntry:"));
_browser=objj_msgSend(objj_msgSend(MMDirectoryBrowserView,"alloc"),"initWithFrame:",CGRectMake(15,CGRectGetMaxY(objj_msgSend(_titleLabel,"frame")),CGRectGetWidth(objj_msgSend(_11,"frame"))-30,CGRectGetHeight(objj_msgSend(_11,"frame"))-20-CGRectGetMaxY(objj_msgSend(_titleLabel,"frame"))-CGRectGetHeight(objj_msgSend(_12,"frame"))));
objj_msgSend(_12,"bind:toObject:withKeyPath:options:","enabled",_browser,"selectedDirectory",objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",CPIsNotNilTransformerName,CPValueTransformerNameBindingOption));
objj_msgSend(_11,"addSubview:",_titleLabel);
objj_msgSend(_11,"addSubview:",_browser);
objj_msgSend(_11,"addSubview:",_12);
objj_msgSend(_11,"addSubview:",_13);
objj_msgSend(_11,"addSubview:",_14);
_browserContainer=objj_msgSend(CPBox,"boxEnclosingView:",_browser);
objj_msgSend(_d,"setContentView:",_11);
}
return _d;
}
}),new objj_method(sel_getUid("choose:"),function(_15,_16,_17){
with(_15){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("directoryBrowserSheet:didChooseDirectory:"))&&objj_msgSend(_browser,"selectedDirectory")){
objj_msgSend(_delegate,"directoryBrowserSheet:didChooseDirectory:",_15,objj_msgSend(_browser,"selectedDirectory"));
}
}
}),new objj_method(sel_getUid("cancel:"),function(_18,_19,_1a){
with(_18){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("directoryBrowserSheetDidCancel:"))){
objj_msgSend(_delegate,"directoryBrowserSheetDidCancel:",_18);
}
}
}),new objj_method(sel_getUid("promptForManualEntry:"),function(_1b,_1c,_1d){
with(_1b){
var _1e=prompt(CPLocalizedString("Path of the directory you'd like to add:","Instruction text for the prompt to add directories manually"));
if(_1e){
var _1f=objj_msgSend(objj_msgSend(MMDirectory,"alloc"),"init");
objj_msgSend(_1f,"setPath:",_1e);
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("directoryBrowserSheet:didChooseDirectory:"))){
objj_msgSend(_delegate,"directoryBrowserSheet:didChooseDirectory:",_1b,_1f);
}
}
}
}),new objj_method(sel_getUid("setTitle:"),function(_20,_21,_22){
with(_20){
if(_22==_title){
return;
}
_title=_22;
objj_msgSend(_titleLabel,"setStringValue:",_title);
}
})]);
p;30;Views/MMDirectoryBrowserView.jt;3667;@STATIC;1.0;I;15;AppKit/CPView.jI;22;AppKit/CPOutlineView.ji;38;../DataSources/MMDirectoryDataSource.ji;23;../Models/MMDirectory.jt;3530;
objj_executeFile("AppKit/CPView.j",NO);
objj_executeFile("AppKit/CPOutlineView.j",NO);
objj_executeFile("../DataSources/MMDirectoryDataSource.j",YES);
objj_executeFile("../Models/MMDirectory.j",YES);
var _1=objj_allocateClassPair(CPView,"MMDirectoryBrowserView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("dataSource"),new objj_ivar("childrenByDirectory"),new objj_ivar("outlineView")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("MMDirectoryBrowserView").super_class},"initWithFrame:",_5)){
dataSource=objj_msgSend(objj_msgSend(MMDirectoryDataSource,"alloc"),"initWithDelegate:",_3);
childrenByDirectory=objj_msgSend(CPDictionary,"dictionary");
var _6=objj_msgSend(objj_msgSend(MMScrollView,"alloc"),"initWithFrame:",objj_msgSend(_3,"bounds"));
objj_msgSend(_6,"setHasHorizontalScroller:",NO);
outlineView=objj_msgSend(objj_msgSend(CPOutlineView,"alloc"),"initWithFrame:",objj_msgSend(objj_msgSend(_6,"contentView"),"bounds"));
objj_msgSend(outlineView,"setRowHeight:",17);
objj_msgSend(outlineView,"setBackgroundColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_6,"setDocumentView:",outlineView);
var _7=objj_msgSend(objj_msgSend(CPTableColumn,"alloc"),"initWithIdentifier:","TextColumn");
objj_msgSend(_7,"setWidth:",CGRectGetWidth(objj_msgSend(outlineView,"frame"))-10);
objj_msgSend(outlineView,"setHeaderView:",nil);
objj_msgSend(outlineView,"setCornerView:",nil);
objj_msgSend(outlineView,"addTableColumn:",_7);
objj_msgSend(outlineView,"setOutlineTableColumn:",_7);
objj_msgSend(outlineView,"setDataSource:",_3);
objj_msgSend(outlineView,"setDelegate:",_3);
objj_msgSend(_3,"addSubview:",_6);
}
return _3;
}
}),new objj_method(sel_getUid("selectedDirectory"),function(_8,_9){
with(_8){
return objj_msgSend(outlineView,"itemAtRow:",objj_msgSend(outlineView,"selectedRow"));
}
}),new objj_method(sel_getUid("childrenOfDirectory:"),function(_a,_b,_c){
with(_a){
var _d=objj_msgSend(childrenByDirectory,"objectForKey:",_c);
if(!_d){
objj_msgSend(dataSource,"refreshRecordsWithContextInfo:",_c);
}
return _d;
}
}),new objj_method(sel_getUid("dataSource:didReceiveRecords:contextInfo:"),function(_e,_f,_10,_11,_12){
with(_e){
objj_msgSend(childrenByDirectory,"setObject:forKey:",_11,_12);
objj_msgSend(outlineView,"reloadItem:reloadChildren:",_12,NO);
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
}),new objj_method(sel_getUid("outlineViewSelectionIsChanging:"),function(_26,_27,_28){
with(_26){
objj_msgSend(_26,"willChangeValueForKey:","selectedDirectory");
}
}),new objj_method(sel_getUid("outlineViewSelectionDidChange:"),function(_29,_2a,_2b){
with(_29){
objj_msgSend(_29,"didChangeValueForKey:","selectedDirectory");
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
p;22;Views/MMFirstRunView.jt;10322;@STATIC;1.0;I;15;AppKit/CPView.jI;22;LPKit/LPAnchorButton.ji;13;MMImageView.ji;17;MMSelectionView.jt;10215;
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
objj_msgSend(_e,"setType:",MMLibrarySectionTypeMovie);
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
objj_msgSend(_16,"setType:",MMLibrarySectionTypeMovie);
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
p;41;Views/MMInternetExplorerNotificationBar.jt;7408;@STATIC;1.0;I;17;AppKit/CPButton.jt;7367;
objj_executeFile("AppKit/CPButton.j",NO);
var _1=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","ie-notification-icon.png"),CGSizeMake(14,16));
var _2=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","ie-notification-close.png"),CGSizeMake(8,8));
var _3=objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",255/255,255/255,225/255,1);
var _4=objj_msgSend(CPColor,"blackColor");
var _5=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","ie-notification-icon-selected.png"),CGSizeMake(14,16));
var _6=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","ie-notification-close-selected.png"),CGSizeMake(8,8));
var _7=objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",49/255,106/255,197/255,1);
var _8=objj_msgSend(CPColor,"whiteColor");
var _9=21;
InternetExplorerVersion=(getInternetExplorerVersion=function(){
var rv=-1;
try{
if(navigator.appName=="Microsoft Internet Explorer"){
var ua=navigator.userAgent;
var re=new RegExp("MSIE ([0-9]{1,}[.0-9]{0,})");
if(re.exec(ua)!=null){
rv=parseFloat(RegExp.$1);
}
}
}
catch(ex){
}
return rv;
})();
var _a=objj_allocateClassPair(CPButton,"MMInternetExplorerNotificationBar"),_b=_a.isa;
class_addIvars(_a,[new objj_ivar("_icon"),new objj_ivar("_closeButton"),new objj_ivar("_label"),new objj_ivar("_dismissAction")]);
objj_registerClassPair(_a);
class_addMethods(_a,[new objj_method(sel_getUid("dismissAction"),function(_c,_d){
with(_c){
return _dismissAction;
}
}),new objj_method(sel_getUid("setDismissAction:"),function(_e,_f,_10){
with(_e){
_dismissAction=_10;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_11,_12,_13){
with(_11){
if(_11=objj_msgSendSuper({receiver:_11,super_class:objj_getClass("MMInternetExplorerNotificationBar").super_class},"initWithFrame:",_13)){
objj_msgSend(_11,"setBackgroundColor:",_3);
objj_msgSend(_11,"setBordered:",NO);
_icon=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_icon,"setImage:",_1);
objj_msgSend(_icon,"setFrameSize:",objj_msgSend(_1,"size"));
objj_msgSend(_icon,"setFrameOrigin:",CGPointMake(5,(CGRectGetHeight(_13)-CGRectGetHeight(objj_msgSend(_icon,"frame")))/2));
objj_msgSend(_icon,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_11,"addSubview:",_icon);
_closeButton=objj_msgSend(objj_msgSend(CPButton,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_closeButton,"setFrameSize:",objj_msgSend(_2,"size"));
objj_msgSend(_closeButton,"setFrameOrigin:",CGPointMake(CGRectGetWidth(_13)-7-CGRectGetWidth(objj_msgSend(_closeButton,"frame")),(CGRectGetHeight(_13)-CGRectGetHeight(objj_msgSend(_closeButton,"frame")))/2));
objj_msgSend(_closeButton,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin|CPViewMinXMargin);
objj_msgSend(_closeButton,"setBordered:",NO);
objj_msgSend(_closeButton,"setImagePosition:",CPImageOnly);
objj_msgSend(_closeButton,"setImage:",_2);
objj_msgSend(_closeButton,"setTarget:",_11);
objj_msgSend(_closeButton,"setAction:",sel_getUid("close:"));
objj_msgSend(_11,"addSubview:",_closeButton);
_label=objj_msgSend(CPTextField,"labelWithTitle:","");
objj_msgSend(_label,"setTextColor:",_4);
objj_msgSend(_label,"setAlignment:",CPLeftTextAlignment);
objj_msgSend(_label,"setAutoresizingMask:",CPViewWidthSizable|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_label,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(_icon,"frame"))+5,(CGRectGetHeight(_13)-CGRectGetHeight(objj_msgSend(_label,"frame")))/2));
objj_msgSend(_label,"setFrameSize:",CGSizeMake(CGRectGetWidth(_13)-(CGRectGetWidth(_13)-CGRectGetMinX(objj_msgSend(_closeButton,"frame"))+5)-CGRectGetMinX(objj_msgSend(_label,"frame")),CGRectGetHeight(objj_msgSend(_label,"frame"))));
objj_msgSend(_11,"addSubview:",_label);
}
return _11;
}
}),new objj_method(sel_getUid("title"),function(_14,_15){
with(_14){
return objj_msgSend(_label,"stringValue");
}
}),new objj_method(sel_getUid("setTitle:"),function(_16,_17,_18){
with(_16){
objj_msgSend(_label,"setStringValue:",_18);
}
}),new objj_method(sel_getUid("hitTest:"),function(_19,_1a,_1b){
with(_19){
var _1c=objj_msgSendSuper({receiver:_19,super_class:objj_getClass("MMInternetExplorerNotificationBar").super_class},"hitTest:",_1b),_1d=_1c;
while(_1d){
if(_1d==_icon){
return _19;
}else{
_1d=objj_msgSend(_1d,"superview");
}
}
return _1c;
}
}),new objj_method(sel_getUid("mouseEntered:"),function(_1e,_1f,_20){
with(_1e){
objj_msgSend(objj_msgSend(CPCursor,"pointingHandCursor"),"set");
objj_msgSend(_1e,"setBackgroundColor:",_7);
objj_msgSend(_icon,"setImage:",_5);
objj_msgSend(_closeButton,"setImage:",_6);
objj_msgSend(_label,"setTextColor:",_8);
}
}),new objj_method(sel_getUid("mouseExited:"),function(_21,_22,_23){
with(_21){
var _24=objj_msgSend(CPEvent,"mouseLocation"),_25=objj_msgSend(_21,"convertPoint:fromView:",_24,nil);
if(CGRectContainsPoint(objj_msgSend(_21,"bounds"),_25)){
return;
}
objj_msgSend(objj_msgSend(CPCursor,"arrowCursor"),"set");
objj_msgSend(_21,"setBackgroundColor:",_3);
objj_msgSend(_icon,"setImage:",_1);
objj_msgSend(_closeButton,"setImage:",_2);
objj_msgSend(_label,"setTextColor:",_4);
}
}),new objj_method(sel_getUid("close:"),function(_26,_27,_28){
with(_26){
if(_dismissAction){
objj_msgSend(_26,"sendAction:to:",_dismissAction,objj_msgSend(_26,"target"));
}
}
}),new objj_method(sel_getUid("removeFromSuperview"),function(_29,_2a){
with(_29){
objj_msgSend(objj_msgSend(CPCursor,"arrowCursor"),"set");
objj_msgSendSuper({receiver:_29,super_class:objj_getClass("MMInternetExplorerNotificationBar").super_class},"removeFromSuperview");
}
})]);
class_addMethods(_b,[new objj_method(sel_getUid("installBarWithTitle:aboveView:animated:"),function(_2b,_2c,_2d,_2e,_2f){
with(_2b){
var _30=_2e,_31=nil,bar=nil,_32=nil;
bar=objj_msgSend(objj_msgSend(_2b,"alloc"),"initWithFrame:",CGRectMake(CGRectGetMinX(objj_msgSend(_2e,"frame")),CGRectGetMinY(objj_msgSend(_2e,"frame")),CGRectGetWidth(objj_msgSend(_2e,"frame")),_9));
if(objj_msgSend(_2e,"autoresizingMask")&CPViewWidthSizable){
objj_msgSend(bar,"setAutoresizingMask:",CPViewWidthSizable);
}
_32=CGRectOffset(objj_msgSend(bar,"frame"),0,-_9);
objj_msgSend(bar,"setTitle:",_2d);
if(objj_msgSend(_2e,"autoresizingMask")&(CPViewMinYMargin|CPViewHeightSizable)){
_31=CGRectOffset(CGRectInset(objj_msgSend(_2e,"frame"),0,_9/2),0,_9/2);
}else{
_31=CGRectOffset(objj_msgSend(_2e,"frame"),0,_9);
}
objj_msgSend(objj_msgSend(_2e,"superview"),"addSubview:",bar);
if(_2f){
var _33=objj_msgSend(objj_msgSend(CPViewAnimation,"alloc"),"initWithDuration:animationCurve:",0.5,CPAnimationLinear);
objj_msgSend(_33,"setViewAnimations:",[objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_30,CPViewAnimationTargetKey,objj_msgSend(_30,"frame"),CPViewAnimationStartFrameKey,_31,CPViewAnimationEndFrameKey),objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",bar,CPViewAnimationTargetKey,_32,CPViewAnimationStartFrameKey,objj_msgSend(bar,"frame"),CPViewAnimationEndFrameKey)]);
objj_msgSend(_33,"startAnimation");
}else{
objj_msgSend(_30,"setFrame:",_31);
}
return bar;
}
})]);
p;26;Views/MMPreferencesPanel.jt;7521;@STATIC;1.0;I;26;AppKit/CPKeyValueBinding.jI;20;AppKit/CPResponder.jI;15;AppKit/CPView.ji;42;../Frameworks/LPKit/LPMultiLineTextField.ji;52;../Controllers/MMPreferencesGeneralPanelController.ji;52;../Controllers/MMPreferencesLibraryPanelController.ji;52;../Controllers/MMPreferencesSharingPanelController.ji;56;../Controllers/MMPreferencesTranscodingPanelController.ji;53;../Controllers/MMPreferencesSecurityPanelController.ji;53;../Controllers/MMPreferencesAdvancedPanelController.ji;34;../Controllers/MMPrefsController.ji;18;../Models/MMPref.jt;6969;
objj_executeFile("AppKit/CPKeyValueBinding.j",NO);
objj_executeFile("AppKit/CPResponder.j",NO);
objj_executeFile("AppKit/CPView.j",NO);
objj_executeFile("../Frameworks/LPKit/LPMultiLineTextField.j",YES);
objj_executeFile("../Controllers/MMPreferencesGeneralPanelController.j",YES);
objj_executeFile("../Controllers/MMPreferencesLibraryPanelController.j",YES);
objj_executeFile("../Controllers/MMPreferencesSharingPanelController.j",YES);
objj_executeFile("../Controllers/MMPreferencesTranscodingPanelController.j",YES);
objj_executeFile("../Controllers/MMPreferencesSecurityPanelController.j",YES);
objj_executeFile("../Controllers/MMPreferencesAdvancedPanelController.j",YES);
objj_executeFile("../Controllers/MMPrefsController.j",YES);
objj_executeFile("../Models/MMPref.j",YES);
var _1=objj_allocateClassPair(CPView,"MMPreferencesPanel"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_sheetPanel"),new objj_ivar("_minHeight"),new objj_ivar("sectionOrigin"),new objj_ivar("sections"),new objj_ivar("sectionIdentifiers"),new objj_ivar("selectedSection"),new objj_ivar("sectionBeingSelected")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("addPreferencePanel:"),function(_3,_4,_5){
with(_3){
objj_msgSend(sectionIdentifiers,"addObject:",objj_msgSend(_5,"identifier"));
objj_msgSend(sections,"addObject:",_5);
}
}),new objj_method(sel_getUid("sectionByIdentifier:"),function(_6,_7,_8){
with(_6){
var _9=objj_msgSend(sections,"objectEnumerator"),_a=nil;
while(_a=objj_msgSend(_9,"nextObject")){
if(objj_msgSend(_a,"identifier")==_8){
return _a;
}
}
return nil;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_b,_c,_d){
with(_b){
if(_b=objj_msgSendSuper({receiver:_b,super_class:objj_getClass("MMPreferencesPanel").super_class},"initWithFrame:",_d)){
var _e=objj_msgSend(objj_msgSend(CPToolbar,"alloc"),"init");
var _f=objj_msgSend(_e,"_toolbarView");
objj_msgSend(_f,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_b,"frame")),CGRectGetHeight(objj_msgSend(_f,"frame"))));
var _10=objj_msgSend(_b,"valueForThemeAttribute:","content-inset");
sectionOrigin=CGRectOffset(CGRectInset(objj_msgSend(_b,"bounds"),_10.left,_10.top),0,CGRectGetHeight(objj_msgSend(_f,"frame"))).origin;
sections=objj_msgSend(CPArray,"array");
sectionIdentifiers=objj_msgSend(CPArray,"array");
objj_msgSend(_b,"addPreferencePanel:",objj_msgSend(objj_msgSend(MMPreferencesGeneralPanelController,"alloc"),"init"));
objj_msgSend(_b,"addPreferencePanel:",objj_msgSend(objj_msgSend(MMPreferencesLibraryPanelController,"alloc"),"init"));
if(objj_msgSend(objj_msgSend(PMSCapabilities,"sharedPMSCapabilities"),"anySharingSupported")){
objj_msgSend(_b,"addPreferencePanel:",objj_msgSend(objj_msgSend(MMPreferencesSharingPanelController,"alloc"),"init"));
}
objj_msgSend(_b,"addPreferencePanel:",objj_msgSend(objj_msgSend(MMPreferencesTranscodingPanelController,"alloc"),"init"));
objj_msgSend(_b,"addPreferencePanel:",objj_msgSend(objj_msgSend(MMPreferencesSecurityPanelController,"alloc"),"init"));
objj_msgSend(_b,"addPreferencePanel:",objj_msgSend(objj_msgSend(MMPreferencesAdvancedPanelController,"alloc"),"init"));
var _11=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Done","Done"));
objj_msgSend(_11,"setKeyEquivalent:",CPEscapeFunctionKey);
objj_msgSend(_11,"setFrameOrigin:",CGPointMake(CGRectGetWidth(objj_msgSend(_b,"frame"))-_10.right-CGRectGetWidth(objj_msgSend(_11,"frame")),CGRectGetHeight(objj_msgSend(_b,"frame"))-_10.bottom-CGRectGetHeight(objj_msgSend(_11,"frame"))));
objj_msgSend(_11,"setAutoresizingMask:",CPViewMinXMargin|CPViewMinYMargin);
objj_msgSend(_11,"setTarget:",_b);
objj_msgSend(_11,"setAction:",sel_getUid("dismissSheet"));
objj_msgSend(_b,"addSubview:",_11);
objj_msgSend(_e,"setDelegate:",_b);
objj_msgSend(_e,"setDisplayMode:",CPToolbarDisplayModeIconAndLabel);
objj_msgSend(_b,"addSubview:",_f);
var _12=objj_msgSend(objj_msgSend(CPBox,"alloc"),"initWithFrame:",CGRectMake(0,CGRectGetMaxY(objj_msgSend(_f,"frame")),CGRectGetWidth(objj_msgSend(_b,"frame")),1));
objj_msgSend(_12,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_b,"addSubview:",_12);
objj_msgSend(_b,"selectSection:",objj_msgSend(sections,"objectAtIndex:",0));
}
return _b;
}
}),new objj_method(sel_getUid("presentSheetInWindow:"),function(_13,_14,_15){
with(_13){
if(_sheetPanel){
return;
}
var _16=objj_msgSend(sections,"objectEnumerator"),_17=nil,_18=nil;
while(_17=objj_msgSend(_16,"nextObject")){
if(objj_msgSend(_17,"initialFirstResponder")){
_18=objj_msgSend(_17,"initialFirstResponder");
}
}
_sheetPanel=objj_msgSend(objj_msgSend(CPPanel,"alloc"),"initWithContentRect:styleMask:",objj_msgSend(_13,"bounds"),CPDocModalWindowMask);
objj_msgSend(_sheetPanel,"setInitialFirstResponder:",_18);
objj_msgSend(_sheetPanel,"setContentView:",_13);
objj_msgSend(CPApp,"beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:",_sheetPanel,_15,nil,nil,nil);
}
}),new objj_method(sel_getUid("dismissSheet"),function(_19,_1a){
with(_19){
if(!_sheetPanel){
return;
}
objj_msgSend(CPApp,"endSheet:returnCode:",_sheetPanel,0),_sheetPanel=nil;
}
}),new objj_method(sel_getUid("toolbarDefaultItemIdentifiers:"),function(_1b,_1c,_1d){
with(_1b){
return sectionIdentifiers;
}
}),new objj_method(sel_getUid("toolbar:itemForItemIdentifier:willBeInsertedIntoToolbar:"),function(_1e,_1f,_20,_21,_22){
with(_1e){
var _23=objj_msgSend(objj_msgSend(_1e,"sectionByIdentifier:",_21),"toolbarItem");
objj_msgSend(_23,"setAction:",sel_getUid("toolbarItemWasSelected:"));
objj_msgSend(_23,"setTarget:",_1e);
return _23;
}
}),new objj_method(sel_getUid("toolbarItemWasSelected:"),function(_24,_25,_26){
with(_24){
objj_msgSend(_24,"selectSection:",objj_msgSend(_24,"sectionByIdentifier:",objj_msgSend(_26,"itemIdentifier")));
}
}),new objj_method(sel_getUid("selectSection:"),function(_27,_28,_29){
with(_27){
sectionBeingSelected=_29;
var _2a=objj_msgSend(_29,"view");
if(!objj_msgSend(objj_msgSend(_27,"subviews"),"containsObject:",_2a)){
objj_msgSend(_2a,"setFrameOrigin:",sectionOrigin);
objj_msgSend(_27,"addSubview:",_2a);
}
if(selectedSection){
objj_msgSend(_27,"transitionFromSubview:toSubview:",objj_msgSend(selectedSection,"view"),_2a);
}else{
objj_msgSend(_27,"willTransitionFromSubview:toSubview:",nil,_2a);
objj_msgSend(_27,"sizeToFit");
objj_msgSend(_27,"didTransitionFromSubview:toSubview:",nil,_2a);
}
}
}),new objj_method(sel_getUid("didTransitionFromSubview:toSubview:"),function(_2b,_2c,_2d,_2e){
with(_2b){
objj_msgSend(objj_msgSend(selectedSection,"view"),"setHidden:",YES);
objj_msgSend(_2e,"setHidden:",NO);
objj_msgSend(objj_msgSend(_2b,"window"),"makeFirstResponder:",objj_msgSend(sectionBeingSelected,"initialFirstResponder"));
selectedSection=sectionBeingSelected;
sectionBeingSelected=nil;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("themeAttributes"),function(_2f,_30){
with(_2f){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[CGInsetMake(15,15,15,15)],["content-inset"]);
}
})]);
p;49;Controllers/MMPreferencesGeneralPanelController.jt;903;@STATIC;1.0;i;34;MMPreferencesBasePanelController.ji;36;../Views/MMPreferencesGeneralPanel.jt;805;
objj_executeFile("MMPreferencesBasePanelController.j",YES);
objj_executeFile("../Views/MMPreferencesGeneralPanel.j",YES);
var _1=objj_allocateClassPair(MMPreferencesBasePanelController,"MMPreferencesGeneralPanelController"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("identifier"),function(_3,_4){
with(_3){
return "General";
}
}),new objj_method(sel_getUid("title"),function(_5,_6){
with(_5){
return CPLocalizedString("General","General");
}
}),new objj_method(sel_getUid("loadView"),function(_7,_8){
with(_7){
objj_msgSend(_7,"setView:",objj_msgSend(objj_msgSend(MMPreferencesGeneralPanel,"alloc"),"initWithFrame:",CGRectMake(0,0,485,145)));
objj_msgSend(_7,"setInitialFirstResponder:",objj_msgSend(objj_msgSend(_7,"view"),"initialFirstResponder"));
}
})]);
p;46;Controllers/MMPreferencesBasePanelController.jt;1121;@STATIC;1.0;I;25;AppKit/CPViewController.jt;1072;
objj_executeFile("AppKit/CPViewController.j",NO);
var _1=objj_allocateClassPair(CPViewController,"MMPreferencesBasePanelController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("initialFirstResponder")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initialFirstResponder"),function(_3,_4){
with(_3){
return initialFirstResponder;
}
}),new objj_method(sel_getUid("setInitialFirstResponder:"),function(_5,_6,_7){
with(_5){
initialFirstResponder=_7;
}
}),new objj_method(sel_getUid("toolbarItem"),function(_8,_9){
with(_8){
var _a=objj_msgSend(objj_msgSend(CPToolbarItem,"alloc"),"initWithItemIdentifier:",objj_msgSend(_8,"identifier"));
objj_msgSend(_a,"setImage:",objj_msgSend(_8,"image"));
objj_msgSend(_a,"setLabel:",objj_msgSend(_8,"title"));
return _a;
}
}),new objj_method(sel_getUid("image"),function(_b,_c){
with(_b){
return objj_msgSend(objj_msgSend(CPImage,"alloc"),"initByReferencingFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:",objj_msgSend(_b,"identifier")+".png"),CGSizeMake(32,32));
}
})]);
p;33;Views/MMPreferencesGeneralPanel.jt;5416;@STATIC;1.0;I;15;AppKit/CPView.jt;5377;
objj_executeFile("AppKit/CPView.j",NO);
var _1=objj_allocateClassPair(CPView,"MMPreferencesGeneralPanel"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("initialFirstResponder"),new objj_ivar("friendlyNameLabel"),new objj_ivar("friendlyNameField"),new objj_ivar("friendlyNameSummary"),new objj_ivar("generalSeparator"),new objj_ivar("sendAnonymousUsageCheckbox"),new objj_ivar("sendAnonymousUsageSummary")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initialFirstResponder"),function(_3,_4){
with(_3){
return initialFirstResponder;
}
}),new objj_method(sel_getUid("setInitialFirstResponder:"),function(_5,_6,_7){
with(_5){
initialFirstResponder=_7;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_8,_9,_a){
with(_8){
if(_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("MMPreferencesGeneralPanel").super_class},"initWithFrame:",_a)){
friendlyNameLabel=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Friendly name:","Friendly name label"));
friendlyNameField=objj_msgSend(CPTextField,"textFieldWithStringValue:placeholder:width:","","",CGRectGetWidth(objj_msgSend(_8,"frame"))-CGRectGetWidth(objj_msgSend(friendlyNameLabel,"frame")));
friendlyNameSummary=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("This name will be used to identify this media server to other computers "+"on your network. If you leave it blank, your computer's "+"name will be used instead.","Summary info for friendly name"));
objj_msgSend(_8,"setInitialFirstResponder:",friendlyNameField);
objj_msgSend(friendlyNameField,"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.FriendlyName",nil);
objj_msgSend(friendlyNameField,"setFrameOrigin:",CGPointMake(CGRectGetWidth(objj_msgSend(friendlyNameLabel,"frame")),0));
objj_msgSend(friendlyNameField,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(friendlyNameLabel,"setFrameOrigin:",CGPointMake(0,(CGRectGetHeight(objj_msgSend(friendlyNameField,"frame"))-CGRectGetHeight(objj_msgSend(friendlyNameLabel,"frame")))/2));
objj_msgSend(friendlyNameLabel,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(friendlyNameSummary,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(friendlyNameField,"frame")),CGRectGetMaxY(objj_msgSend(friendlyNameField,"frame"))));
var _b=objj_msgSend(CPPlatformString,"sizeOfString:withFont:forWidth:",objj_msgSend(friendlyNameSummary,"stringValue"),objj_msgSend(friendlyNameSummary,"font"),CGRectGetWidth(objj_msgSend(friendlyNameField,"frame")));
objj_msgSend(friendlyNameSummary,"setFrameSize:",_b);
objj_msgSend(friendlyNameSummary,"setLineBreakMode:",CPLineBreakByWordWrapping);
objj_msgSend(friendlyNameSummary,"setAutoresizingMask:",CPViewMaxXMargin);
objj_msgSend(friendlyNameSummary,"sizeToFit");
objj_msgSend(_8,"addSubview:",friendlyNameField);
objj_msgSend(_8,"addSubview:",friendlyNameLabel);
objj_msgSend(_8,"addSubview:",friendlyNameSummary);
generalSeparator=objj_msgSend(objj_msgSend(CPBox,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(generalSeparator,"setBorderColor:",objj_msgSend(CPColor,"colorWithWhite:alpha:",137/255,1));
objj_msgSend(generalSeparator,"setBoxType:",CPBoxSeparator);
objj_msgSend(generalSeparator,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_8,"addSubview:",generalSeparator);
sendAnonymousUsageCheckbox=objj_msgSend(CPCheckBox,"checkBoxWithTitle:",CPLocalizedString("Send anonymous usage data to Plex","Send anonymous usage data to Plex"));
objj_msgSend(sendAnonymousUsageCheckbox,"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.collectUsageData",nil);
objj_msgSend(_8,"addSubview:",sendAnonymousUsageCheckbox);
sendAnonymousUsageSummary=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("This helps us improve your experience (for example, to help us match movies and TV shows).","Summary info for collecting usage data"));
objj_msgSend(sendAnonymousUsageSummary,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",11));
var _c=objj_msgSend(CPPlatformString,"sizeOfString:withFont:forWidth:",objj_msgSend(sendAnonymousUsageSummary,"stringValue"),objj_msgSend(sendAnonymousUsageSummary,"font"),CGRectGetWidth(objj_msgSend(_8,"frame"))-17);
objj_msgSend(sendAnonymousUsageSummary,"setFrameSize:",_c);
objj_msgSend(sendAnonymousUsageSummary,"setLineBreakMode:",CPLineBreakByWordWrapping);
objj_msgSend(sendAnonymousUsageSummary,"setAutoresizingMask:",CPViewMaxXMargin);
objj_msgSend(sendAnonymousUsageSummary,"sizeToFit");
objj_msgSend(_8,"addSubview:",sendAnonymousUsageSummary);
objj_msgSend(_8,"layoutSubviews");
}
return _8;
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_d,_e){
with(_d){
objj_msgSendSuper({receiver:_d,super_class:objj_getClass("MMPreferencesGeneralPanel").super_class},"layoutSubviews");
objj_msgSend(generalSeparator,"setFrame:",CGRectMake(0,CGRectGetMaxY(objj_msgSend(friendlyNameSummary,"frame"))+10,CGRectGetWidth(objj_msgSend(_d,"frame")),5));
objj_msgSend(sendAnonymousUsageCheckbox,"sizeToFit");
objj_msgSend(sendAnonymousUsageCheckbox,"setFrameOrigin:",CGPointMake(0,CGRectGetMaxY(objj_msgSend(generalSeparator,"frame"))+10));
objj_msgSend(sendAnonymousUsageSummary,"setFrameOrigin:",CGPointMake(17,CGRectGetMaxY(objj_msgSend(sendAnonymousUsageCheckbox,"frame"))));
}
})]);
p;49;Controllers/MMPreferencesLibraryPanelController.jt;788;@STATIC;1.0;i;34;MMPreferencesBasePanelController.ji;36;../Views/MMPreferencesLibraryPanel.jt;690;
objj_executeFile("MMPreferencesBasePanelController.j",YES);
objj_executeFile("../Views/MMPreferencesLibraryPanel.j",YES);
var _1=objj_allocateClassPair(MMPreferencesBasePanelController,"MMPreferencesLibraryPanelController"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("identifier"),function(_3,_4){
with(_3){
return "Library";
}
}),new objj_method(sel_getUid("title"),function(_5,_6){
with(_5){
return CPLocalizedString("Library","Library");
}
}),new objj_method(sel_getUid("loadView"),function(_7,_8){
with(_7){
objj_msgSend(_7,"setView:",objj_msgSend(objj_msgSend(MMPreferencesLibraryPanel,"alloc"),"initWithFrame:",CGRectMakeZero()));
}
})]);
p;33;Views/MMPreferencesLibraryPanel.jt;5101;@STATIC;1.0;I;15;AppKit/CPView.ji;27;../Models/PMSCapabilities.jt;5030;
objj_executeFile("AppKit/CPView.j",NO);
objj_executeFile("../Models/PMSCapabilities.j",YES);
var _1=objj_allocateClassPair(CPView,"MMPreferencesLibraryPanel"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("MMPreferencesLibraryPanel").super_class},"initWithFrame:",_5)){
var _6=0;
if(objj_msgSend(objj_msgSend(PMSCapabilities,"sharedPMSCapabilities"),"libraryChangeWatchingSupported")){
var _7=objj_msgSend(CPCheckBox,"checkBoxWithTitle:",CPLocalizedString("Update my library when changes to my folders are detected","Preference window setting"));
objj_msgSend(_7,"sizeToFit");
objj_msgSend(_7,"setFrameOrigin:",CGPointMake(0,_6));
objj_msgSend(_7,"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.FSEventLibraryUpdatesEnabled",nil);
objj_msgSend(_3,"addSubview:",_7);
_6=CGRectGetMaxY(objj_msgSend(_7,"frame"))+10;
}else{
_6=5;
}
if(objj_msgSend(objj_msgSend(PMSCapabilities,"sharedPMSCapabilities"),"libraryTimedUpdatesSupported")){
var _8=objj_msgSend(CPCheckBox,"checkBoxWithTitle:",CPLocalizedString("Update my library","Preference window setting - will have frequencies after it e.g. Update my library every two hours"));
objj_msgSend(_8,"sizeToFit");
objj_msgSend(_8,"setFrameOrigin:",CGPointMake(0,_6));
objj_msgSend(_8,"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.ScheduledLibraryUpdatesEnabled",nil);
objj_msgSend(_3,"addSubview:",_8);
var _9=objj_msgSend(CPPopUpButton,"buttonWithTitle:",nil),_a=objj_msgSend(_3,"_periodTitles"),_b=objj_msgSend(_3,"_periodValues");
for(var i=0,_c=objj_msgSend(_a,"count");i<_c;i++){
var _d=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",_a[i],nil,nil);
objj_msgSend(_d,"setTag:",_b[i]);
objj_msgSend(_9,"addItem:",_d);
}
objj_msgSend(_9,"sizeToFit");
objj_msgSend(_9,"setFrame:",CGRectMake(CGRectGetMaxX(objj_msgSend(_8,"frame"))+5,CGRectGetMinY(objj_msgSend(_8,"frame"))+(CGRectGetHeight(objj_msgSend(_8,"frame"))-CGRectGetHeight(objj_msgSend(_9,"frame")))/2,140,CGRectGetHeight(objj_msgSend(_9,"frame"))));
objj_msgSend(_9,"bind:toObject:withKeyPath:options:","enabled",objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.ScheduledLibraryUpdatesEnabled",nil);
objj_msgSend(_9,"bind:toObject:withKeyPath:options:","selectedTag",objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.ScheduledLibraryUpdateInterval",nil);
objj_msgSend(_3,"addSubview:",_9);
_6=CGRectGetMaxY(objj_msgSend(_8,"frame"))+10;
}
var _e=objj_msgSend(CPCheckBox,"checkBoxWithTitle:",CPLocalizedString("Empty trash automatically after every scan","Preference window setting"));
objj_msgSend(_e,"sizeToFit");
objj_msgSend(_e,"setFrameOrigin:",CGPointMake(0,_6));
objj_msgSend(_e,"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.autoEmptyTrash",nil);
objj_msgSend(_3,"addSubview:",_e);
_6=CGRectGetMaxY(objj_msgSend(_e,"frame"))+10;
if(objj_msgSend(objj_msgSend(PMSCapabilities,"sharedPMSCapabilities"),"libraryChangeWatchingSupported")||objj_msgSend(objj_msgSend(PMSCapabilities,"sharedPMSCapabilities"),"libraryTimedUpdatesSupported")){
var _f=objj_msgSend(CPCheckBox,"checkBoxWithTitle:",CPLocalizedString("Include music sections in automatic updates","Preference window setting"));
objj_msgSend(_f,"sizeToFit");
objj_msgSend(_f,"setFrameOrigin:",CGPointMake(0,_6));
objj_msgSend(_f,"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.autoScanMusicSections",nil);
objj_msgSend(_3,"addSubview:",_f);
var _10=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Large music sections may take a long time to scan","Preference window setting"));
objj_msgSend(_10,"setFrameOrigin:",CGPointMake(17,CGRectGetMaxY(objj_msgSend(_f,"frame"))));
objj_msgSend(_3,"addSubview:",_10);
}
objj_msgSend(_3,"sizeToFit");
}
return _3;
}
}),new objj_method(sel_getUid("_periodTitles"),function(_11,_12){
with(_11){
return [CPLocalizedString("every 15 minutes","Library scan interval (i.e. Update my library every 15 minutes)"),CPLocalizedString("every 30 minutes","Library scan interval (i.e. Update my library every 30 minutes)"),CPLocalizedString("hourly","Library scan interval (i.e. Update my library hourly)"),CPLocalizedString("every 2 hours","Library scan interval (i.e. Update my library every 2 hours)"),CPLocalizedString("every 6 hours","Library scan interval (i.e. Update my library every 6 hours)"),CPLocalizedString("every 12 hours","Library scan interval (i.e. Update my library every 12 hours)"),CPLocalizedString("daily","Library scan interval (i.e. Update my library daily")];
}
}),new objj_method(sel_getUid("_periodValues"),function(_13,_14){
with(_13){
return [15*60,30*60,60*60,2*60*60,6*60*60,12*60*60,24*60*60];
}
})]);
p;49;Controllers/MMPreferencesSharingPanelController.jt;795;@STATIC;1.0;i;34;MMPreferencesBasePanelController.ji;36;../Views/MMPreferencesSharingPanel.jt;697;
objj_executeFile("MMPreferencesBasePanelController.j",YES);
objj_executeFile("../Views/MMPreferencesSharingPanel.j",YES);
var _1=objj_allocateClassPair(MMPreferencesBasePanelController,"MMPreferencesSharingPanelController"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("identifier"),function(_3,_4){
with(_3){
return "Sharing";
}
}),new objj_method(sel_getUid("title"),function(_5,_6){
with(_5){
return CPLocalizedString("Sharing","Sharing");
}
}),new objj_method(sel_getUid("loadView"),function(_7,_8){
with(_7){
objj_msgSend(_7,"setView:",objj_msgSend(objj_msgSend(MMPreferencesSharingPanel,"alloc"),"initWithFrame:",CGRectMake(0,0,485,145)));
}
})]);
p;33;Views/MMPreferencesSharingPanel.jt;1995;@STATIC;1.0;I;15;AppKit/CPView.jt;1956;
objj_executeFile("AppKit/CPView.j",NO);
var _1=objj_allocateClassPair(CPView,"MMPreferencesSharingPanel"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("MMPreferencesSharingPanel").super_class},"initWithFrame:",_5)){
var _6=0;
if(objj_msgSend(objj_msgSend(PMSCapabilities,"sharedPMSCapabilities"),"iTunesSharingSupported")){
var _7=objj_msgSend(CPCheckBox,"checkBoxWithTitle:",CPLocalizedString("iTunes Sharing Enabled","Preference window setting"));
objj_msgSend(_7,"setFrameOrigin:",CGPointMake(0,_6));
objj_msgSend(_7,"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.iTunesSharingEnabled",nil);
objj_msgSend(_3,"addSubview:",_7);
_6=CGRectGetMaxY(objj_msgSend(_7,"frame"))+10;
}
if(objj_msgSend(objj_msgSend(PMSCapabilities,"sharedPMSCapabilities"),"iPhotoSharingSupported")){
var _8=objj_msgSend(CPCheckBox,"checkBoxWithTitle:",CPLocalizedString("iPhoto Sharing Enabled","Preference window setting"));
objj_msgSend(_8,"setFrameOrigin:",CGPointMake(0,_6));
objj_msgSend(_8,"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.iPhotoSharingEnabled",nil);
objj_msgSend(_3,"addSubview:",_8);
_6=CGRectGetMaxY(objj_msgSend(_8,"frame"))+10;
}
if(objj_msgSend(objj_msgSend(PMSCapabilities,"sharedPMSCapabilities"),"ApertureSharingSupported")){
var _9=objj_msgSend(CPCheckBox,"checkBoxWithTitle:",CPLocalizedString("Aperture Sharing Enabled","Preference window setting"));
objj_msgSend(_9,"setFrameOrigin:",CGPointMake(0,_6));
objj_msgSend(_9,"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.ApertureSharingEnabled",nil);
objj_msgSend(_3,"addSubview:",_9);
}
objj_msgSend(_3,"sizeToFit");
}
return _3;
}
})]);
p;53;Controllers/MMPreferencesTranscodingPanelController.jt;816;@STATIC;1.0;i;34;MMPreferencesBasePanelController.ji;40;../Views/MMPreferencesTranscodingPanel.jt;714;
objj_executeFile("MMPreferencesBasePanelController.j",YES);
objj_executeFile("../Views/MMPreferencesTranscodingPanel.j",YES);
var _1=objj_allocateClassPair(MMPreferencesBasePanelController,"MMPreferencesTranscodingPanelController"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("identifier"),function(_3,_4){
with(_3){
return "Transcoding";
}
}),new objj_method(sel_getUid("title"),function(_5,_6){
with(_5){
return CPLocalizedString("Transcoding","Transcoding");
}
}),new objj_method(sel_getUid("loadView"),function(_7,_8){
with(_7){
objj_msgSend(_7,"setView:",objj_msgSend(objj_msgSend(MMPreferencesTranscodingPanel,"alloc"),"initWithFrame:",CGRectMakeZero()));
}
})]);
p;37;Views/MMPreferencesTranscodingPanel.jt;832;@STATIC;1.0;I;15;AppKit/CPView.jt;794;
objj_executeFile("AppKit/CPView.j",NO);
var _1=objj_allocateClassPair(CPView,"MMPreferencesTranscodingPanel"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("MMPreferencesTranscodingPanel").super_class},"initWithFrame:",_5)){
var _6=objj_msgSend(CPCheckBox,"checkBoxWithTitle:",CPLocalizedString("Offer higher bitrates over 3G connections","Preference window setting"));
objj_msgSend(_6,"sizeToFit");
objj_msgSend(_6,"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.higherBitrate3G",nil);
objj_msgSend(_3,"addSubview:",_6);
objj_msgSend(_3,"sizeToFit");
}
return _3;
}
})]);
p;50;Controllers/MMPreferencesSecurityPanelController.jt;11203;@STATIC;1.0;i;34;MMPreferencesBasePanelController.ji;36;../DataSources/MMAccountDataSource.ji;21;../Models/MMAccount.ji;37;../Views/MMPreferencesSecurityPanel.ji;19;../Views/MMPrompt.jt;11011;
objj_executeFile("MMPreferencesBasePanelController.j",YES);
objj_executeFile("../DataSources/MMAccountDataSource.j",YES);
objj_executeFile("../Models/MMAccount.j",YES);
objj_executeFile("../Views/MMPreferencesSecurityPanel.j",YES);
objj_executeFile("../Views/MMPrompt.j",YES);
var _1=objj_allocateClassPair(MMPreferencesBasePanelController,"MMPreferencesSecurityPanelController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("accountDataSource"),new objj_ivar("adminAccount"),new objj_ivar("enableSecurityPrompt"),new objj_ivar("disableSecurityPrompt"),new objj_ivar("changeUsernamePrompt"),new objj_ivar("changePasswordPrompt")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_3,_4){
with(_3){
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("MMPreferencesSecurityPanelController").super_class},"init")){
accountDataSource=objj_msgSend(objj_msgSend(MMAccountDataSource,"alloc"),"initWithDelegate:",_3);
adminAccount=objj_msgSend(accountDataSource,"adminAccount");
objj_msgSend(objj_msgSend(PMSSecurity,"sharedSecurity"),"addObserver:forKeyPath:options:context:",_3,"securityEnabled",CPKeyValueObservingOptionNew|CPKeyValueObservingOptionInitial,nil);
}
return _3;
}
}),new objj_method(sel_getUid("identifier"),function(_5,_6){
with(_5){
return "Security";
}
}),new objj_method(sel_getUid("title"),function(_7,_8){
with(_7){
return CPLocalizedString("Security","Security");
}
}),new objj_method(sel_getUid("loadView"),function(_9,_a){
with(_9){
var _b=objj_msgSend(objj_msgSend(MMPreferencesSecurityPanel,"alloc"),"initWithFrame:",CGRectMake(0,0,455,195));
objj_msgSend(objj_msgSend(_b,"usernameValueLabel"),"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(accountDataSource,"adminAccount"),"name",nil);
objj_msgSend(objj_msgSend(_b,"changeUsernameButton"),"setTarget:",_9);
objj_msgSend(objj_msgSend(_b,"changeUsernameButton"),"setAction:",sel_getUid("changeUsername:"));
objj_msgSend(objj_msgSend(_b,"changePasswordButton"),"setTarget:",_9);
objj_msgSend(objj_msgSend(_b,"changePasswordButton"),"setAction:",sel_getUid("changePassword:"));
objj_msgSend(objj_msgSend(_b,"enableSecurityCheckbox"),"setTarget:",_9);
objj_msgSend(objj_msgSend(_b,"enableSecurityCheckbox"),"setAction:",sel_getUid("toggleSecurityEnabled:"));
objj_msgSend(_9,"setView:",_b);
}
}),new objj_method(sel_getUid("prompt:userDidActivateButtonWithReturnCode:"),function(_c,_d,_e,_f){
with(_c){
switch(_f){
case 0:
objj_msgSend(_c,"promptWasSubmitted:",_e);
break;
case 1:
objj_msgSend(_c,"promptWasCancelled:",_e);
break;
}
}
}),new objj_method(sel_getUid("promptWasCancelled:"),function(_10,_11,_12){
with(_10){
if(_12==enableSecurityPrompt){
objj_msgSend(objj_msgSend(objj_msgSend(_10,"view"),"enableSecurityCheckbox"),"setState:",CPOffState);
objj_msgSend(enableSecurityPrompt,"dismissPrompt"),enableSecurityPrompt=nil;
}else{
if(_12==disableSecurityPrompt){
objj_msgSend(objj_msgSend(objj_msgSend(_10,"view"),"enableSecurityCheckbox"),"setState:",CPOnState);
objj_msgSend(disableSecurityPrompt,"dismissPrompt"),disableSecurityPrompt=nil;
}else{
if(_12==changeUsernamePrompt){
objj_msgSend(changeUsernamePrompt,"dismissPrompt"),changeUsernamePrompt=nil;
}else{
if(_12==changePasswordPrompt){
objj_msgSend(changePasswordPrompt,"dismissPrompt"),changePasswordPrompt=nil;
}
}
}
}
}
}),new objj_method(sel_getUid("promptWasSubmitted:"),function(_13,_14,_15){
with(_13){
if(_15==enableSecurityPrompt){
var _16=objj_msgSend(enableSecurityPrompt,"stringValueAtIndex:",0),_17=objj_msgSend(enableSecurityPrompt,"stringValueAtIndex:",1);
if(_16!=_17){
objj_msgSend(enableSecurityPrompt,"shake");
return;
}
if(!objj_msgSend(adminAccount,"name")){
objj_msgSend(adminAccount,"setName:","Administrator");
}
objj_msgSend(adminAccount,"setPassword:",_16);
objj_msgSend(accountDataSource,"updateRecord:withPassword:",adminAccount,"");
}else{
if(_15==disableSecurityPrompt){
var _18=objj_msgSend(disableSecurityPrompt,"stringValueAtIndex:",0),_16="";
objj_msgSend(adminAccount,"setPassword:",_16);
objj_msgSend(accountDataSource,"updateRecord:withPassword:",adminAccount,_18);
}else{
if(_15==changeUsernamePrompt){
var _19=objj_msgSend(changeUsernamePrompt,"stringValueAtIndex:",0),_18=objj_msgSend(changeUsernamePrompt,"stringValueAtIndex:",1);
objj_msgSend(adminAccount,"setName:",_19);
objj_msgSend(accountDataSource,"updateRecord:withPassword:",adminAccount,_18);
}else{
if(_15==changePasswordPrompt){
var _1a=objj_msgSend(changePasswordPrompt,"stringValueAtIndex:",0),_16=objj_msgSend(changePasswordPrompt,"stringValueAtIndex:",1),_17=objj_msgSend(changePasswordPrompt,"stringValueAtIndex:",2);
if(_16!=_17){
objj_msgSend(changePasswordPrompt,"shake");
return;
}
objj_msgSend(adminAccount,"setPassword:",_16);
objj_msgSend(accountDataSource,"updateRecord:withPassword:",adminAccount,_1a);
}
}
}
}
}
}),new objj_method(sel_getUid("dataSource:didUpdateRecord:contextInfo:"),function(_1b,_1c,_1d,_1e,_1f){
with(_1b){
if(enableSecurityPrompt){
objj_msgSend(objj_msgSend(PMSSecurity,"sharedSecurity"),"setUsername:",objj_msgSend(_1e,"name"));
objj_msgSend(objj_msgSend(PMSSecurity,"sharedSecurity"),"setPassword:",objj_msgSend(_1e,"password"));
objj_msgSend(enableSecurityPrompt,"dismissPrompt"),enableSecurityPrompt=nil;
objj_msgSend(objj_msgSend(PMSSecurity,"sharedSecurity"),"setSecurityEnabled:",YES);
}else{
if(disableSecurityPrompt){
objj_msgSend(objj_msgSend(PMSSecurity,"sharedSecurity"),"setUsername:",nil);
objj_msgSend(objj_msgSend(PMSSecurity,"sharedSecurity"),"setPassword:",nil);
objj_msgSend(disableSecurityPrompt,"dismissPrompt"),disableSecurityPrompt=nil;
objj_msgSend(objj_msgSend(PMSSecurity,"sharedSecurity"),"setSecurityEnabled:",NO);
}else{
if(changeUsernamePrompt){
objj_msgSend(objj_msgSend(PMSSecurity,"sharedSecurity"),"setUsername:",objj_msgSend(_1e,"name"));
objj_msgSend(changeUsernamePrompt,"dismissPrompt"),changeUsernamePrompt=nil;
}else{
if(changePasswordPrompt){
objj_msgSend(objj_msgSend(PMSSecurity,"sharedSecurity"),"setPassword:",objj_msgSend(_1e,"password"));
objj_msgSend(changePasswordPrompt,"dismissPrompt"),changePasswordPrompt=nil;
}
}
}
}
}
}),new objj_method(sel_getUid("dataSource:didFailToUpdateRecord:withError:contextInfo:"),function(_20,_21,_22,_23,_24,_25){
with(_20){
var _26=enableSecurityPrompt||disableSecurityPrompt||changeUsernamePrompt||changePasswordPrompt;
objj_msgSend(_26,"shake");
objj_msgSend(_23,"rejectChangedAttributes");
}
}),new objj_method(sel_getUid("changeUsername:"),function(_27,_28,_29){
with(_27){
if(changeUsernamePrompt){
return;
}
var _2a=objj_msgSend(objj_msgSend(MMPrompt,"alloc"),"init");
changeUsernamePrompt=_2a;
objj_msgSend(_2a,"setMessageText:",CPLocalizedString("Change your username, and enter your password to authenticate.","Change username prompt message"));
objj_msgSend(_2a,"addFieldWithLabel:value:",CPLocalizedString("Username:","Username label"),objj_msgSend(adminAccount,"name"));
objj_msgSend(_2a,"addFieldWithLabel:value:placeholder:secure:",CPLocalizedString("Password:","Password label"),"","",YES);
objj_msgSend(_2a,"addButtonWithTitle:",CPLocalizedString("Change","Change"));
objj_msgSend(_2a,"addButtonWithTitle:",CPLocalizedString("Cancel","Cancel"));
objj_msgSend(_2a,"setDelegate:",_27);
objj_msgSend(_2a,"beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:",objj_msgSend(objj_msgSend(_27,"view"),"window"),nil,nil,nil);
}
}),new objj_method(sel_getUid("changePassword:"),function(_2b,_2c,_2d){
with(_2b){
if(changePasswordPrompt){
return;
}
var _2e=objj_msgSend(objj_msgSend(MMPrompt,"alloc"),"init");
changePasswordPrompt=_2e;
objj_msgSend(_2e,"setMessageText:",CPLocalizedString("Enter your current password to authenticate, then enter and verify your new password.","Change password prompt message"));
objj_msgSend(_2e,"addFieldWithLabel:value:placeholder:secure:",CPLocalizedString("Current Password:","Password label"),"","",YES);
objj_msgSend(_2e,"addFieldWithLabel:value:placeholder:secure:",CPLocalizedString("New Password:","Password label"),"","",YES);
objj_msgSend(_2e,"addFieldWithLabel:value:placeholder:secure:",CPLocalizedString("Verify:","Verify password label"),"","",YES);
objj_msgSend(_2e,"addButtonWithTitle:",CPLocalizedString("Change","Change"));
objj_msgSend(_2e,"addButtonWithTitle:",CPLocalizedString("Cancel","Cancel"));
objj_msgSend(_2e,"setDelegate:",_2b);
objj_msgSend(_2e,"beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:",objj_msgSend(objj_msgSend(_2b,"view"),"window"),nil,nil,nil);
}
}),new objj_method(sel_getUid("toggleSecurityEnabled:"),function(_2f,_30,_31){
with(_2f){
var _32=(objj_msgSend(_31,"state")==CPOnState);
if(_32){
var _33=objj_msgSend(objj_msgSend(MMPrompt,"alloc"),"init");
enableSecurityPrompt=_33;
objj_msgSend(_33,"setMessageText:",CPLocalizedString("Enter a password to enable secure access to your server:","Enable security prompt message"));
objj_msgSend(_33,"addFieldWithLabel:value:placeholder:secure:",CPLocalizedString("Password:","Password label"),"","",YES);
objj_msgSend(_33,"addFieldWithLabel:value:placeholder:secure:",CPLocalizedString("Verify:","Verify password label"),"","",YES);
objj_msgSend(_33,"addButtonWithTitle:",CPLocalizedString("Enable","Enable"));
objj_msgSend(_33,"addButtonWithTitle:",CPLocalizedString("Cancel","Cancel"));
objj_msgSend(_33,"setDelegate:",_2f);
objj_msgSend(_33,"beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:",objj_msgSend(objj_msgSend(_2f,"view"),"window"),nil,nil,nil);
}else{
var _33=objj_msgSend(objj_msgSend(MMPrompt,"alloc"),"init");
disableSecurityPrompt=_33;
objj_msgSend(_33,"setMessageText:",CPLocalizedString("Are you sure you want to disable secure access to your server?","Disable secure server access confirmation"));
objj_msgSend(_33,"addFieldWithLabel:value:placeholder:secure:",CPLocalizedString("Password:","Password label"),"","",YES);
objj_msgSend(_33,"addButtonWithTitle:",CPLocalizedString("Disable Secure Access","Disable secure server confirmation button"));
objj_msgSend(_33,"addButtonWithTitle:",CPLocalizedString("Cancel","Cancel"));
objj_msgSend(_33,"setInformativeText:",CPLocalizedString("Turning off secure server access will allow incoming connections from any computer.","Disable secure server access confirmation info"));
objj_msgSend(_33,"setDelegate:",_2f);
objj_msgSend(_33,"beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:",objj_msgSend(objj_msgSend(_2f,"view"),"window"),_2f,nil,nil);
}
}
}),new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"),function(_34,_35,_36,_37,_38,_39){
with(_34){
if(enableSecurityPrompt||disableSecurityPrompt){
return;
}
var _3a=objj_msgSend(_38,"objectForKey:",CPKeyValueChangeNewKey);
objj_msgSend(objj_msgSend(objj_msgSend(_34,"view"),"enableSecurityCheckbox"),"setState:",_3a?CPOnState:CPOffState);
objj_msgSend(objj_msgSend(objj_msgSend(_34,"view"),"changeUsernameButton"),"setEnabled:",_3a);
objj_msgSend(objj_msgSend(objj_msgSend(_34,"view"),"changePasswordButton"),"setEnabled:",_3a);
}
})]);
p;33;DataSources/MMAccountDataSource.jt;2213;@STATIC;1.0;i;14;MMDataSource.ji;21;../Models/MMAccount.jt;2149;
objj_executeFile("MMDataSource.j",YES);
objj_executeFile("../Models/MMAccount.j",YES);
var _1=objj_allocateClassPair(MMDataSource,"MMAccountDataSource"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("adminAccount")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("URLForRecordsWithContextInfo:"),function(_3,_4,_5){
with(_3){
return objj_msgSend(PMSURL,"URLWithPath:","/accounts");
}
}),new objj_method(sel_getUid("URLForRecord:contextInfo:"),function(_6,_7,_8,_9){
with(_6){
return objj_msgSend(_8,"URL");
}
}),new objj_method(sel_getUid("URLForUpdatedRecord:contextInfo:"),function(_a,_b,_c,_d){
with(_a){
var _e=_d?objj_msgSend(CPMutableDictionary,"dictionaryWithDictionary:",_d):objj_msgSend(CPMutableDictionary,"dictionary");
if(objj_msgSend(_c,"attributeForKeyHasChanged:","name")){
objj_msgSend(_e,"setObject:forKey:",objj_msgSend(_c,"name"),"username");
}
if(objj_msgSend(_c,"attributeForKeyHasChanged:","password")){
objj_msgSend(_e,"setObject:forKey:",objj_msgSend(_c,"password"),"newPassword");
}
return objj_msgSend(PMSURL,"URLWithPath:params:",objj_msgSend(objj_msgSend(_c,"URL"),"path"),_e);
}
}),new objj_method(sel_getUid("HTTPBodyForUpdatedRecord:contextInfo:"),function(_f,_10,_11,_12){
with(_f){
return nil;
}
}),new objj_method(sel_getUid("recordFromElement:contextInfo:"),function(_13,_14,_15,_16){
with(_13){
var _17=objj_msgSend(objj_msgSend(_13,"dataStore"),"recordWithClass:id:",objj_msgSend(MMAccount,"class"),objj_msgSend(MMAccount,"idFromKey:",_15.getAttribute("key")));
objj_msgSend(_17,"setValuesForNodeAttributes:ignoreUndefinedKeys:",_15,YES);
return _17;
}
}),new objj_method(sel_getUid("adminAccount"),function(_18,_19){
with(_18){
if(!adminAccount){
adminAccount=objj_msgSend(objj_msgSend(MMDataStore,"defaultDataStore"),"recordWithClass:id:",objj_msgSend(MMAccount,"class"),1);
objj_msgSend(_18,"refreshRecord:",adminAccount);
}
return adminAccount;
}
}),new objj_method(sel_getUid("updateRecord:withPassword:"),function(_1a,_1b,_1c,_1d){
with(_1a){
objj_msgSend(_1a,"updateRecord:contextInfo:",_1c,objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_1d,"password"));
}
})]);
p;18;Models/MMAccount.jt;1400;@STATIC;1.0;i;10;MMRecord.jt;1366;
objj_executeFile("MMRecord.j",YES);
var _1=objj_allocateClassPair(MMRecord,"MMAccount"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("name"),new objj_ivar("password")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("name"),function(_3,_4){
with(_3){
return name;
}
}),new objj_method(sel_getUid("setName:"),function(_5,_6,_7){
with(_5){
name=_7;
}
}),new objj_method(sel_getUid("password"),function(_8,_9){
with(_8){
return password;
}
}),new objj_method(sel_getUid("setPassword:"),function(_a,_b,_c){
with(_a){
password=_c;
}
}),new objj_method(sel_getUid("key"),function(_d,_e){
with(_d){
return objj_msgSend(CPString,"stringWithFormat:","/accounts/%@",objj_msgSend(_d,"id"));
}
}),new objj_method(sel_getUid("setKey:"),function(_f,_10,_11){
with(_f){
objj_msgSend(_f,"setId:",objj_msgSend(objj_msgSend(_f,"class"),"idFromKey:",_11));
}
}),new objj_method(sel_getUid("URL"),function(_12,_13){
with(_12){
return objj_msgSend(PMSURL,"URLWithPath:",objj_msgSend(_12,"key"));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("observedAttributes"),function(_14,_15){
with(_14){
return objj_msgSend(CPSet,"setWithObjects:","name","password");
}
}),new objj_method(sel_getUid("idFromKey:"),function(_16,_17,_18){
with(_16){
return Number(objj_msgSend(_18,"stringByReplacingOccurrencesOfString:withString:","/accounts/",""));
}
})]);
p;34;Views/MMPreferencesSecurityPanel.jt;8933;@STATIC;1.0;I;15;AppKit/CPView.jt;8894;
objj_executeFile("AppKit/CPView.j",NO);
var _1=objj_allocateClassPair(CPView,"MMPreferencesSecurityPanel"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("securityTitleLabel"),new objj_ivar("securityExplanationLabel"),new objj_ivar("enableSecurityCheckbox"),new objj_ivar("settingsBox"),new objj_ivar("changeUsernameButton"),new objj_ivar("changePasswordButton"),new objj_ivar("usernameLabel"),new objj_ivar("usernameValueLabel"),new objj_ivar("keyImageView")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("enableSecurityCheckbox"),function(_3,_4){
with(_3){
return enableSecurityCheckbox;
}
}),new objj_method(sel_getUid("setEnableSecurityCheckbox:"),function(_5,_6,_7){
with(_5){
enableSecurityCheckbox=_7;
}
}),new objj_method(sel_getUid("changeUsernameButton"),function(_8,_9){
with(_8){
return changeUsernameButton;
}
}),new objj_method(sel_getUid("setChangeUsernameButton:"),function(_a,_b,_c){
with(_a){
changeUsernameButton=_c;
}
}),new objj_method(sel_getUid("changePasswordButton"),function(_d,_e){
with(_d){
return changePasswordButton;
}
}),new objj_method(sel_getUid("setChangePasswordButton:"),function(_f,_10,_11){
with(_f){
changePasswordButton=_11;
}
}),new objj_method(sel_getUid("usernameValueLabel"),function(_12,_13){
with(_12){
return usernameValueLabel;
}
}),new objj_method(sel_getUid("setUsernameValueLabel:"),function(_14,_15,_16){
with(_14){
usernameValueLabel=_16;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_17,_18,_19){
with(_17){
if(_17=objj_msgSendSuper({receiver:_17,super_class:objj_getClass("MMPreferencesSecurityPanel").super_class},"initWithFrame:",_19)){
securityTitleLabel=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Secure Server Access","Security preference pane title"));
securityExplanationLabel=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("If you want to share your media over the Internet, you can turn on Secure Server Access to prevent unauthorized access to your server.","Security preference pane explanation"));
objj_msgSend(securityTitleLabel,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",14));
objj_msgSend(securityTitleLabel,"sizeToFit");
objj_msgSend(securityTitleLabel,"setFrameOrigin:",CGPointMake(0,0));
objj_msgSend(securityExplanationLabel,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",12));
objj_msgSend(securityExplanationLabel,"setLineBreakMode:",CPLineBreakByWordWrapping);
enableSecurityCheckbox=objj_msgSend(CPCheckBox,"checkBoxWithTitle:",CPLocalizedString("Enable Secure Access","Check box label to enable secure server access"));
objj_msgSend(enableSecurityCheckbox,"setTarget:",_17);
objj_msgSend(enableSecurityCheckbox,"setAction:",sel_getUid("toggleSecurityEnabled:"));
objj_msgSend(enableSecurityCheckbox,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",13));
objj_msgSend(enableSecurityCheckbox,"sizeToFit");
var _1a=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMakeZero());
settingsBox=objj_msgSend(CPBox,"boxEnclosingView:",_1a);
objj_msgSend(settingsBox,"setBorderType:",CPBezelBorder);
objj_msgSend(settingsBox,"setBoxType:",CPBoxPrimary);
objj_msgSend(settingsBox,"setCornerRadius:",5);
objj_msgSend(settingsBox,"setFillColor:",objj_msgSend(CPColor,"colorWithWhite:alpha:",229/255,1));
objj_msgSend(settingsBox,"setAutoresizingMask:",CPViewWidthSizable);
var _1b=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:","Key_Large.png"),CGSizeMake(128,128));
keyImageView=objj_msgSend(objj_msgSend(MMImageView,"alloc"),"initWithFrame:",CGRectMake(0,0,objj_msgSend(_1b,"size").width,objj_msgSend(_1b,"size").height));
objj_msgSend(keyImageView,"setImage:",_1b);
objj_msgSend(_17,"addSubview:",keyImageView);
usernameLabel=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Username:","Username label"));
objj_msgSend(usernameLabel,"setFrameOrigin:",CGPointMake(15,15));
objj_msgSend(usernameLabel,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",12));
objj_msgSend(usernameLabel,"sizeToFit");
objj_msgSend(_1a,"addSubview:",usernameLabel);
usernameValueLabel=objj_msgSend(CPTextField,"labelWithTitle:","");
objj_msgSend(usernameValueLabel,"setFrame:",CGRectMake(CGRectGetMaxX(objj_msgSend(usernameLabel,"frame"))+5,CGRectGetMinY(objj_msgSend(usernameLabel,"frame")),CGRectGetWidth(objj_msgSend(_1a,"frame"))-CGRectGetMaxX(objj_msgSend(usernameLabel,"frame"))-5,CGRectGetHeight(objj_msgSend(usernameValueLabel,"frame"))));
objj_msgSend(usernameValueLabel,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_1a,"addSubview:",usernameValueLabel);
changeUsernameButton=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Change Username","Security preferences button to change the main account username"));
objj_msgSend(changeUsernameButton,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(usernameLabel,"frame")),CGRectGetMaxY(objj_msgSend(usernameLabel,"frame"))+10));
objj_msgSend(_1a,"addSubview:",changeUsernameButton);
changePasswordButton=objj_msgSend(CPButton,"buttonWithTitle:",CPLocalizedString("Change Password","Security preferences button to change the main account password"));
objj_msgSend(changePasswordButton,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(changeUsernameButton,"frame"))+10,CGRectGetMinY(objj_msgSend(changeUsernameButton,"frame"))));
objj_msgSend(_1a,"addSubview:",changePasswordButton);
objj_msgSend(_17,"addSubview:",securityTitleLabel);
objj_msgSend(_17,"addSubview:",securityExplanationLabel);
objj_msgSend(_17,"addSubview:",enableSecurityCheckbox);
objj_msgSend(_17,"addSubview:",settingsBox);
objj_msgSend(_17,"layoutSubviews");
}
return _17;
}
}),new objj_method(sel_getUid("promptForValues:messageText:confirmButtonText:target:selector:"),function(_1c,_1d,_1e,_1f,_20,_21,_22){
with(_1c){
var _23=objj_msgSend(objj_msgSend(CPAlert,"alloc"),"init");
objj_msgSend(_23,"setWindowStyle:",CPInformationalAlertStyle);
objj_msgSend(_23,"setMessageText:",_1f);
var _24=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMakeZero()),_25=[],_26=[],_27=nil,_28=0,_29=0;
for(var i=0,_2a=objj_msgSend(_1e,"count");i<_2a;i++){
var _2b=objj_msgSend(CPTextField,"labelWithTitle:",_1e[i].label),_2c=objj_msgSend(CPTextField,"textFieldWithStringValue:placeholder:width:",_1e[i].value,_1e[i].placeholder,150);
objj_msgSend(_2b,"setAlignment:",CPRightTextAlignment);
objj_msgSend(_2c,"setSecure:",_1e[i].secure);
objj_msgSend(_25,"addObject:",_2b);
objj_msgSend(_26,"addObject:",_2c);
var _2d=CGRectGetWidth(objj_msgSend(_2b,"frame"));
if(_2d>_29){
_29=_2d;
}
objj_msgSend(_24,"addSubview:",_2b);
objj_msgSend(_24,"addSubview:",_2c);
if(!_27){
_27=_2c;
}
}
for(var i=0,_2a=objj_msgSend(_1e,"count");i<_2a;i++){
var _2b=_25[i],_2c=_26[i];
objj_msgSend(_2c,"setFrameOrigin:",CGPointMake(_29,_28));
objj_msgSend(_2b,"setFrame:",CGRectMake(0,CGRectGetMinY(objj_msgSend(_2c,"frame"))+(CGRectGetHeight(objj_msgSend(_2c,"frame"))-CGRectGetHeight(objj_msgSend(_2b,"frame")))/2,_29,CGRectGetHeight(objj_msgSend(_2b,"frame"))));
_28+=CGRectGetHeight(objj_msgSend(_2c,"frame"))+5;
}
objj_msgSend(_24,"sizeToFit");
objj_msgSend(_23,"setAccessoryView:",_24);
objj_msgSend(_23,"addButtonWithTitle:",_20);
objj_msgSend(_23,"addButtonWithTitle:",CPLocalizedString("Cancel","Cancel"));
objj_msgSend(_23,"runModal");
objj_msgSend(_27,"selectAll:",nil);
objj_msgSend(objj_msgSend(_23,"window"),"makeFirstResponder:",_27);
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_2e,_2f){
with(_2e){
var _30=CGRectGetWidth(objj_msgSend(_2e,"frame"));
var _31=objj_msgSend(objj_msgSend(securityExplanationLabel,"stringValue"),"sizeWithFont:inWidth:",objj_msgSend(securityExplanationLabel,"font"),_30);
_31.height+=5;
objj_msgSend(securityExplanationLabel,"setFrameSize:",_31);
objj_msgSend(securityExplanationLabel,"setFrameOrigin:",CGPointMake(CGRectGetMinX(objj_msgSend(securityTitleLabel,"frame")),CGRectGetMaxY(objj_msgSend(securityTitleLabel,"frame"))+5));
objj_msgSend(keyImageView,"setFrameOrigin:",CGPointMake(-15,CGRectGetMaxY(objj_msgSend(securityExplanationLabel,"frame"))+5));
objj_msgSend(enableSecurityCheckbox,"setFrameOrigin:",CGPointMake(CGRectGetMaxX(objj_msgSend(keyImageView,"frame"))-15,CGRectGetMinY(objj_msgSend(keyImageView,"frame"))+15));
objj_msgSend(settingsBox,"setFrame:",CGRectMake(CGRectGetMinX(objj_msgSend(enableSecurityCheckbox,"frame")),CGRectGetMaxY(objj_msgSend(enableSecurityCheckbox,"frame"))+5,_30-CGRectGetMinX(objj_msgSend(enableSecurityCheckbox,"frame")),CGRectGetMaxY(objj_msgSend(changeUsernameButton,"frame"))+15));
objj_msgSendSuper({receiver:_2e,super_class:objj_getClass("MMPreferencesSecurityPanel").super_class},"layoutSubviews");
}
}),new objj_method(sel_getUid("toggleSecurityEnabled:"),function(_32,_33,_34){
with(_32){
var _35=objj_msgSend(enableSecurityCheckbox,"state")==CPOnState;
}
})]);
p;16;Views/MMPrompt.jt;4156;@STATIC;1.0;I;16;AppKit/CPAlert.ji;19;../CPWindow+Shake.jt;4092;
objj_executeFile("AppKit/CPAlert.j",NO);
objj_executeFile("../CPWindow+Shake.j",YES);
var _1=150;
var _2=objj_allocateClassPair(CPAlert,"MMPrompt"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("labels"),new objj_ivar("inputs")]);
objj_registerClassPair(_2);
class_addMethods(_2,[new objj_method(sel_getUid("initWithFrame:"),function(_4,_5,_6){
with(_4){
if(_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("MMPrompt").super_class},"initWithFrame:",_6)){
labels=objj_msgSend(CPMutableArray,"array");
inputs=objj_msgSend(CPMutableArray,"array");
objj_msgSend(_4,"setAccessoryView:",objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMakeZero()));
}
return _4;
}
}),new objj_method(sel_getUid("addFieldWithLabel:value:"),function(_7,_8,_9,_a){
with(_7){
objj_msgSend(_7,"addFieldWithLabel:value:placeholder:secure:",_9,_a,"",NO);
}
}),new objj_method(sel_getUid("addFieldWithLabel:value:placeholder:secure:"),function(_b,_c,_d,_e,_f,_10){
with(_b){
var _11=objj_msgSend(CPTextField,"labelWithTitle:",_d),_12=objj_msgSend(CPTextField,"textFieldWithStringValue:placeholder:width:",_e,_f,_1);
objj_msgSend(_11,"setAlignment:",CPRightTextAlignment);
objj_msgSend(_12,"setSecure:",_10);
objj_msgSend(labels,"addObject:",_11);
objj_msgSend(inputs,"addObject:",_12);
objj_msgSend(objj_msgSend(_b,"accessoryView"),"addSubview:",_11);
objj_msgSend(objj_msgSend(_b,"accessoryView"),"addSubview:",_12);
_needsLayout=YES;
}
}),new objj_method(sel_getUid("stringValueAtIndex:"),function(_13,_14,_15){
with(_13){
return objj_msgSend(objj_msgSend(inputs,"objectAtIndex:",_15),"stringValue");
}
}),new objj_method(sel_getUid("shake"),function(_16,_17){
with(_16){
objj_msgSend(_window,"shake");
}
}),new objj_method(sel_getUid("dismissPrompt"),function(_18,_19){
with(_18){
if(objj_msgSend(_window,"isSheet")){
objj_msgSend(CPApp,"endSheet:returnCode:",_window,-1);
}else{
objj_msgSend(CPApp,"abortModal");
objj_msgSend(_window,"close");
}
}
}),new objj_method(sel_getUid("_takeReturnCodeFrom:"),function(_1a,_1b,_1c){
with(_1a){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("prompt:userDidActivateButtonWithReturnCode:"))){
objj_msgSend(_delegate,"prompt:userDidActivateButtonWithReturnCode:",_1a,objj_msgSend(_1c,"tag"));
}else{
objj_msgSendSuper({receiver:_1a,super_class:objj_getClass("MMPrompt").super_class},"_takeReturnCodeFrom:",_1c);
}
}
}),new objj_method(sel_getUid("runModal"),function(_1d,_1e){
with(_1d){
objj_msgSendSuper({receiver:_1d,super_class:objj_getClass("MMPrompt").super_class},"runModal");
objj_msgSend(_1d,"activateFirstResponder");
}
}),new objj_method(sel_getUid("beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:"),function(_1f,_20,_21,_22,_23,_24){
with(_1f){
objj_msgSendSuper({receiver:_1f,super_class:objj_getClass("MMPrompt").super_class},"beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:",_21,_22,_23,_24);
objj_msgSend(_1f,"activateFirstResponder");
}
}),new objj_method(sel_getUid("activateFirstResponder"),function(_25,_26){
with(_25){
if(objj_msgSend(inputs,"count")){
var _27=objj_msgSend(inputs,"objectAtIndex:",0);
objj_msgSend(objj_msgSend(_25,"window"),"makeFirstResponder:",_27);
objj_msgSend(_27,"selectAll:",nil);
}
}
}),new objj_method(sel_getUid("layout"),function(_28,_29){
with(_28){
var _2a=0,_2b=0;
for(var i=0,_2c=objj_msgSend(labels,"count");i<_2c;i++){
var _2d=objj_msgSend(labels,"objectAtIndex:",i),_2e=CGRectGetWidth(objj_msgSend(_2d,"frame"));
if(_2e>_2b){
_2b=_2e;
}
}
for(var i=0,_2c=objj_msgSend(labels,"count");i<_2c;i++){
var _2d=objj_msgSend(labels,"objectAtIndex:",i),_2f=objj_msgSend(inputs,"objectAtIndex:",i);
objj_msgSend(_2f,"setFrameOrigin:",CGPointMake(_2b,_2a));
objj_msgSend(_2d,"setFrame:",CGRectMake(0,_2a+(CGRectGetHeight(objj_msgSend(_2f,"frame"))-CGRectGetHeight(objj_msgSend(_2d,"frame")))/2,_2b,CGRectGetHeight(objj_msgSend(_2d,"frame"))));
_2a=CGRectGetMaxY(objj_msgSend(_2f,"frame"))+5;
}
objj_msgSend(objj_msgSend(_28,"accessoryView"),"sizeToFit");
objj_msgSendSuper({receiver:_28,super_class:objj_getClass("MMPrompt").super_class},"layout");
}
})]);
p;16;CPWindow+Shake.jt;1288;@STATIC;1.0;t;1269;
var _1=objj_getClass("CPWindow");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"CPWindow\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("shake"),function(_3,_4){
with(_3){
var _5=30,_6=3,_7=0.18,_8=0,_9=objj_msgSend(_3,"frame").origin,_a=_9.x,_b=_9.y;
for(var i=0;i<_6;i++){
var _c;
_c=_7/_6/4;
objj_msgSend(_3,"animateOriginToPoint:duration:afterDelay:",CGPointMake(_a-_5,_b),_c,_8);
_8+=_c;
_c=_7/_6/2;
objj_msgSend(_3,"animateOriginToPoint:duration:afterDelay:",CGPointMake(_a+_5,_b),_c,_8);
_8+=_c;
_c=_7/_6/4;
objj_msgSend(_3,"animateOriginToPoint:duration:afterDelay:",CGPointMake(_a,_b),_c,_8);
_8+=_c;
}
}
}),new objj_method(sel_getUid("animateOriginToPoint:duration:afterDelay:"),function(_d,_e,_f,_10,_11){
with(_d){
setTimeout(function(){
var _12=objj_msgSend(objj_msgSend(CPViewAnimation,"alloc"),"initWithDuration:animationCurve:",_10,CPAnimationEaseInOut),_13=objj_msgSend(_d,"frame"),_14=CGRectMake(_f.x,_f.y,CGRectGetWidth(_13),CGRectGetHeight(_13));
objj_msgSend(_12,"setViewAnimations:",[objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_d,CPViewAnimationTargetKey,_13,CPViewAnimationStartFrameKey,_14,CPViewAnimationEndFrameKey)]);
objj_msgSend(_12,"startAnimation");
},_11*1000);
}
})]);
p;50;Controllers/MMPreferencesAdvancedPanelController.jt;802;@STATIC;1.0;i;34;MMPreferencesBasePanelController.ji;37;../Views/MMPreferencesAdvancedPanel.jt;703;
objj_executeFile("MMPreferencesBasePanelController.j",YES);
objj_executeFile("../Views/MMPreferencesAdvancedPanel.j",YES);
var _1=objj_allocateClassPair(MMPreferencesBasePanelController,"MMPreferencesAdvancedPanelController"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("identifier"),function(_3,_4){
with(_3){
return "Advanced";
}
}),new objj_method(sel_getUid("title"),function(_5,_6){
with(_5){
return CPLocalizedString("Advanced","Advanced");
}
}),new objj_method(sel_getUid("loadView"),function(_7,_8){
with(_7){
objj_msgSend(_7,"setView:",objj_msgSend(objj_msgSend(MMPreferencesAdvancedPanel,"alloc"),"initWithFrame:",CGRectMake(0,0,500,120)));
}
})]);
p;34;Views/MMPreferencesAdvancedPanel.jt;2724;@STATIC;1.0;I;15;AppKit/CPView.jt;2685;
objj_executeFile("AppKit/CPView.j",NO);
var _1=objj_allocateClassPair(CPView,"MMPreferencesAdvancedPanel"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("disableCapabilityCheckingCheckBox"),new objj_ivar("disableCapabilityCheckingLabel")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
if(_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("MMPreferencesAdvancedPanel").super_class},"initWithFrame:",_5)){
disableCapabilityCheckingCheckBox=objj_msgSend(CPCheckBox,"checkBoxWithTitle:",CPLocalizedString("Disable capability checking","Preference window setting"));
objj_msgSend(disableCapabilityCheckingCheckBox,"sizeToFit");
objj_msgSend(disableCapabilityCheckingCheckBox,"bind:toObject:withKeyPath:options:",CPValueBinding,objj_msgSend(MMPrefsController,"sharedPrefsController"),"values.disableCapabilityChecking",nil);
objj_msgSend(_3,"addSubview:",disableCapabilityCheckingCheckBox);
disableCapabilityCheckingLabel=objj_msgSend(CPTextField,"labelWithTitle:",CPLocalizedString("Capability checking ensures that plug-ins that are incompatible with this version of the server or the current client application you are using are hidden. Disabling capability checking is useful during development, but will enable access to plug-ins that may perform unreliably with certain client applications.","Preference window setting detail"));
objj_msgSend(disableCapabilityCheckingLabel,"setLineBreakMode:",CPLineBreakByWordWrapping);
objj_msgSend(_3,"addSubview:",disableCapabilityCheckingLabel);
objj_msgSend(_3,"sizeToFit");
}
return _3;
}
}),new objj_method(sel_getUid("targetWidth"),function(_6,_7){
with(_6){
return MAX(CGRectGetMaxX(objj_msgSend(disableCapabilityCheckingCheckBox,"frame")),CGRectGetWidth(objj_msgSend(_6,"frame")));
}
}),new objj_method(sel_getUid("sizeToFit"),function(_8,_9){
with(_8){
objj_msgSend(_8,"layoutSubviews");
objj_msgSend(_8,"setFrameSize:",CGSizeMake(objj_msgSend(_8,"targetWidth"),CGRectGetMaxY(objj_msgSend(disableCapabilityCheckingLabel,"frame"))));
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_a,_b){
with(_a){
objj_msgSend(disableCapabilityCheckingCheckBox,"sizeToFit");
var _c=objj_msgSend(_a,"targetWidth"),_d=17,_e=_c-_d;
var _f=objj_msgSend(CPPlatformString,"sizeOfString:withFont:forWidth:",objj_msgSend(disableCapabilityCheckingLabel,"stringValue"),objj_msgSend(disableCapabilityCheckingLabel,"font"),_e);
_f.height+=5;
objj_msgSend(disableCapabilityCheckingLabel,"setFrameOrigin:",CGPointMake(17,CGRectGetMaxY(objj_msgSend(disableCapabilityCheckingCheckBox,"frame"))));
objj_msgSend(disableCapabilityCheckingLabel,"setFrameSize:",_f);
}
})]);
