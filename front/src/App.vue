<template>
  <v-app>
    <header>
      <v-app-bar app dark>
        <!-- ハンバーガーメニューボタン -->
        <v-app-bar-nav-icon @click="drawer = true" />
        <v-toolbar-title>yosan</v-toolbar-title>
        <v-spacer></v-spacer>
        <v-btn icon>
          <v-icon>mdi-dots-vertical</v-icon>
        </v-btn>
      </v-app-bar>
      <!-- ハンバーガーメニュー -->
      <v-navigation-drawer v-model="drawer" fixed temporary>
        <v-list nav dense>
          <v-list-item-group>
            <v-list-item v-for="(menuItem, i) in menuItems" :key="i">
              <v-list-item-title>{{ menuItem.name }}</v-list-item-title>
            </v-list-item>
          </v-list-item-group>
        </v-list>
      </v-navigation-drawer>
    </header>
    <!-- main -->
    <v-main>
      <!-- ページビュー -->
      <router-view />
    </v-main>
  </v-app>
</template>

<script>
import constants from "./common/constants";

export default {
  data() {
    return {
      drawer: false,
      menuItems: constants.menuItems,
    };
  },
};
</script>

<style scoped></style>
