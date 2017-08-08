'use strict';

import React, {
	Component
} from 'react';

import {
	AppRegistry,
	StyleSheet,
	Text,
	View,
	NativeModules,
	TouchableOpacity
} from 'react-native';
let CalendarManager = NativeModules.CalendarManager;

class NativePort extends Component {
	render() {
		return (
			<View>
				<Text>
					测试rn与原生交互
				</Text>
				<TouchableOpacity
					onPress={this.doNative.bind(this, '调用testNormalEvent方法', '测试普通调用')}
				>
					<Text>1111</Text>
				</TouchableOpacity>
			</View>
		)
	}
	componentDidMount() {
		console.log(this.props);
		//  调用原生方法
		console.log(CalendarManager);
		CalendarManager.testNormalEvent('调用testNormalEvent方法', '测试普通调用');
	}
	doNative(one, two) {
		CalendarManager.testNormalEvent(one, two);
	}
}

const styles = StyleSheet.create({

});

AppRegistry.registerComponent('NativePort', () => NativePort);