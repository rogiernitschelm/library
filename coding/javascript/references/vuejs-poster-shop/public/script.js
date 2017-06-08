const PRICE = 9.99;
const PLACEHOLDER_SEARCH = 'Chewbacca';

new Vue({
  el: '#app',
  data: {
    items: [],
    cart: [],
    search: PLACEHOLDER_SEARCH,
    lastSearch: PLACEHOLDER_SEARCH,
    loading: false
  },

  computed: {
    total() {
      return this.cart.reduce((acc, next) => {
        return acc + (next.price * next.qty);
      }, 0)
    }
  },

  async beforeCreate() {
    this.loading = true;
    result = await this.$http.get('/search/Chewbacca');
    this.items = result.data;
    this.loading = false;
  },

  methods: {
    async onSubmit() {
      this.items = [];
      this.lastSearch = '';
      this.loading = true;

      let result;
      const newSearch = this.search;

      try {
        result = await this.$http.get(`/search/${newSearch}`);
        this.lastSearch = this.search;
        this.items = result.data;
        this.loading = false;
      } catch (error) {
        console.error(error);
      }
    },

    clearItem(item) {
      if (item.qty <= 1) {
        this.cart = this.cart.filter(product => product.id !== item.id)
      }
    },

    increment(item) {
      return item.qty++
    },

    decrement(item) {
      this.clearItem(item);
      return item.qty--
    },

    addItem(index) {
      const item = this.items[index];
      const itemInCart = this.cart.find(product => product.id === item.id);

      if (itemInCart) {
        itemInCart.qty++;
      } else {
        this.cart = [
          ...this.cart,
          Object.assign({}, item, { qty: 1, price: PRICE })
        ];
      }
    }
  },

  filters: {
    currency(price = 0) {
      return `$ ${price.toFixed(2)}`
    }
  }
});
