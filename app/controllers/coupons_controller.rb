class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def create
        @coupon = Coupon.new
        # @coupon.coupon_code = params[:'coupon_code']
        @coupon.coupon_code = params[:coupon][:coupon_code]
        # @coupon.store = params[:'store']
        @coupon.store = params[:coupon][:store]
        @coupon.save
        redirect_to coupon_path(@coupon)
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

end
