import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vizier/config/injector/di.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/decorations/app_decorations.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/config/styles/text_styles/app_text_styles.dart';
import 'package:vizier/cubits/offers/details/offer_details_cubit.dart';
import 'package:vizier/data/models/offer/offer_model.dart';
import 'package:vizier/data/models/offer/offer_type.dart';
import 'package:vizier/data/models/offer/slider_item/offer_slider_model.dart';
import 'package:vizier/data/models/offer/slider_item/offer_slider_type.dart';
import 'package:vizier/extensions/extensions.dart';
import 'package:vizier/l10n/app_loc.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_app_bar.dart';
import 'package:vizier/utils/currency_formatter_util.dart';

part 'widgets/offer_details_header.dart';
part 'widgets/offer_details_slider.dart';
part 'widgets/offer_details_sliders.dart';
part 'widgets/offer_details_summary.dart';

class OfferDetailsPage extends StatelessWidget implements AutoRouteWrapper {
  final OfferModel offer;

  static const String route = 'offers-details-page';

  const OfferDetailsPage({
    required this.offer,
    super.key,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => DI.resolve<OfferDetailsCubit>()..initial(offer),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdaptiveAppBar(
        context,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        iconTheme: Theme.of(context).iconTheme.copyWith(
              color: AppColors.white,
            ),
        title: Hero(
          tag: offer.label,
          child: DefaultTextStyle(
            style: AppTextStyles.h5().copyWith(
              color: AppColors.white,
            ),
            child: Text(
              offer.label,
            ),
          ),
        ),
      ),
      backgroundColor: AppColors.primary100,
      extendBodyBehindAppBar: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: _buildHeader(),
          ),
          _buildBody(context),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return FractionallySizedBox(
      widthFactor: 0.6,
      child: Hero(
        tag: offer.image,
        child: SvgPicture.asset(
          offer.detailsImage,
          alignment: Alignment.bottomCenter,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.padding.defaultValue,
        vertical: AppDimensions.padding.biggerValue,
      ),
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _OfferDetailsHeader(
            leftTitle: CurrencyFormatterUtil.instance.format(
              value:
                  context.watch<OfferDetailsCubit>().state.expectedValue ?? 0.0,
            ),
            leftContent: offer.type.leftContent(context),
            rightTitle: CurrencyFormatterUtil.instance.format(
              value: context.watch<OfferDetailsCubit>().state.calculatedValue ??
                  0.0,
            ),
            rightContent: offer.type.rightContent(context),
          ),
          SizedBox(
            height: AppDimensions.padding.defaultValue,
          ),
          _OfferDetailsSliders(
            onChanged: context.read<OfferDetailsCubit>().updateSlider,
            sliders: context.watch<OfferDetailsCubit>().state.sliders,
          ),
        ],
      ),
    );
  }
}
