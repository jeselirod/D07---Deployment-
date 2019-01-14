/*
 * ProfileController.java
 * 
 * Copyright (C) 2018 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the
 * TDG Licence, a copy of which you may download from
 * http://www.tdg-seville.info/License.html
 */

package controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.Assert;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import security.LoginService;
import security.UserAccount;
import services.ActorService;
import services.AdministratorService;
import services.ProfileSocialNetworkService;
import services.RefereeService;
import services.SponsorService;
import domain.Actor;
import domain.Administrator;
import domain.Referee;
import domain.Sponsor;

@Controller
@RequestMapping("/profile")
public class ProfileController extends AbstractController {

	@Autowired
	private ProfileSocialNetworkService	profileService;

	@Autowired
	private ActorService				actorService;

	@Autowired
	private AdministratorService		adminService;

	@Autowired
	private SponsorService				sponsorService;

	@Autowired
	private RefereeService				refereeService;


	// Action-2 ---------------------------------------------------------------		

	//VER SUS DATOS PERSONALES
	@RequestMapping(value = "/personal-datas", method = RequestMethod.GET)
	public ModelAndView action2() {
		ModelAndView result;
		Actor a;

		final UserAccount user = LoginService.getPrincipal();
		a = this.actorService.getActorByUserAccount(user.getId());

		result = new ModelAndView("profile/action-2");
		result.addObject("actor", a);

		return result;
	}

	//---------- ADMIN

	@RequestMapping(value = "/edit-administrator", method = RequestMethod.GET)
	public ModelAndView editAdministrator() {
		ModelAndView result;
		Administrator a;

		final UserAccount user = LoginService.getPrincipal();
		a = (Administrator) this.actorService.getActorByUserAccount(user.getId());
		Assert.notNull(a);

		result = new ModelAndView("profile/editAdmin");
		result.addObject("actor", a);
		result.addObject("action", "profile/edit-administrator.do");

		return result;

	}

	@RequestMapping(value = "/edit-administrator", method = RequestMethod.POST, params = "save")
	public ModelAndView editAdministrator(@Valid final Administrator administrator, final BindingResult binding) {
		ModelAndView result;
		try {

			if (!binding.hasErrors()) {
				this.adminService.save(administrator);
				this.profileService.UpdateProperty();
				result = new ModelAndView("redirect:personal-datas.do");
			} else {
				result = new ModelAndView("profile/editAdmin");
				result.addObject("actor", administrator);
			}
		} catch (final Exception e) {
			result = new ModelAndView("profile/editAdmin");
			result.addObject("actor", administrator);
			result.addObject("exception", e);

		}
		return result;

	}

	//SPONSOR

	@RequestMapping(value = "/edit-sponsor", method = RequestMethod.GET)
	public ModelAndView editSponsor() {
		ModelAndView result;
		Sponsor s;

		final UserAccount user = LoginService.getPrincipal();
		s = (Sponsor) this.actorService.getActorByUserAccount(user.getId());
		Assert.notNull(s);

		result = new ModelAndView("profile/editSponsor");
		result.addObject("actor", s);
		result.addObject("action", "profile/edit-sponsor.do");

		return result;

	}

	@RequestMapping(value = "/edit-sponsor", method = RequestMethod.POST, params = "save")
	public ModelAndView editSponsor(@Valid final Sponsor sponsor, final BindingResult binding) {
		ModelAndView result;
		try {

			if (!binding.hasErrors()) {
				this.sponsorService.save(sponsor);
				this.profileService.UpdateProperty();
				result = new ModelAndView("redirect:personal-datas.do");
			} else {
				result = new ModelAndView("profile/editSponsor");
				result.addObject("actor", sponsor);
			}
		} catch (final Exception e) {
			result = new ModelAndView("profile/editSponsor");
			result.addObject("actor", sponsor);
			result.addObject("exception", e);

		}
		return result;

	}

	//REFEREE
	@RequestMapping(value = "/edit-referee", method = RequestMethod.GET)
	public ModelAndView editReferee() {
		ModelAndView result;
		Referee r;

		final UserAccount user = LoginService.getPrincipal();
		r = (Referee) this.actorService.getActorByUserAccount(user.getId());
		Assert.notNull(r);

		result = new ModelAndView("profile/editReferee");
		result.addObject("actor", r);
		result.addObject("action", "profile/edit-referee.do");

		return result;
	}

	@RequestMapping(value = "/edit-referee", method = RequestMethod.POST, params = "save")
	public ModelAndView editReferee(@Valid final Referee referee, final BindingResult binding) {
		ModelAndView result;
		try {

			if (!binding.hasErrors()) {
				this.refereeService.save(referee);
				this.profileService.UpdateProperty();
				result = new ModelAndView("redirect:personal-datas.do");
			} else {
				result = new ModelAndView("profile/editReferee");
				result.addObject("actor", referee);
			}
		} catch (final Exception e) {
			result = new ModelAndView("profile/editReferee");
			result.addObject("actor", referee);
			result.addObject("exception", e);

		}
		return result;

	}
}
