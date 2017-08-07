'use strict';

import React, {
	Component
} from 'react';

import {
	AppRegistry,
	StyleSheet,
	Text,
	View,
} from 'react-native';

class NativePort extends Component {
	render() {
		return (
			<View>
				<Text>
					测试rn与原生交互
				</Text>
			</View>
		)
	}
	componentDidMount() {
		console.log(this.props);
	}
}

const styles = StyleSheet.create({

});

AppRegistry.registerComponent('NativePort', () => NativePort);