const PRICE = 9.99;
const PLACEHOLDER_SEARCH = 'Chewbacca';
const LOAD_NUMBER = 10;

new Vue({
  el: '#app',
  data: {
    items: [],
    cart: [],
    results: [],
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

  methods: {
    appendItems() {
      if (this.items.length < this.results.length) {
        const append = this.results.slice(this.items.length, this.items.length + LOAD_NUMBER);
        this.items = this.items.concat(append);
      }
    },

    async onSubmit() {
      this.items = [];
      this.lastSearch = '';
      this.loading = true;

      let result;
      const newSearch = this.search;

      if (!newSearch) {
        this.items = [];
        this.loading = false;
        return;
      }

      try {
        result = await this.$http.get(`/search/${newSearch}`);
        this.lastSearch = this.search;
        this.results = result.data;
        this.appendItems();
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
  },

  async mounted() {
    this.onSubmit();
    const vueInstance = this;
    const element = document.getElementById('product-list-bottom');
    const watcher = scrollMonitor.create(element);
    watcher.enterViewport(() => {
      vueInstance.appendItems();
    });
  },
});
