static NSString *plist = @"/var/mobile/Library/Preferences/com.softboysxp.Tallscreen.plist";

BOOL isCapable() {
	return YES;
}

BOOL isEnabled() {
	return [[NSDictionary dictionaryWithContentsOfFile:plist][@"enabled"] boolValue];	
}

void setState(BOOL enabled) {
	NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithContentsOfFile:plist];
	dict[@"enabled"] = [NSNumber numberWithBool:enabled];
	[dict writeToFile:plist atomically:YES];
}

float getDelayTime() {
	return .0f;
}

BOOL getStateFast() {
	return isEnabled();
}

