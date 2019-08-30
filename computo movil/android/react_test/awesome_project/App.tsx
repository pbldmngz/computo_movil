import React from 'react';
import { StyleSheet, Text, View, TouchableWithoutFeedback } from 'react-native';

export default function App() {
  return (
    <View style={styles.container}>
      <Text style={styles.textColor}>This is some random text in representation of my own frustration and misery</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#000',
    alignItems: 'center',
    justifyContent: 'center',
  },
  textColor: {
    color: '#fff',
    fontSize: 60,
    textAlign: 'center',
  },
});
