<template>
  <v-row justify="center">
    <v-dialog
      v-model="dialog"
      fullscreen
      hide-overlay
      transition="dialog-bottom-transition"
    >
      <template v-slot:activator="{ on, attrs }">
        <v-btn color="primary" dark v-bind="attrs" v-on="on">
          Add Budget
        </v-btn>
      </template>
      <v-card>
        <v-toolbar dark color="primary">
          <v-btn icon dark @click="dialog = false">
            <v-icon>mdi-close</v-icon>
          </v-btn>
          <v-toolbar-title>Add Budget</v-toolbar-title>
          <v-spacer></v-spacer>
          <v-toolbar-items>
            <v-btn dark text @click="dialog = false"> Save </v-btn>
          </v-toolbar-items>
        </v-toolbar>
        <!-- 新規作成フォーム -->
        <v-list three-line subheader>
          <v-subheader>budget item</v-subheader>
          <!-- 予算名 -->
          <v-list-item>
            <v-list-item-content>
              <v-list-item-title>Budget Name</v-list-item-title>
              <v-list-item-subtitle>
                Input new item, create new budget item too.
              </v-list-item-subtitle>
              <div v-if="newBudgetName">
                <v-text-field
                  label="Budget Name"
                  :rules="rules"
                  hide-details="auto"
                >
                  <v-icon
                    slot="prepend"
                    color="green"
                    @click="newBudgetName = !newBudgetName"
                  >
                    mdi-autorenew
                  </v-icon>
                </v-text-field>
              </div>
              <div v-else>
                <v-overflow-btn
                  class="my-2"
                  :items="dropdown_edit"
                  label="Overflow Btn w/ editable"
                  editable
                  item-value="text"
                >
                  <v-icon
                    slot="prepend"
                    color="green"
                    @click="newBudgetName = !newBudgetName"
                  >
                    mdi-autorenew
                  </v-icon>
                </v-overflow-btn>
              </div>
            </v-list-item-content>
          </v-list-item>
          <!-- 予算 -->
          <v-list-item>
            <v-list-item-content>
              <v-list-item-title>Amount</v-list-item-title>
              <v-list-item-subtitle> budget amount. </v-list-item-subtitle>
              <div>
                <v-text-field type="number" placeholder="0"></v-text-field>
              </div>
            </v-list-item-content>
          </v-list-item>
        </v-list>
      </v-card>
    </v-dialog>
  </v-row>
</template>

<script>
export default {
  data() {
    return {
      dialog: false,
      notifications: false,
      sound: true,
      widgets: false,
      rules: [
        (value) => !!value || "Required.",
        (value) => (value && value.length <= 30) || "Max 30 characters",
      ],
      dropdown_edit: [
        { text: "食費" },
        { text: "生活消耗費" },
        { text: "お昼のみもの" },
        { text: "美容院・病院代" },
        { text: "光熱費" },
      ],
      newBudgetName: true,
    };
  },
};
</script>
